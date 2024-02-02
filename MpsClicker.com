<!DOCTYPE html>
<html>
<head>
    <title>MpsClicker.io</title>
</head>
<body>
    <h1>MpsClicker.io</h1>
    <p>Clicks: <span id="clickCount">0</span></p>
    <button id="clickButton">Click Me!</button>

    <script>
        // Initialize the total click count
        let totalClicks = 0;

        // Get references to HTML elements
        const clickButton = document.getElementById("clickButton");
        const clickCount = document.getElementById("clickCount");

        // Add a click event listener to the button
        clickButton.addEventListener("click", () => {
            // Increment the total clicks and update the display
            totalClicks++;
            clickCount.textContent = totalClicks;
            
            // You can also send the total clicks to a server for tracking if needed
            // Example: sendTotalClicksToServer(totalClicks);
        });

        // Function to send total clicks to a server (you can implement this)
        function sendTotalClicksToServer(totalClicks) {
            // Implement your server communication logic here
            // You can use AJAX, fetch API, or any other method to send data to a server
            // For simplicity, this function is just a placeholder
            console.log("Total clicks sent to server: " + totalClicks);
        }
    </script>
</body>
</html>
