<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Rectangle Area</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4e1d2; /* Light brown background */
                color: #4d3319; /* Dark brown text */
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .container {
                background-color: #a67c52; /* Medium brown */
                padding: 20px 40px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                text-align: center;
            }

            h2 {
                font-size: 24px;
                margin-bottom: 20px;
                color: #000000; /* Darker brown for heading */
            }

            h3 {
                font-size: 18px;
                margin-bottom: 15px;
                color: hsl(19, 63%, 88%); /* Lighter brown for subheading */
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Area is <%=request.getAttribute("area") %></h2>
            <h3>This is a <%=request.getAttribute("size") %></h3>
        </div>
    </body>
</html>
