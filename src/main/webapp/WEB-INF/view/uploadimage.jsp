<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>
            Upload image
        </title>
    </head>
    <body>
        <form:form action="/savesuccess" method="post" modelAttribute="user_Dto" enctype ="multipart/form-data">
            <label for="fullname">Full Name:</label>
            <form:input type="text" path="fullName" name="fullName" id="fullName" /> <br>
            <label for="imageupload"> Upload Image:</label>
            <form:input type="file" path="image" name="file"  id="image" />
            <form:button>Upload</form:button>
        </form:form><br>
        <button><a href="/" style="text-decoration: none;">return to home</a></button>

    </body>
</html>