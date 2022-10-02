<%-- 
    Document   : editnote
    Created on : 1-Oct-2022, 9:20:01 PM
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit note</title>
    
    </head>
    <body>
        <<form method="post">
        <h1>Simple Note Keeper</h1>
                <h2>View Note</h2>
                <h3>Title: </h3> <input type="text" name="title" value="${note.title}">
                
        <h3>Contents:</h3>
        <p><input type="text" name="content" value = "${note.content}"</p><br>
        
        <input type ="submit" value = "save" name = "save">
        </form>
        
    </body>
</html>
