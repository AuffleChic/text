<%@LANGUAGE="VBScript" codepage="936"%>
<!--#include file="conn.asp"--> 
<%
set rs=server.createobject("adodb.recordset")
sql="select id,reg from reg order by id desc"
rs.open sql,conn,1,3

if rs("reg")="��ֹע��" then
    Response.Write "<script>alert('�Բ��𣬹���Աֹͣ�˺�̨ע�ᣡ');top.location.href='index.asp';</SCRIPT>"
	Response.End
End If
%>
<title>�û�ע��</title>
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
</style>
<style type="text/css">
<!--
.STYLE6 {color: #1FABD3}
.STYLE6 {color: #00FF00}
.STYLE8 {font-family: "����";
	font-weight: bold;
	color: #1FABD3;
}
.STYLE8 {font-family: "����";
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
          <td width="625"><div align="left"><span class="STYLE8"> &nbsp;���û�ע��</span></div></td>
          <td width="65"><div align="right"><span class="STYLE6">[<a href="index.asp">����</a>]</span></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><table width="700" border="0">
      <tr>
        <td width="232"><div align="right"><span class="STYLE6">�ʺţ�</span></div></td>
        <td width="458"><div align="left">
          <input name="name" type="text" class="ipt_text" id="name"  maxlength="16" style="color:gray" onfocus="this.value='';this.style.color='black'" onkeyup="this.value=this.value.replace(/[^a-z^A-Z^0-9]/gi,'')"/>
        </div></td>
      </tr>
      <tr>
        <td><div align="right"><span class="STYLE6">���룺</span></div></td>
        <td><div align="left">
          <input name="pass" type="password" class="ipt_text" id="pass" />
        </div></td>
      </tr>
      <tr>
        <td><div align="right"><span class="STYLE6">�ظ����룺</span></div></td>
        <td><div align="left">
          <p>
            <input name="pass2" type="password" class="ipt_text" id="pass2" />
          </p>
          </div></td>
      </tr>
      <tr>
        <td><div align="right"><span class="STYLE6">QQ/Mail��</span></div></td>
        <td><label>
          <input name="mail" type="text" class="ipt_text" id="mail" />
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="ע��" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
<script language="javascript">
function checkForm()
{

	if (document.user.name.value == ""){
		alert ("������Ҫע���ʺţ�");
		document.user.name.focus();
	return false;
	}
	if (document.user.name.value.length < 5 ){
		alert ("�ʺŲ��ܵ���5λ��");
		document.user.name.focus();
		return false;
	}
	if (document.user.name.value == "admin"){
		alert ("�Բ��𣬸��ʺŲ��ܱ�ע�ᣡ");
		document.user.name.focus();
	return false;
	}
	if (document.user.pass.value == ""){
		alert ("������Ҫ����û������룡");
		document.user.pass.focus();
	return false;
	}
	if (document.user.pass.value.length < 5 ){
		alert ("���벻�ܵ���5λ��");
		document.user.pass.focus();
		return false;
	}
	if(document.user.pass2.value!=document.user.pass.value){
        alert('������������벻һ�£�');
        document.user.pass2.focus();
        return false;
    }
		if (document.user.mail.value == ""){
		alert ("��ϵ��ʽΪ�������ȡ��������֤��");
		document.user.mail.focus();
	return false;
	}
}
</script>