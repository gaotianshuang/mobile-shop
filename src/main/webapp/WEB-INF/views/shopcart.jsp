<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>手机商城-购物车</title>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shopcart.css">
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/sort.js"></script>
    <script src="${pageContext.request.contextPath}/js/holder.js"></script>
    <script src="${pageContext.request.contextPath}/js/shopcart.js"></script>
    <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
    <!-- 	<script>
            $(document).ready(function(){
                $(".list-group-item").hover(function(){
                    $(this).children("div.sort-detail").show();
                },function(){
                    $(this).children("div.sort-detail").hide();
                });
            })
        </script> -->
</head>
<body>
<div id="main" class="container">
    <jsp:include page="header.jsp"/>
</div>
<div class="shopping_cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="account_heading account_heading_ah">
                    <h1>购物车</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="all_wis_frm">
                <div class="col-md-12">
                    <div class="wishlist-content wishlist-content-2">
                        <form action="#">
                            <div class="wishlist-table wishlist-table-2 table-responsive">
                                <table id="cart-table">
                                    <thead>
                                    <tr>
                                        <th class="product-remove">
                                        	<span class="nobr">
                                        		<input type="checkbox" id="wholeSelect">
                                        	</span>
                                        </th>
                                        <th class="product-thumbnail product-thumbnail-2"><span class="nobr">图片</span></th>
                                        <th class="product-name product-name_2"><span class="nobr">商品</span></th>
                                        <th class="product-price"><span class="nobr">价格</span></th>
                                        <th class="product-stock-stauts"><span class="nobr">数量 </span></th>
                                        <th class="product-add-to-cart"><span class="nobr">总价</span></th>
                                        <th class="product-edit"><span class="nobr">操作</span></th>
                                    </tr>
                                    </thead>
                                    <c:forEach items="${shopcart}" var="goodsAndImage">
	                                   <tbody>
											<tr>
		                                        <td class="product-remove">
		                                        	<span class="nobr">
		                                        		<input type="checkbox" name="checkbox" id="aa" value="${goodsAndImage.goodsid}">
		                                        	</span>
		                                        </td>
		                                        <td class="product-thumbnail product-thumbnail-2">
		                                        	<span class="nobr">
		                                        		<img src="http://localhost:8080/shop/shopimage/${goodsAndImage.imagePaths}" width="100" height="100">
		                                        	</span>
		                                        </td>
		                                        <td class="product-name product-name_2">
		                                        	<span class="nobr">${goodsAndImage.goodsname}</span>
		                                        </td>
		                                        <td class="product-price">
		                                        	<span class="nobr">${goodsAndImage.price}</span>
		                                        </td>
		                                        <td class="product-stock-stauts">
		                                        	<span class="nobr">${goodsAndImage.num} </span>
		                                        </td>
		                                        <td class="product-add-to-cart">
		                                        	<span class="nobr">${goodsAndImage.price}</span>
		                                        </td>
                                                <td class="product-edit">
                                                    <span class="nobr"><a href="${pageContext.request.contextPath}/deleteCart?goodsid=${goodsAndImage.goodsid}" style="color: red">删除</a></span></th>
                                                </td>
		                                    </tr>
	                                   </tbody>
                                    </c:forEach>
                                    <%--<tfoot>
                                    <tr>
                                        <td colspan="6">
                                            <div class="coupon">
                                                <!-- <label for="coupon_code"></label>
                                                    <input id="coupon_code" class="input-text" type="text" placeholder="Coupon code" value="" name="coupon_code"> -->
                                                <a
                                                        class="button_act button_act_3 button_act_333 button_act_tp "
                                                        href="./shopcart.jsp">更新购物车</a>
                                                <!-- <a class="button_act btn-tip " href="#">Update cart</a> -->
                                            </div>
                                        </td>
                                    </tr>
                                    </tfoot>--%>
                                </table>
                            </div>
                        </form>
                        <div class="row">
                            <div class="col-md-6 col-xs-12">
                                <div class="cart_totals ">
                                    <!-- <h2>总价</h2>
                                    <table class="shop_table shop_table_responsive">
                                        <tbody>
                                        <tr class="cart-subtotal">
                                            <th>小计</th>
                                            <td data-title="Subtotal"><span
                                                    class="woocommerce-Price-amount amount"> <span
                                                    class="woocommerce-Price-currencySymbol" id="total-num"></span>
													</span></td>
                                        </tr>
                                        <tr class="order-total">
                                            <th>总额</th>
                                            <td data-title="Total"><strong> <span
                                                    class="woocommerce-Price-amount amount"> <span
                                                    class="woocommerce-Price-currencySymbol" id="total-price"></span>
														</span>
                                            </strong></td>
                                        </tr>
                                        </tbody>
                                    </table> -->
                                    <div class="wc-proceed-to-checkout">
                                        <a class="button_act button_act-tc confirm-orders">确认订单</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xs-12"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="path" hidden>${pageContext.request.contextPath}</div>
</body>
<script type="text/javascript">
    $('input[name="checkbox"]').change(function (e) {
        var nameChecked = $('input[name="checkbox"]');
        var i = 0;
        nameChecked.each(function (item,index) {
            // this.checked =  !this.checked;
            if (this.checked) {
                i++;
            }
        })
        if (i == nameChecked.length) {
            $('#wholeSelect').prop("checked", true);
        } else {
            $('#wholeSelect').prop("checked", false);
        }
    });

    var wholeSelect=$('#wholeSelect');
	wholeSelect.change(function (e) {
	    var _this=$(this);
        //判断全选按钮是否选中
	    if (_this.is(':checked')){//选中时的操作
                $('input[name="checkbox"]').prop("checked",true);

	    }else{//未选中时的操作
	        $('input[name="checkbox"]').prop('checked',false);
	    }
	});
    $('.confirm-orders').click(function(){
        var checkVal = [];
        var nameChecked = $('input[name="checkbox"]');
        nameChecked.each(function() {
            if ($(this).is(":checked")) {
                var s= $(this).val();
                checkVal.push(s);
            }
        });
        // console.log(checkVal);

        window.location.href = "${pageContext.request.contextPath}/order?ids=" + checkVal.join();

        <%--$.ajax({--%>
        <%--    url: "${pageContext.request.contextPath}/order", //把表单数据发送到ajax.jsp--%>
        <%--    type: "POST",--%>
        <%--    dataType: 'json',--%>
        <%--    data: {--%>
        <%--        ids: checkVal.join()--%>
        <%--    },--%>
        <%--    success: function (data) {--%>
        <%--        // alert("success!"); //将返回的结果显示到ajaxDiv中--%>
        <%--        window.location.href = "${pageContext.request.contextPath}/orderFinish";--%>
        <%--    }, error: function (request) {--%>
        <%--        alert("提交订单失败");--%>
        <%--    }--%>
        <%--});--%>
    });

</script>;l
</html>
