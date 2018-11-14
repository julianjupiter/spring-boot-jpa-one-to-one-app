<%@ include file="/WEB-INF/views/includes/header.jsp"%>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-4">${appName}</h1>
                <a href="${pageContext.request.contextPath}/employees"><button class="btn btn-primary">Employees</button></a>
                <a href="${pageContext.request.contextPath}/h2-console" target="_blank"><button class="btn btn-primary">H2 Database</button></a>
          </div>
        </div>
<%@ include file="/WEB-INF/views/includes/footer.jsp"%>