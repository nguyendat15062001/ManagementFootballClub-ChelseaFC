<%-- 
    Document   : DetailPlayer
    Created on : Feb 19, 2022, 3:39:02 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .detail-player *{
                font-size: 20px;
            }

            .detail-player {
                width: 100%;
                margin: 40px 0;
            }

            .detail-player h1 {
                text-align: center;
                margin: 40px 0;
                font-weight: bold;
                color: #140a47;
                font-size: 40px;
                background-color: #f1f1f1;
                padding: 10px 0;
                text-transform: uppercase;
            }

            .detail-player .background {
                width: 100%;
            }

            .detail-player .background img {
                border: 1px solid #140a47;
            }

            .detail-player .top-infor-player {
                width: 100%;
                margin: 20px 0;
            }

            .detail-player .picture-player img {
                border: 1px solid grey;
            }

            .detail-player .picture-player h3 {
                background-color: #0033ff;
                text-align: center;
                width: 50px;
                height: 50px;
                font-size: 40px;
                color: #fff;
                position: absolute;
                top: 0;
            }

            .detail-player .frame-infor-player {
                width: 100%;
                border: 1px solid #140a47;
            }

            .detail-player .inside-frame {
                width: 90%;
                margin: 20px auto;
            }

            .detail-player .inside-frame h2 {
                background-color: #0033ff;
                text-align: center;
                width: 70px;
                height: 50px;
                font-size: 40px;
                color: #fff;
                position: absolute;
                top: 20px;
                display: none;
            }

            .detail-player .inside-frame h4 {
                color: #0033ff;
                font-weight: bold;
                font-size: 40px;
            }

            .detail-player .inside-frame h5 {
                color: #140a47;
                font-size: 20px;
                padding: 20px 0;
                border-bottom: 4px solid #140a47;
            }

            .detail-player .inside-frame table {
                width: 100%;
            }

            .detail-player .inside-frame td {
                padding: 10px 0;
                border-bottom: 4px solid #f1f1f1;
                font-size: 20px;
            }

            .detail-player .inside-frame .data {
                position: absolute;
                right: 7%;
            }

            .detail-player .bottom-infor-player{
                width: 100%;
            }

            .detail-player .bottom-infor-player h2{
                font-size: 40px;
                font-weight: bold;
                color: #140a47;
                text-align: center;
                margin: 40px 0;
                background-color: #f1f1f1;
                padding: 10px 0;
            }

            .detail-player .bottom-infor-player h3{
                color: #0033ff;
                font-weight: bold;
                font-size: 30px;
                padding: 10px 0;
            }

            .detail-player .bottom-infor-player p{
                font-size: 20px;
                color: #140a47;
            }

            .detail-player .bottom-infor-player .detail-content{
                width: 100%;
                margin: 20px 0;
            }
            
            .detail-player .detail-content{
                width: 100%;
            }

            .detail-player .detail-content img{
                width: 100%;
                height: auto;
                margin: 20px 0;
            }

        </style>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="detail-player">
                <h1>Detail about ${player.playerName}</h1>
            <div class="background">
                <img src="${player.imgBackground}" alt="" width="100%" height="700px">
            </div>
            <div class="container">
                <div class="top-infor-player">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="picture-player">
                                <h3>${player.number}</h3>
                                <img src="${player.img}" alt="Picture" width="100%" height="300px">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="frame-infor-player">
                                <div class="inside-frame">
                                    <div class="top-part">
                                        <h2>${player.playerId}</h2>
                                        <br><br><br>
                                        <h4>${player.playerName}</h4>
                                        <h5>Personal Information</h5>
                                    </div>
                                    <div class="bottom-part">
                                        <table>
                                            <tr>
                                                <td class="attribute">Player Name</td>
                                                <td class="data">${player.playerName}</td>
                                            </tr>
                                            <tr>
                                                <td class="attribute">Date of birth</td>
                                                <td class="data">${player.dateLetter}</td>
                                            </tr>
                                            <tr>
                                                <td class="attribute">Birthplace</td>
                                                <td class="data">${player.birthPlace}</td>
                                            </tr>
                                            <tr>
                                                <td class="attribute">Height</td>
                                                <td class="data">${player.height} M</td>
                                            </tr>
                                            <tr>
                                                <td class="attribute">Weight</td>
                                                <td class="data">${player.weight} KG</td>
                                            </tr>
                                            <tr>
                                                <td class="attribute">Position</td>
                                                <c:forEach items="${playerRole}" var="pr">
                                                    <c:if test="${pr.roleId == player.roleId}">
                                                        <td class="data">${pr.roleName}</td>
                                                    </c:if>
                                                </c:forEach>
                                            </tr>
                                            <tr>
                                                <td class="attribute">Number</td>
                                                <td class="data">${player.number}</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bottom-infor-player">
                    <h2>Biography</h2>
                    <h3>${player.shortDescription}</h3>
                    <c:forEach items="${infor}" var="infor">
                        <p>${infor}</p>
                    </c:forEach>
                    <div class="detail-content">
                        <c:forEach items="${detail}" var="det">
                            <p>${det}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
