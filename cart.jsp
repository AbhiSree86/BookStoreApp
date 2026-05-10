<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<String> cart =
            (ArrayList<String>)
            session.getAttribute("cart");

    if(cart == null)
    {
        cart = new ArrayList<>();
    }
%>

<!DOCTYPE html>
<html>

<head>

    <title>Your Cart</title>

    <link rel="stylesheet" href="style.css">

</head>

<body>

<div class="navbar">

    <h2>Your Shopping Cart</h2>

    <a href="index.jsp">
        Home
    </a>

</div>

<h1 class="heading">
    Cart Items
</h1>

<div class="container">

    <div class="book">

        <h3>Total Items: <%= cart.size() %></h3>

        <hr>

        <%
            for(String item : cart)
            {
        %>

            <p>
                <%= item %>
            </p>

        <%
            }
        %>

    </div>

</div>

</body>
</html>