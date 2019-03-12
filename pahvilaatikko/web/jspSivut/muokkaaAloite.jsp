<%-- 
    Document   : muokkaaAloite
    Created on : 23-May-2018, 23:50:41
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poista Aloite</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">
    <link rel="stylesheet" href="../assets/css/Highlight-Phone.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="../assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
<link rel="icon" href="ico.png">
</head>

<body style="font-family:'Varela Round', sans-serif;">
    <div>
        <nav class="navbar navbar-light navbar-expand-md navigation-clean" style="background-color:#007ac9;">
            <div class="container"><a class="navbar-brand" href="../index.html" style="color:#ffffff;">Aloitelaatikko</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Muokkaa aloite</a></li>
                        <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Valikko</a>
                            <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="lisaaAloite.jsp">Lisää aloite</a><a class="dropdown-item" role="presentation" href="lisaaKayttaja.jsp">Lisää käyttäjä</a><a class="dropdown-item" role="presentation" href="lisaaToimenpide.jsp">Lisää toimenpide</a>
<a
                                    class="dropdown-item" role="presentation" href="poistaAloite.jsp">Poista aloite</a><a class="dropdown-item" role="presentation" href="tulostaAloitteet.jsp">Kakki aloitteet</a></div>
                        </li>
                    </ul>
            </div>
    </div>
    </nav>
    </div>
    <div class="highlight-phone">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="intro">
                        <h2>Muokkaa aloitetta:</h2>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <form action="../../pahvilaatikko/muokkaaAloite" method="post">
                            <input class="form-control" type="text" name="aloiteID" placeholder="Aloite ID">
                            <textarea class="form-control" rows="6" name="aloitekuvaus" placeholder="Aloitteen kuvaus"></textarea>
                            <button class="btn btn-primary" type="submit" id="nappi" style="background-color:#007ac9;">Muokkaa aloiteta</button><button class="btn btn-primary" type="reset"
                                id="nappi" style="background-color:#007ac9;">Tyhjennä</button></form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>