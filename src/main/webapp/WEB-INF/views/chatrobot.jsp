<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>手机商城</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/chatrobot.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"> -->
    <!-- <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/chat.js"></script>
</head>
<body>
<div id="main" class="container">
    <div id="header">
        <jsp:include page="header.jsp"/>
    </div>
    <div class="chat-div">
        <form action="" method="post">
        <div class="chat">
            <div class="col-md-6">
                <img src="./image/login.png" alt="" width="640" height="400" style="margin-left:-40px;margin-top:30px;">
            </div>
            <div class="chat-name col-md-5">
                <div class="chat-name-detail">
                    <h3 id="receive"><i>留言</i></h3>
                </div>
                <div class="chat-input">
                    <div class="form-div">
                        <div class="form-inline">
                            <div class="form-group input-div">
                                <label>联系方式:</label>
                                <input class="form-control" id="input-tel" name ="tel" id="tel" />
                            </div>
                            <div class="form-group input-div">
                                <label>内容:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
                                <textarea class="form-control" name="message" id="input-message" rows="1"></textarea>
                            </div>
                            <br/>
                            <div class="form-group send-div">
                                <input class="form-control btn btn-primary " id="send-message" type="submit" value="发送">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>
</body>
</html>