<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/template/head.jsp"%>
<%@include file="/WEB-INF/view/template/nav.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>

            <p class="lead">This is the administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name}
                | <a href="<c:url value="/j_spring_security_logout"/> ">Logout</a>
            </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory"/>">Product inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory!</p>
        <!-- FOOTER -->
        <%@include file="/WEB-INF/view/template/footer.jsp"%>
    </div>
</div>
<!-- /.container -->