<!--#include file="conn.asp"-->
<%
set rs=server.createobject("adodb.recordset")
sql="select id,admin,password from admin order by id desc"
rs.open sql,conn,1,3

If session("admin")="" then
    Response.Write "<script>alert('�û�δ��¼�����¼');top.location.href='index.asp';</SCRIPT>"
	Response.End
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ѷ�����̨���� QQ:1277707429</title>


<style type="text/css">
<!--
.STYLE6 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12px;
}
.STYLE7 {
	color: #0099FF;
	font-size: 14px;
}
body {
	background-color: #000000;
}
.STYLE9 {color: #0066FF}
a:link {
	color: #0066FF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #0066FF;
}
a:hover {
	text-decoration: none;
	color: #FF0000;
}
a:active {
	text-decoration: none;
	color: #0066FF;
}
.STYLE10 {font-size: 12px}
.STYLE12 {
	color: #000000;
	font-size: 10px;
}
-->
</style>
</head>

<body>
<div align="center">
  <table width="100%" height="64"  border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#B6E6FB">
    <tr>
      <td height="25" colspan="2"><table width="100%" border="0">
        <tr>
          <td bgcolor="#000000"><div align="left"><span class="STYLE3"><strong>&nbsp;<span class="STYLE7">��������</span></strong></span> 
			<a target="_blank" class="STYLE12" href="http://www.cxzyw.com">���ʹ���</a></div></td>
          <td><div align="right" class="STYLE3">
            <div align="left" class="STYLE6">��ӭ����<%=session("admin")%>��</div>
          </div></td>
        </tr>
      </table></td>
    </tr>
    
    <tr>
      <td height="14" bgcolor="#000000"><p><span class="STYLE3 STYLE10"> ��<span class="STYLE9"><a href="../index.htm" target="main">�鿴��ҳ</a> ��|��</span></span><span class="STYLE4 STYLE9 STYLE10"><a href="data.asp" target="main">�鿴����</a></span><span class="STYLE3 STYLE9 STYLE10"> ��| ��<a href="password.asp" target="main">�޸�����</a> ��| ��</span><span class="STYLE4 STYLE9 STYLE10"><a href="about.asp" target="main">���ڳ���</a></span><span class="STYLE3 STYLE9 STYLE10"> ��|  ��</span><span class="STYLE9 STYLE4 STYLE10"><a href="Exit.asp" target="_parent" ONCLICK="javascript:return confirm('��ʾ����ȷ��Ҫ�˳���')">��ȫ�˳�</a></span></p>      </td>
    </tr>
    </table>
</div>
</body>
</html>
