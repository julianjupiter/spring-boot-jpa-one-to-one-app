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
                <h1 class="display-4">${pageName}</h1>
                <a href="${pageContext.request.contextPath}/employees/create"><button class="btn btn-primary">New Employee</button></a>
          </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <c:if test="${not empty message}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                       ${message}
                       <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                    </c:if>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Username</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${employees}" var="employee">
                            <tr>
                                <th scope="row">${employee.id}</th>
                                <td>${employee.security.username}</td>
                                <td>${employee.firstName}</td>
                                <td>${employee.lastName}</td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    </body>
</html>