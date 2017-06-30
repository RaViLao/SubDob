<%@ Page Title="" Language="C#" MasterPageFile="~/UserNatural/UserNaturalMas.Master" AutoEventWireup="true" CodeBehind="IniciarSesionUN.aspx.cs" Inherits="SubDob.UserNatural.IniciarSesionUN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logeate" runat="server">
    LOGEANDOTE . . .
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cuerpoUN" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            
            <div class="account-wall">
                <img class="profile-img" src="https://simpleclipart.com/image/thumbnail/d6-f9-98/silhouette-of-man-and-woman-Download-Free-Vector-File-EPS-12554.jpg"
                    alt="" />
                <form class="form-signin">
                <input type="text" class="form-control" placeholder="Usuario"  />
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
</asp:Content>
