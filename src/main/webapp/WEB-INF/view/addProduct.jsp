<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="template/head.jsp" %>
<%@include file="template/nav.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product!</p>
        </div>

        <!-- ADD PRODUCT FORM -->

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct"
                   method="post" commandName="product"
                   enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">Name</label><form:errors path="name" cssStyle="color: darkred;"/>
                <form:input path="name" id="name" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="instrument" checked = "checked"/>Instrument</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="record"/>Record</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="accessory"/>Accessory</label>
            </div>

            <div class="form-group">
                <label for="description">Description</label><form:errors path="name" cssStyle="color: darkred;"/>
                <form:textarea path="description" id="description" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label><form:errors path="name" cssStyle="color: darkred;"/>
                <form:input path="price" id="price" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="condition" id="condition" value="new" checked = "checked"/>New</label>
                <label class="checkbox-inline"><form:radiobutton path="condition" id="condition" value="used"/>Used</label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="status" id="status" value="active" checked = "checked"/>Active</label>
                <label class="checkbox-inline"><form:radiobutton path="status" id="status" value="inactive"/>Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label><form:errors path="name" cssStyle="color: darkred;"/>
                <form:input path="unitInStock" id="unitInStock" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="manufacturer" id="manufacturer" class="form-control"/>
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
<%@include file="template/footer.jsp" %>