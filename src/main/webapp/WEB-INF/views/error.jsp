<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>${pageName}</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    </head>
    <body>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-4 text-danger">Something went wrong!</h1>
                <a href="${pageContext.request.contextPath}/employees"><button class="btn btn-primary">Go Back Home</button></a>
          </div>
        </div>
    </body>
</html>