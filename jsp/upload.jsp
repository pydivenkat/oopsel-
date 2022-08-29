<!-- upload.jsp -->
<%@ page import="java.io.*" %>

<%
try{
String contentType = request.getContentType();
//String upload_fileName=request.getParameter("fil1");
//System.out.print("U F N "+upload_fileName);
//System.out.println("Content type is :: " +contentType);
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();

byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}

String file = new String(dataBytes);
//System.out.println("File  "+file);
String att_date=ControllerHelper.getDate();
String defectid=(String)session.getAttribute("defectid");
String employeeid=(String)session.getAttribute("employeeid");
String jobroleid=(String)session.getAttribute("jobroleid");
if(defectid!=null && employeeid!=null && jobroleid.equals("2"))
{
String saveFile = file.substring(file.indexOf("filename=\"") + 10);

saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
//saveFile = saveFile.substring(0, saveFile.indexOf("."));
//System.out.println("SFile  "+saveFile.indexOf("\\"));
//while(saveFile.indexOf("\\")!=0)
//saveFile = saveFile.substring(1, saveFile.indexOf("\\"));

String str[]=saveFile.split("\\\\");
for(int i=0;i<str.length;i++)
{
	saveFile=str[i];
}
saveFile=saveFile.substring(0,saveFile.length()-2);
saveFile=defectid+"_"+saveFile;
Attachment attachment=new Attachment();
attachment.setDefectid(defectid);
attachment.setAttachedby(employeeid);
attachment.setFilename(saveFile);
attachment.setAttacheddate(att_date);
session.setAttribute("attachment",attachment);
//System.out.println("SFile  "+saveFile);
//saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

//out.print(dataBytes);

int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;


int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
//String uid=(String)session.getAttribute("doctorId");
String imgpath=getServletContext().getRealPath("/")+"attachment/"+saveFile;
//out.println(imgpath);
FileOutputStream fileOut = new FileOutputStream(imgpath);


//fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
}
//out.println("File saved as " +saveFile);

}
}
catch(Exception ex)
{
	System.out.println("Exception "+ex);	
}
%>

<%@page import="com.projectmgmt.common.helper.ControllerHelper"%>
<%@page import="com.projectmgmt.defect.bean.Attachment"%>
<html>
<script type="text/javascript">
function redirectpath()
{
document.location='attachment.html';
}
</script>
<body onload="redirectpath()">

</body>
</html>