<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        form{
              border: 0px solid;
              width: fit-content;
              margin: auto;
              padding: 20px;
              margin-top: 60px;
              text-align: center;
              background-color: bisque;
              font-size: large;
              border-radius: 15px;
        }
        label{
            width: 100px;
            display: inline-block;
            margin: 10px;
        }
        .sub
         {
            width: 60%;
            padding: 5px;
            background-color: white;
         }
         .sub:hover
         {
            background-color: greenyellow;
         }
         body{
            background-color: rgb(218, 179, 132);
         }
    </style>
</head>
<body>
    <form action = "/viewOneUrl">
        <label>Employee Id:</label>
        <input type = "text" name = "empid"><p></p>
        <input type = "submit" value="ViewEmployee" class="sub">
    </form>
</body>
</html>