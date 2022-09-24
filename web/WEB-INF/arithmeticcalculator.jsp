<%-- 
    Document   : arithmeticcalculator
    Created on : 23-Sep-2022, 6:23:03 PM
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method = "post" action = "arithmetic">
            First: <input type="text" name = "first"><br>
            Second: <input type="text" name = "second"><br>
            <input type="submit" value="+" name="operator">
            <input type="submit" value="-" name="operator">
            <input type="submit" value="*" name="operator">
            <input type="submit" value="%" name="operator">
            
            
        </form>
        <p name = "message" value = "Result: ---"></p>
        <a href = "/Week3Lab_Calculators/age">Age Calculator</a>
    </body>
</html>
