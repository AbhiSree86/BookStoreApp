<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

    <title>Online BookStore</title>

    <link rel="stylesheet" href="style.css">

    <script src="cart.js"></script>

</head>

<body>

<div class="navbar">

    <h2>Online BookStore</h2>

    <a href="cart.jsp">
        Cart
    </a>

</div>

<h1 class="heading">
    Available Books
</h1>

<div class="container">

    <!-- Book 1 -->

    <div class="book">

        <h3>Java Programming</h3>

        <p>Price: ₹500</p>

        <button onclick="addToCart('Java Programming')">

            Add To Cart

        </button>

    </div>

    <!-- Book 2 -->

    <div class="book">

        <h3>Web Development</h3>

        <p>Price: ₹400</p>

        <button onclick="addToCart('Web Development')">

            Add To Cart

        </button>

    </div>

    <!-- Book 3 -->

    <div class="book">

        <h3>Database Systems</h3>

        <p>Price: ₹350</p>

        <button onclick="addToCart('Database Systems')">

            Add To Cart

        </button>

    </div>

</div>

<p id="message"></p>

</body>
</html>