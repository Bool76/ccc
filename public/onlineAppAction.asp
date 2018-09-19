<!--METADATA TYPE="typelib" UUID="CD000000-8B95-11D1-82DB-00C04FB1625D" NAME="CDO for Windows Library" -->
<!--METADATA TYPE="typelib" UUID="00000205-0000-0010-8000-00AA006D2EA4" NAME="ADODB Type Library" -->

<%


'Email Object - Start 
	Dim ObjSendMail
	Dim iConf
	Dim Flds
   
	Set ObjSendMail = Server.CreateObject("CDO.Message")
	Set iConf = Server.CreateObject("CDO.Configuration")
		
	Set Flds = iConf.Fields
	With Flds
	.Item(cdoSMTPServer) = "smtp.creativechildcareinc.com.bcentralhost.com"
	.Item(cdoSMTPServerPort) = 25
	.Item(cdoSMTPconnectiontimeout) = 10
	.Item(cdoSendUserName) = "admin@creativechildcareinc.com"
	.Item(cdoSendPassword) = "creative"
	.Update
	End With
	   
	   
	'Sends the message via email    
	Set ObjSendMail.Configuration = iConf
	ObjSendMail.To = "cccvyockey@rrohio.com"
	ObjSendMail.Subject = "Website Contact Us submission"
	ObjSendMail.From = "admin@creativechildcareinc.com"
    

	ObjSendMail.HTMLBody = "<b>First Name:&nbsp;</b> " + request.form("firstName") + "<br>" + "<b>Middle Name:&nbsp;</b>" + request.form("middleName") + "<br>" + "<b>Last Name:</b>&nbsp;" + request.form("lastName") + "<br><b>Address:&nbsp;</b>" + request.form("address") + "&nbsp;&nbsp;&nbsp;<b>City:&nbsp;</b>" + request.form("city") + "&nbsp;&nbsp;&nbsp;<b>State:&nbsp;</b>" + request.form("state") + "&nbsp;&nbsp;&nbsp;<b>Zip:&nbsp;</b>" + request.form("zip") + "<br>" + "<b>Email:&nbsp;</b>" + request.form("email") + "<br>" + "<b>Phone 1:&nbsp;</b>" + request.form("phoneNumber") + "&nbsp;&nbsp;&nbsp;<b>Type:&nbsp;</b>" + request.form("phoneType") + "<br>" + "<b>Phone 2:&nbsp;</b>" + request.form("phoneNumber2") + "&nbsp;&nbsp;&nbsp;<b>Type:&nbsp;</b>" + request.form("phoneType2") + "<br><br>" + "<b>Preferred Center Location:&nbsp;</b>" + request.form("preferredLocation") + "<br>" + "<b>Preferred Employment Type:&nbsp;</b>" + request.form("employmentType") + "<br>" + "<b>Job Applying For:&nbsp;</b>" + request.form("jobApplyingFor") + "&nbsp;&nbsp;&nbsp;<b>Salary Requirement (Hourly):&nbsp;</b>" + request.form("salary") + "<br>" + "<b>Spoken Languages:&nbsp;</b>" + request.form("languages") + "<br>" + "<b>Certifications:&nbsp;</b>" + request.form("certifications") + "<br>" + "<b>Comments:&nbsp;</b>" + request.form("comments") + "<br>" + "Attachment:" + request.form("attachedFile")
	  
	ObjSendMail.Send
		
	Set ObjSendMail = Nothing
	Set iConf = Nothing
	Set Flds = Nothing

'response.Write(strResponseText)
'Email Object - End 


response.redirect("http://creativechildcareinc.com")
%> 