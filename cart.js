function addToCart(bookName)
{

    fetch("BookServlet", {

        method: "POST",

        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },

        body: "book=" + bookName

    })

    .then(response => response.text())

    .then(data => {

        document.getElementById("message").innerHTML = data;

    })

    .catch(error => {

        console.log(error);

    });

}