<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmiMas.Master" AutoEventWireup="true" CodeBehind="GestionarPagina.aspx.cs" Inherits="SubDob.Admin.GestionarPagina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpoAdmi" runat="server">
    <div class="container">

        <h4>Hola <asp:Label ID="Label1" runat="server" Text=" Ramiro"></asp:Label>, Hoy te ayudaremos a mejorar tu Página. Administralo</h4>
        <section id="verSubDob" class="col-xs-12 col-md-6"> 
            <h5>Administra todo lo que desees</h5>
            <ul>
                <li>Películas</li>
                <li>Series</li>
                <li>Documentales</li>
                <li>Tutoriales</li>
            </ul>
            <div class="limitar"></div>
            <br />
            <asp:Button cssClass="btn btn-info" ID="verAdministrar" runat="server" Text="Administrar Ver SubDob" OnClick="verAdministrar_Click" />
            <br /><br />
            a
        </section>

        

        <section class="col-xs-12 col-md-6"> Der</section>
    </div>

</asp:Content>
