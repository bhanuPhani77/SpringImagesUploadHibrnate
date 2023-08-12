<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <style>
            #img1:hover {
    -webkit-transform:scale(2.5); /* or some other value */
    transform:scale(1.5);
    position: center;
}
.row {
  display: flex;
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create two equal columns that sits next to each other */
.column {
  flex: 50%;
  padding: 0 4px;
}
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
<body>
<div class="text-center">
    
        <!-- <tr>
        <th>User Id</th>
        <th>User Name</th>
        <th>User Image</th>
        </tr> -->
    <c:forEach items="${list_users}" var= "user">

<!-- <td>${user.userId}</td>
<td id="name">${user.fullName}</td> -->

    <img class="img-thumbnail" src="data:image/png;base64,${user.base64Image}" width="100" height="125" onclick="enlargeImg()" id="img1"></td>

</c:forEach><br>
<button class="btn btn-primary"><a href="/" style="text-decoration: none;color:white;">Go To Home</a> </button>
<button class="btn btn-primary"><a href="/saveuser" style="text-decoration: none;color:white;">upload image</a> </button>
</div>

<!-- script to set display property -->
<!-- <script>
    // Get the img object using its Id
    img = document.getElementById("img1");
    // Function to increase image size
    function enlargeImg() {
      // Set image size to 1.5 times original
      img.style.transform = "scale(3.5)";
      // Animation effect
      img.style.transition = "transform 0.25s ease";
    }
    // Function to reset image size
    function resetImg() {
      // Set image size to original
      img.style.transform = "scale(1)";
      img.style.transition = "transform 0.25s ease";
    } -->
  </script>
</body>
</html>