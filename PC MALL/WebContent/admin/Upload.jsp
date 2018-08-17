<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="myutil.MultiPart" %>
<%@ page import=" java.net.URLEncoder" %>

<%

	MultiPart multiPart = new MultiPart(request);
	String title = multiPart.getParameter("TITLE");
	String description = multiPart.getParameter("DESCRIPTION");
	String fileName = multiPart.getFileName("UPLOAD_FILE");
	String newPath = application.getRealPath("/files/" + fileName);
	multiPart.saveFile("UPLOAD_FILE", newPath);
	
	String url = String.format("UploadResult.jsp?TITLE=%s&DESCRIPTION=%s&FILE_NAME=%s",
								URLEncoder.encode(title, "utf-8"),
								URLEncoder.encode(description, "utf-8"),
								URLEncoder.encode(fileName, "utf-8"));
	response.sendRedirect(url);
%>