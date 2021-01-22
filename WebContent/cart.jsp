<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*"%>
<%@page import="org.hcl.model.Product"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <h1>Shopping Cart</h1>
  <a href="{#cart.urls.continueShopping}" class="continue-shopping">Continue Shopping</a>
  <a href="{#cart.urls.checkout}" class="checkout-button">Checkout</a>
  <table cellspacing="0" class="shopping-cart">
    <thead>
      <tr class="headings">
        <th class="link">&nbsp;</th>
        <th class="product">Item</th>
        <th class="price">Price</th>
        <th class="quantity">Quantity</th>
        <th class="price">Total</th>
      </tr>
    </thead>
    <tbody>
    <%  List<Product> cartProducts = (List<Product>) session.getAttribute("cartProducts");
       for(Product product:cartProducts) %>
      <tr> 
        <td class="link">
        <label>{#product.fields.remove.tag} remove</label>
        </td>
        <td class="product-name">
          <div class="product-img"><img src="${product.imageUrl}"></div>
        </td>
        <td class="price">
         	${product.price}
        </td>
        <td class="quantity">
          {#product.fields.quantity.tag}{#product.fields.partialQuantity.tag}
        </td>
        <td class="price">{#product.totalPrice.value}</td>
      </tr>

      <tr>
        <td class="quantity-span" colspan="4">Subtotal</td>
        <td class="price">{#cart.cartTotalBeforeDiscounts.value}</td>
      </tr>

 
      <tr class="totals">
        <td colspan="2"><input type="submit" name="submit" value="Update cart" /></td>
        <td class="quantity-span" colspan="2">Total</td>
        <td class="price">{#cart.cartTotal.value}</td>
      </tr> 
    </tbody>
  </table>

<div style="clear: both;"></div>
<a href="{#cart.urls.continueShopping}" class="continue-shopping">Continue Shopping</a>
<a href="{#cart.urls.checkout}" class="checkout-button">Checkout</a>
</body>
</html>
