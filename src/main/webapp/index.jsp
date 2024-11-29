<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #4CAF50;
        }
        input, select, button {
            padding: 10px;
            margin: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 200px;
        }
        input:focus, select:focus, button:hover {
            border-color: #4CAF50;
        }
        button {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }
        p {
            font-size: 20px;
            color: #333;
            font-weight: bold;
        }
        .container {
            display: inline-block;
            text-align: left;
            background: white;
            padding: 30px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <h2>Simple Calculator</h2>
    <div class="container">
        <h3>Enter First Number:</h3>
        <input id="firstNumber" type="number" placeholder="Enter number">
        <h3>Enter Second Number:</h3>
        <input id="secondNumber" type="number" placeholder="Enter number">
        <h3>Select Operation:</h3>
        <select id="operation">
            <option value="+">Addition</option>
            <option value="-">Subtraction</option>
            <option value="*">Multiplication</option>
            <option value="/">Division</option>
        </select>
        <br><br>
        <button id="calculateBtn" onClick="calculate()">Calculate</button>
        <h3>Result:</h3>
        <p id="sol"></p>
    </div>

    <script>
        function calculate() {
            let a = parseFloat(document.getElementById("firstNumber").value);
            let b = parseFloat(document.getElementById("secondNumber").value);
            let operation = document.getElementById("operation").value;
            let result;

            if (isNaN(a) || isNaN(b)) {
                result = "Please enter valid numbers.";
            } else {
                switch (operation) {
                    case "+":
                        result = a + b;
                        break;
                    case "-":
                        result = a - b;
                        break;
                    case "*":
                        result = a * b;
                        break;
                    case "/":
                        result = b !== 0 ? a / b : "Division by zero is not allowed.";
                        break;
                    default:
                        result = "Invalid operation.";
                }
            }

            document.getElementById("sol").innerHTML = result;
        }
    </script>
</body>
</html>
