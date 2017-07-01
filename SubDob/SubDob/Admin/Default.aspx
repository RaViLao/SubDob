<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SubDob.Admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Estilos/EstiloAdmi.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="Iniciar">
                <h1 style="text-align:center">Iniciar Sesión Administrador</h1>
                <div class="form-group">
                    <asp:TextBox cssclass="form-control" ID="textUser" runat="server" placeholder="Usuario"></asp:TextBox>
                    <asp:TextBox cssclass="form-control" ID="textPass" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    <asp:Button cssClass="btn btn-primary" ID="IniciarAdmi" runat="server" Text="Iniciar Sesión" OnClick="IniciarAdmi_Click" />
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me" />Recordarme</label>
                <a href="#" class="pull-right need-help">¿Necesitas ayuda? </a><span class="clearfix"></span>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
