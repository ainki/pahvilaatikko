<%-- 
    Document   : tulostaAloitteet
    Created on : Nov 24, 2017, 1:51:00 PM
    Author     : s1601379
--%>

<%@page import="Tietovarastopakkaus.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aloitteen tulostus</title>
        <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/styles.css">
        <link rel="stylesheet" href="../assets/css/untitled.css">
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="../index.html">Aloitelaatikko </a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li role="presentation"><a href="lisaaAloite.jsp">Lisää Aloite</a></li>
                        <li role="presentation"><a href="lisaaKayttaja.jsp">Lisää Käyttäjä</a></li>
                        <li role="presentation"><a href="lisaaToimenpide.jsp">Lisää Toimenpide</a></li>
                        <li role="presentation"><a href="poistaAloite.jsp">Poista Aloite</a></li>
                        <li class="active" role="presentation"><a href="tulostaAloitteet.jsp">Kaikki Aloitteet</a></li>
                    </ul>
                    <ul class="nav navbar-nav"></ul>
                </div>
            </div>
        </nav>
        <%
            Tietovarasto tietovarasto = new Tietovarasto();
        %>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h1>Kaikki Aloitteet</h1>
                    <p>Tästä näät kaikki aloitteet.</p>
                </div>
                <div class="col-md-9 col-md-offset-0">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Aloite ID</th>
                                <th>Nimi</th>
                                <th>Kuvaus</th>
                                <th>pvm</th>
                                <th>Tekijätunnus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (Aloite aloite : tietovarasto.haeKaikkiAloitteet()) {
                            %>
                            <tr>
                                <td><%=aloite.getAloiteID()%></td>
                                <!--Lähetetään aloitenimen lisäksi aloiteID ja aloitekuvaus servletille-->
                                <td><a herf='lisaaToimenpide.jsp?aloiteID=<%= aloite.getAloiteID()%>'>
                                        <%=aloite.getAloitenimi()%></a></td>
                                       <td><%= aloite.getAloitekuvaus()%></td>
                                       <td><%= aloite.getPvm()%></td>
                                       <td><%= aloite.getKayttajaID()%></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>








    </body>
</html>
