<%@LANGUAGE="VBScript" codepage="936"%>
<!--#include file="conn.asp"-->
<%
set rs=server.createobject("adodb.recordset")
sql="select id,admin,password from admin order by id desc"
rs.open sql,conn,1,3

If session("admin")="" then
    Response.Write "<script>alert('用户未登录，请登录');top.location.href='index.asp';</SCRIPT>"
	Response.End
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>修改密码</title>

<style type="text/css">
<!--
body,td,th {
	color: #0000FF;
}
body {
	background-color: #FFFFFF;
}
.STYLE1 {font-size: 12px}
-->
</style></head>

<body>
<form action="pass_modify.asp" method="post" name="pass" id="pass" onSubmit="return checkForm();">
<table width="777" height="51" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#B6E6FB" >
  
  <tr>
    <td><table width="438" height="80" border="0" align="center">
      <tr>
        <td><div align="right" class="STYLE3 STYLE1">用户名：</div></td>
        <td><input name="adminname" type="text" class="ipt_text"  id="adminname" value="<%=session("admin")%>" readonly/></td>
      </tr>
      <tr>
        <td><div align="right"><span class="STYLE3 STYLE1">新密码：</span></div></td>
        <td><input name="password" type="text" class="ipt_text" id="password" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit2" value="确定修改" /></td>
      </tr>
    </table>    </td>
  </tr>
</table>

<script language="javascript">
function checkForm()
{

	if (document.pass.password.value == ""){
		alert ("请输入要修改的密码！");
		document.pass.password.focus();
	return false;
	}
	if (document.pass.password.value.length < 5 ){
		alert ("密码不能低于5位！");
		document.pass.password.focus();
		return false;
	}
 }
</script>
</body>
</html>