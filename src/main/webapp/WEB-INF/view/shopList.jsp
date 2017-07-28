<%@include file="template/head.jsp" %>
<!-- Navigation -->
<%@include file="template/nav.jsp" %>
<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-md-3">
            <p class="lead">Shop Name</p>
            <div class="list-group">
                <a href="#" class="list-group-item">Category 1</a>
                <a href="#" class="list-group-item">Category 2</a>
                <a href="#" class="list-group-item">Category 3</a>
            </div>
        </div>

        <div class="col-md-9">

            <%@include file="template/carousel.jsp" %>

            <div class="row">

                <c:forEach var="product" items="${products}">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="<c:url value="/resources/images/${product.id}.png"/> " alt=""
                                 style="width: 320px;height: 150px;">
                            <div class="caption">
                                <h4 class="pull-right">${product.price}</h4>
                                <h4><a href="<c:url value="/shopList/viewProduct/${product.id}"/> ">${product.name}</a>
                                </h4>
                                <p>${product.description}</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                </c:forEach>

            </div>

        </div>

    </div>

</div>
<!-- /.container -->

<%@include file="template/footer.jsp" %>

