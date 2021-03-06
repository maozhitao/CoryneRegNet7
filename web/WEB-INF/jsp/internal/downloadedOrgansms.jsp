<%-- 
    Document   : organismsToDownload
    Created on : Jan 26, 2019, 3:12:57 PM
    Author     : doglas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CoryneRegNet 7.0</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="css/main.css">
        <script type="text/javascript" src="js/mainjs.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
    </head>

    <body style="background-image: url('images/background.png'); background-size: cover;" >

    <nav class="navbar navbar-expand-md navbar-inverse bg-dark fixed-top navbar-dark">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#"><span class="color logo-size">Coryne</span><span class="color-reg logo-size">Reg</span><span class="color logo-size">Net</span><span class="color-reg logo-size"> 7</span></a>
            </div>
            <div class="w-100 text-right">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse flex-grow-1 text-right" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link menu-item link-color flex-nowrap" href="workflow.htm">Prediction Workflow</a>
                    </li>
                    <li class="nav-item">
                        <a data-trigger="focus" class="nav-link menu-item link-color" href="requirements.htm">Requirements</a>
                    </li>
                    <li class="nav-item">
                        <a data-trigger="focus" class="nav-link menu-item link-color" href="requirements.htm">Statistics</a>
                    </li>
                </ul>
            </div>  
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row search-database">
            <div class="col-sm-12 font">
                <div class="title-size text-center centered-top">Downloaded genomic information</div>
            </div>
        </div>
    </div>

    <center><div class="container badge badge-light" style="opacity: 0.9;">
            <hr>
            <div class="row">
                <div class="col-sm-12">
                    <h2 align="center" style="padding-top: 10px;padding-bottom: 20px;">You have downloaded ${downloaded.size()} genomes</h2>
                </div>
            </div>
            <div class="row paddingBotton">
                <div class="col-sm-12" align="center">
                    <table class="table table-fit">
                        <thead>
                            <tr>
                                <th>Strain name</th>
                                <th>Accession number</th>
                                <th>File name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${downloaded}" var="download">
                                <tr>
                                    <td>${download[0]}</td>
                                    <td>${download[1]}</td>
                                    <td>${download[2]}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <form action="run.htm" method="POST">
                        <input type="hidden" id="downloadMessage" name="downloadMessage" value="You have succesfully downloaded ${downloaded.size()} genomes">
                        <input class="btn btn-primary btn-block" style="width: 100%" type="submit"value="Go back to Step two: SET THRESHOLDS & CHOSE GENOMES">
                    </form>
                </div>
            </div>
            <hr>
        </div>
    </center>

    <div class="container-fluid font">
        <div class="footer">
            <div class="row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <span>Developed by: Mariana Parise, Doglas Parise, Vasco Azevedo and Jan Baumbach (2018) - CoryneRegNet 7.0</span>
                </div>
            </div>
            <div id="div-footer" class="row">
                <div class="col-sm-2">
                    <a href="https://www.tum.de/" target="_blank" class="center-block">
                        <img src="images/tum-logo.svg" alt="Lights" class="tum-logo">
                    </a>
                    <a href="https://ufmg.br/" target="_blank" class="center-block">
                        <img src="images/logo_ufmg3.png" alt="Lights" class="ufmg-logo">
                    </a>
                </div>
                <div class="col-sm-2">

                </div>                
                <div class="col-sm-8 ">
                    <div class="row text-position">
                        <div class="col-sm-12">
                            <a href="https://www.baumbachlab.net/" target="_blank">
                                <span class="center-block">Experimental Bioinformatics - Baumbach Lab </span>
                            </a>
                        </div>
                    </div>
                    <div class="row text-position">
                        <div class="col-sm-12">
                            <a href="http://www.lgcm.icb.ufmg.br/site/" target="_blank">
                                <span class="center-block">Laboratory of Cellular and Molecular Genetics - LGCM</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var height = $(window).height();
        if (height > 820) {
            var d = document.getElementById('painel');
            d.style.position = "relative";
            d.style.top = (height / 8) + 'px';
        } else if (height > 780) {
            var d = document.getElementById('painel');
            d.style.position = "relative";
            d.style.top = (height / 10) + 'px';
        } else {
            var d = document.getElementById('painel');
            d.style.position = "relative";
            d.style.top = (height / 20) + 'px';
            d.style.marginBottom = 50 + "px";
        }

    </script>
</body>
</html>