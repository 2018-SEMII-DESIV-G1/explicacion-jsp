<%@ page session="false" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listado de Hoteles</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel='stylesheet' href='./static/bootstrap/css/bootstrap.min.css'>
</head>
<body>
    <h1>Hoteles</h1>
    <ul>
        <% String[] hotels=(String[])request.getAttribute("hotels");
        if(hotels!=null){
            for(String hotel : hotels){
                out.print("<li>" + hotel + "</li>");
            }
        }%>
    </ul>
</body>
</html>
