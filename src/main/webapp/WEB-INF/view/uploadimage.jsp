<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>
            Upload image
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="text-center">
        <form:form action="/savesuccess" method="post" modelAttribute="user_Dto" enctype ="multipart/form-data">
            <label for="fullname">Full Name:</label>
            <form:input type="text" path="fullName" name="fullName" id="fullName" aria-required="true"/> <br>
            <label for="imageupload"> Upload Image:</label>
            <form:input type="file" path="image" name="file"  id="image"  aria-required="true"/>
            <form:button>Upload</form:button>
        </form:form><br>
        <button><a href="/" style="text-decoration: none;">return to home</a></button>
    </div>
    </body>
</html>