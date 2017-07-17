<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="template/head.jsp"%>
<%@include file="template/nav.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update the product information here!</p>
        </div>

        <!-- ADD PRODUCT FORM -->

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct"
                   method="post" commandName="product"
                   enctype="multipart/form-data">

            <form:hidden path="id" value="${product.id}"/>
            <div class="form-group">
                <label for="name">Name</label><form:errors path="name" cssStyle="color: darkred;"/>
                <form:input path="name" id="name" class="form-control" value="${product.name}"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="instrument"/>Instrument</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="record"/>Record</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="accessory"/>Accessory</label>
            </div>

            <div class="form-group">
                <label for="description">Description</label><form:errors path="description" cssStyle="color: darkred;"/>
                <form:textarea path="description" id="description" class="form-control" value="${product.description}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label><form:errors path="price" cssStyle="color: darkred;"/>
                <form:input path="price" id="price" class="form-control" value="${product.price}"/>
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="condition" id="condition" value="new"/>New</label>
                <label class="checkbox-inline"><form:radiobutton path="condition" id="condition" value="used"/>Used</label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="status" id="status" value="active" checked = "checked"/>Active</label>
                <label class="checkbox-inline"><form:radiobutton path="status" id="status" value="inactive"/>Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color: darkred;"/>
                <form:input path="unitInStock" id="unitInStock" class="form-control" value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="manufacturer" id="manufacturer" class="form-control" value="${product.manufacturer}"/>
            </div>

            <div class="form-group">
                <label class="control-panel" for="image">Upload Picture</label>
                <form:input path="image" id="image" type="file" class="form:input-large"/>
            </div>

            <br>
            <input type="submit" value="submit" class="btn btn-primary">
            <a href="<c:url value="/admin/productInventory"/>" class="btn btn-danger">Cancel</a>
        </form:form><!-- END PRODUCT FORM -->


    </div>
</div>
<!-- /.container -->
<!-- FOOTER -->
<%@include file="template/footer.jsp"%>