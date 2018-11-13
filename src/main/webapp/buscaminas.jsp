<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="./static/css/main.css">
    </head>
    <body>
        <div class="container">
            <div class="row pt-5 pb-3">
                <div class="col-12">
                    <h1>
                        <% String name = (String)request.getAttribute("name");
                           out.print(name);%>
                        <span>
                            <% String version = (String)request.getAttribute("version");
                               out.print(version); %>
                        </span>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <!-- Buscaminas Board -->
                    <div class="minesweeper-container"></div>
                </div>
            </div>
        </div>
    <script src="./static/js/main.js"></script>
    </body>
</html>