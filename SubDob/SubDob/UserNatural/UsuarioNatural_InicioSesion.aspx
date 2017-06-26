<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioNatural_InicioSesion.aspx.cs" Inherits="SubDob.UserNatural.UsuarioNatural_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="UsuarioNatural_Estilo.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            
            <div class="account-wall">
                <img class="profile-img" src="https://simpleclipart.com/image/thumbnail/d6-f9-98/silhouette-of-man-and-woman-Download-Free-Vector-File-EPS-12554.jpg"
                    alt="" />
                <form class="form-signin">
                <input type="text" class="form-control" placeholder="Email"  />
                <input type="password" class="form-control" placeholder="Contraseña"  />
                <button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar Sesión</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me" />Recordarme</label>
                <a href="#" class="pull-right need-help">¿Necesitas ayuda? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="#" class="text-center new-account">Crear una cuenta </a>
        </div>
    </div>
</div>
</body>
</html>
