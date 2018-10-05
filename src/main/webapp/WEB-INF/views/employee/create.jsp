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
                <a href="${pageContext.request.contextPath}/employees"><button class="btn btn-primary">Cancel</button></a>
          </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-6 mx-auto">
                    <form:form action="/employees/create" method="POST" modelAttribute="employee">
                        <form:input path="id" type="hidden" id="id" />
                        <spring:bind path="firstName">
                            <div class="form-group row">
                                <label for="firstName" class="col-sm-2 col-form-label text-right">First Name</label>
                                <div class="col-sm-10">
                                    <form:input path="firstName" type="text" class="form-control ${status.error ? 'is-invalid' : ''}" id="firstName" placeholder="First Name" />
                                    <div class="invalid-feedback"><form:errors path="firstName" /></div>
                                </div>
                            </div>
                        </spring:bind>
                        <spring:bind path="lastName">
                            <div class="form-group row">
                                <label for="lastName" class="col-sm-2 col-form-label text-right">Last Name</label>
                                <div class="col-sm-10">
                                    <form:input path="lastName" type="text" class="form-control ${status.error ? 'is-invalid' : ''}" id="lastName" placeholder="Last Name" />
                                    <div class="invalid-feedback"><form:errors path="lastName" /></div>
                                </div>
                            </div>
                        </spring:bind>
                        <spring:bind path="security.username">
                            <div class="form-group row">
                                <label for="username" class="col-sm-2 col-form-label text-right">Username</label>
                                <div class="col-sm-10">
                                    <form:input path="security.username" type="text" class="form-control ${status.error ? 'is-invalid' : ''}" id="username" placeholder="Username" name="username" />
                                    <div class="invalid-feedback"><form:errors path="security.username" /></div>
                                </div>
                            </div>
                        </spring:bind>
                        <spring:bind path="security.password">
                            <div class="form-group row">
                                <label for="password" class="col-sm-2 col-form-label text-right">Password</label>
                                <div class="col-sm-10">
                                    <form:input path="security.password" type="password" class="form-control ${status.error ? 'is-invalid' : ''}" id="password" placeholder="Password" name="password" />
                                    <div class="invalid-feedback"><form:errors path="security.password" /></div>
                                </div>
                            </div>
                        </spring:bind>
                        <button type="submit" class="btn btn-primary float-right">Save</button>
                    </form:form>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    </body>
</html>