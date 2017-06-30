<%@ Page Title="" Language="C#" MasterPageFile="~/UserNatural/UserNaturalMas.Master" AutoEventWireup="true" CodeBehind="HomeVer.aspx.cs" Inherits="SubDob.UserNatural.HomeVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="logSesion" ContentPlaceHolderID="logeate" runat="server">
    <ul>
        <li><a href="UsuarioNatural_InicioSesion.aspx">
            <img src="logeate" />Iniciar Sesión</a></li>
        <li><a href="UsuarioNatural_InicioSesion.aspx">
            <img src="logeate" />Registrate</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cuerpoUN" runat="server">
   <div  class="container-fluid row">
       <section id="Cat" class="col-xs-12 col-md-3">
           <div id="catDes">
               <h3>Encuentralos en:</h3>
               <ul>
                   <li><a>Lenguas Nativas</a></li>
                   <li><a>Dialectos Regionales</a></li>
                   <li><a>Coloquial de cada Pais</a></li>
                   <li><a>Traducción Literal</a></li>
                   <li><a>Más</a></li>
               </ul>
           </div>
       </section>
       <section  id="principal" class="Mostrar col-xs-12 col-md-9">
           <h3>Películas</h3>
           <asp:DataList ID="DataList1" runat="server"></asp:DataList>

           <h3>Series</h3>
           <asp:DataList ID="DataList2" runat="server"></asp:DataList>

           <h3>Tutoriales</h3>
           <asp:DataList ID="DataList3" runat="server"></asp:DataList>

           <h3>Documentales</h3>
           <asp:DataList ID="DataList4" runat="server"></asp:DataList>

           <h3>Muchos mas...</h3>
           <asp:DataList ID="DataList5" runat="server"></asp:DataList>

       </section>
   </div>
</asp:Content>
