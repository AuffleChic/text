<%@LANGUAGE="VBScript" codepage="936"%>
<!--#include file="conn.asp"--> 
<%
set rs=server.createobject("adodb.recordset")
sql="select id,reg from reg order by id desc"
rs.open sql,conn,1,3

if rs("reg")="禁止注册" then
    Response.Write "<script>alert('对不起，管理员停止了后台注册！');top.location.href='index.asp';</SCRIPT>"
	Response.End
End If
%>
<title>用户注册</title>
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
</style>
<style type="text/css">
<!--
.STYLE6 {color: #1FABD3}
.STYLE6 {color: #00FF00}
.STYLE8 {font-family: "宋体";
	font-weight: bold;
	color: #1FABD3;
}
.STYLE8 {font-family: "宋体";
	font-weight: bold;
	color: #00FF00;
}
-->
</style>
<p>&nbsp;</p>
<p>&nbsp;</p>
<form action="addreg.asp" method="post" name="user" id="user" onSubmit="return checkForm();">
<table width="700" height="51" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#B6E6FB" >
  <tr>
    <td height="25"><table width="700" border="0">
        <tr>
          <td width="625"><div align="left"><span class="STYLE8"> &nbsp;新用户注册</span></div></td>
          <td width="65"><div align="right"><span class="STYLE6">[<a href="index.asp">返回</a>]</span></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><table width="700" border="0">
      <tr>
        <td width="232"><div align="right"><span class="STYLE6">帐号：</span></div></td>
        <td width="458"><div align="left">
          <input name="name" type="text" class="ipt_text" id="name"  maxlength="16" style="color:gray" onfocus="this.value='';this.style.color='black'" onkeyup="this.value=this.value.replace(/[^a-z^A-Z^0-9]/gi,'')"/>
        </div></td>
      </tr>
      <tr>
        <td><div align="right"><span class="STYLE6">密码：</span></div></td>
        <td><div align="left">
          <input name="pass" type="password" class="ipt_text" id="pass" />
        </div></td>
      </tr>
      <tr>
        <td><div align="right"><span class="STYLE6">重复密码：</span></div></td>
        <td><div align="left">
          <p>
            <input name="pass2" type="password" class="ipt_text" id="pass2" />
          </p>
          </div></td>
      </tr>
      <tr>
        <td><div align="right"><span class="STYLE6">QQ/Mail：</span></div></td>
        <td><label>
          <input name="mail" type="text" class="ipt_text" id="mail" />
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="注册" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
<script language="javascript">
function checkForm()
{

	if (document.user.name.value == ""){
		alert ("请输入要注册帐号！");
		document.user.name.focus();
	return false;
	}
	if (document.user.name.value.length < 5 ){
		alert ("帐号不能低于5位！");
		document.user.name.focus();
		return false;
	}
	if (document.user.name.value == "admin"){
		alert ("对不起，该帐号不能被注册！");
		document.user.name.focus();
	return false;
	}
	if (document.user.pass.value == ""){
		alert ("请输入要添加用户的密码！");
		document.user.pass.focus();
	return false;
	}
	if (document.user.pass.value.length < 5 ){
		alert ("密码不能低于5位！");
		document.user.pass.focus();
		return false;
	}
	if(document.user.pass2.value!=document.user.pass.value){
        alert('两次输入的密码不一致！');
        document.user.pass2.focus();
        return false;
    }
		if (document.user.mail.value == ""){
		alert ("联系方式为必填，方便取回密码验证！");
		document.user.mail.focus();
	return false;
	}
}
</script>