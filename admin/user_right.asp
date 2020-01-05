<%@LANGUAGE="VBScript" codepage="936"%>
<!--#include file="conn.asp"-->
<title>权限修改</title>
<%
If session("admin")="" then
    Response.Write "<script>alert('用户未登录，请登录');this.location.href='index.asp';</SCRIPT>"
	Response.End
End If
%>
<%
set rs=server.createobject("adodb.recordset")
sql="select id,admin,password,login from admin order by id desc"
rs.open sql,conn,1,3

radiobutton=request.form("radiobutton")
if radiobutton="no" then
			   rs("admin")=request.form("adminname")
			   rs("login")="禁止登录"
               rs.update
              set conn=nothing
response.write("<script>alert(""该用户已经被禁止登录！"");navigate(""admin.asp"")</script>")
response.end
end if
if radiobutton="yes" then
			   rs("admin")=request.form("adminname")
			   rs("login")="允许登录"
               rs.update
              set conn=nothing
response.write("<script>alert(""该用户现在已经允许登录！"");navigate(""admin.asp"")</script>")
response.end
end if
%>