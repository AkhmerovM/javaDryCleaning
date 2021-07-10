<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Posts</title>
</head>
<body>
<security:authorize>
    <p>Text</p>
</security:authorize>
<h1>Posts: </h1>
<div style="margin-bottom: 50px" >
<div th:each="post : ${posts}" style="margin-bottom: 10px">
    <b th:text="${post.id}"></b>
    <i th:text="${post.text}"></i>
    <a th:href="'/posts/update/' + ${post.id}" style="padding: 5px; background-color: #b37a37; margin: 20px" >Update</a>
    <a th:href="'/posts/remove/' + ${post.id}" style="padding: 5px; background-color: #b37a37; margin: 20px" >Remove</a>
</div>
</div>
<a href="/posts/create" style="padding: 10px; background-color: bisque; margin: 20px" >Create</a>
</body>
</html>