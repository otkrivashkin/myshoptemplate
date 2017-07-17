<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="template/head.jsp"%>
<%@include file="template/nav.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page!</p>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory"/>">Product inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory!</p>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.id}.png"/>" alt="image" style="width: 100%"/></td>
                    <td>${product.name}</td>
                    <td>${product.category}</td>
                    <td>${product.condition}</td>
                    <td>${product.price} USD</td>
                    <td>
                        <!-- view product -->
                        <a href="<spring:url value="/productList/viewProduct/${product.id}" />">
                            <span class="glyphicon glyphicon-info-sign"></span>
                        </a>
                        <!-- delete product -->
                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.id}" />">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a class="btn btn-primary" href="<spring:url value="/admin/productInventory/addProduct"/>">Add Product</a>


    </div>
</div>
<!-- /.container -->

<!-- FOOTER -->
<%@include file="template/footer.jsp"%>