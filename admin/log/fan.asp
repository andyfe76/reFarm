
<%
On Error Resume Next

F1= Request.QueryString("F1")
F2= Request.QueryString("F2")
F3= Request.QueryString("F3")
F4= Request.QueryString("F4")
Set conn=Server.CreateObject("ADODB.Connection")
conn.Open "refarm"


timestamp=CStr(Year(Now()))+"-"+CStr(Month(Now()))+"-"+cstr(Day(Now()))+" "+cstr(Hour(Now()))+":"+cstr(Minute(Now()))+":"+cstr(Second(Now()))
sql="INSERT INTO fan_log(timestamp,FAN1, FAN2, FAN3, FAN4) VALUES ("
sql=sql+"'"+timestamp+"',"+F1+","+F2+","+F3+","+F4+")"
Response.Write(sql)
conn.Execute sql,recaffected
display_err 
conn.Close
Set conn=Nothing
reffer = Request.ServerVariables("HTTP_REFERER")
If InStr(1,reffer,"admin.asp") Then Response.Redirect("../admin.asp")

Function display_err
for each objErr in conn.Errors
  response.write("<p>")
  response.write("Description: ")
  response.write(objErr.Description & "<br>")
  response.write("Help context: ")
  response.write(objErr.HelpContext & "<br>")
  response.write("Help file: ")
  response.write(objErr.HelpFile & "<br>")
  response.write("Native error: ")
  response.write(objErr.NativeError & "<br>")
  response.write("Error number: ")
  response.write(objErr.Number & "<br>")
  response.write("Error source: ")
  response.write(objErr.Source & "<br>")
  response.write("SQL state: ")
  response.write(objErr.SQLState & "<br>")
  response.write("</p>")
Next

End Function 

%>
