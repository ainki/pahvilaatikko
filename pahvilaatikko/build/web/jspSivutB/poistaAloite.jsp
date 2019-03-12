<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Poista aloite</title>
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
                    <li class="active" role="presentation"><a href="poistaAloite.jsp">Poista Aloite</a></li>
                    <li role="presentation"><a href="tulostaAloitteet.jsp">Kaikki Aloiteet</a></li>
                </ul>
                <ul class="nav navbar-nav"></ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1>Poista aloite</h1>
                    <p>Tästä voit poistaa aloitteen tietokannasta.</p>
                </div>
                <div class="col-md-6 col-md-offset-0">
                    <form action="../../pahvilaatikko/poistaAloite" method="post">
                        <input type="text" name="aloiteID" placeholder="Aloitteen ID"><br>

                        <button class="btn btn-default btn-sm" type="reset" >Tyhjennä</button>
                        <button class="btn btn-default btn-sm" type="submit" >Poista aloite</button>            
                    </form>
                </div>
            </div>
        </div>
        <footer>
            <p>© Alex I. │ 2018</p>
        </footer>
    </body>
</html>
