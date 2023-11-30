
/*make payment*/

document.getElementById("payment-form").addEventListener("submit", function(event) {
    
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value; 
    const city = document.getElementById("city").value;
    const state = document.getElementById("state").value;
    const cardType = document.getElementById("card-type").value;
    const cardNumber = document.getElementById("card-number").value;
    const expiry = document.getElementById("expiry").value;
    const cvv = document.getElementById("cvv").value;

    

    alert("Payment successful!\n\n" +
           
        "Name: " + name + "\n" +
        "Email: " + email + "\n" +
         "City: " + city + "\n" +
        "State: " + state + "\n" +
        "Card Type: " + cardType + "\n" +
        "Card Number: " + cardNumber + "\n" +
        "Expiration Date: " + expiry + "\n" +
        "CVV: " + cvv

        
      


    );
});

