<%
set conn=server.createobject("adodb.connection")
connstr="Provider=Microsoft.jet.oledb.4.0;data source="&server.mappath("../mdb/#qq27490123#.mdb")
conn.open connstr
%>