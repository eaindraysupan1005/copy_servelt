<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
String height = request.getParameter("height");
String width = request.getParameter("width");

int  area = Integer.parseInt(height) * Integer.parseInt(width);
String size = " ";

if (area > 30){
    size = "Big";
}else if(area >20){
    size = "Normal";
}else{
    size = "Small";
}

%>
<html>
    <head>
        <title>Rectangle Area</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #e5f3f4; /* Light brown background */
                color: #07113e; /* Dark brown text */
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .container {
                text-align: center;
                background-color: #94c0de; /* Medium brown for content background */
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }
            h2, h3 {
                margin: 10px 0;
            }
            h2 {
                font-size: 24px;
                color: #30088d; /* Darker brown for headings */
            }
            h3 {
                font-size: 18px;
                color: #2e2a74; /* Slightly lighter brown for subheadings */
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Area of Rectangle is: <%= area %></h2>
            <h3>Size of Rectangle is: <%= size %></h3>
        </div>
    </body>
</html>
