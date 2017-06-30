<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SubDob.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SUbDob</title>
    <link href="https://fonts.googleapis.com/css?family=Bowlby+One" rel="stylesheet"/> 

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Estilos/DefaultPrincipal.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Nunito|Nunito+Sans:400,600,700" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Mogra" rel="stylesheet"/>
</head>
<body id="cuerpo">
    <form id="form1" runat="server">
    <div class="container row" id="principal">
        <div class="container-fluid">
        <section id="pres">
            <h1>Sub&Dod</h1>
            <p class="col-xs-12 ">Una mejor Forma de entrentenimiento audiovisual...</p> <br /> <p class="col-xs-12"> Encuentras de Todo con el Subtitulado y Doblado más exacto... </p>
        </section>
        <div class="container-fluid row" id="invitacion">
            <section id="izq" class="col-xs-12 col-md-6">
                <p>Películas, series, Documentales, novelas... y mucho más</p>
                
                <p>Nos enfocamos en tí, en tu cultura, para darte una mejor experiencia.</p>
                <asp:Button cssClass="btn btn-primary" ID="VerVideo" runat="server" Text="Comienza a Ver" OnClick="Button1_Click" />
            </section>
            <section id="der" class="col-xs-12 col-md-6">
                <p>Deseas llegar a más culturas</p>
                
                <p>Nos enfocamos en lo que buscas y te damos lo que quieres con una precisión más exacta</p>
                <asp:Button cssClass="btn btn-primary" ID="subDobEmpresa" runat="server" Text="Solicita SubDob" OnClick="Button2_Click" />
            </section>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
