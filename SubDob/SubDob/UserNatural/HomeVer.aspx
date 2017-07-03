<%@ Page Title="" Language="C#" MasterPageFile="~/UserNatural/UserNaturalMas.Master" AutoEventWireup="true" CodeBehind="HomeVer.aspx.cs" Inherits="SubDob.UserNatural.HomeVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="logSesion" ContentPlaceHolderID="logeate" runat="server">
    <ul>
        <li><a href="IniciarSesionUN.aspx">
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
           <asp:DataList ID="Peli" RepeatColumns="4" runat="server" DataKeyField="IdP" DataSourceID="SqlDSPeliculas">
               <ItemTemplate>
                  <img src="<%# Eval("Foto") %>" />
                   <br />
                   <h3><%# Eval("Titulo") %></h3>
                   <asp:Label Text='Lengua: <%# Eval("Nombre") %>' runat="server" ID="TipoLabel" /><br />
                   <br />
               </ItemTemplate>
           </asp:DataList>

           <asp:SqlDataSource runat="server" ID="SqlDSPeliculas" ConnectionString='<%$ ConnectionStrings:SUBDOBDBUsil %>' SelectCommand="select * from Producto inner Join Video on Producto.IdV = Video.IdVideo inner join Lengua on Producto.IdL = Lengua.IdLengua where Video.TipoPubli='Pelicula'"></asp:SqlDataSource>
           
           

           <h3>Series</h3>
           <asp:DataList ID="Series" runat="server"></asp:DataList>

           
           
           <h3>Tutoriales</h3>
           <asp:DataList ID="Tutorial" RepeatColumns="4" runat="server" DataKeyField="IdP" DataSourceID="SqlDSTutoriales">
               <ItemTemplate>
                  <img src="<%# Eval("Foto") %>" />
                   <br />
                   <h3><%# Eval("Titulo") %></h3>
                   <asp:Label Text='Lengua: <%# Eval("Nombre") %>' runat="server" ID="TipoLabel" /><br />
                   <br />
               </ItemTemplate>
           </asp:DataList>

           <asp:SqlDataSource runat="server" ID="SqlDSTutoriales" ConnectionString='<%$ ConnectionStrings:SUBDOBDBUsil %>' SelectCommand="select * from Producto inner Join Video on Producto.IdV = Video.IdVideo inner join Lengua on Producto.IdL = Lengua.IdLengua where Video.TipoPubli='Tutorial'"></asp:SqlDataSource>
           
           
           
           <h3>Documentales</h3>
           <asp:DataList ID="Documental" runat="server"></asp:DataList>

           <h3>Muchos mas...</h3>
           <asp:DataList ID="Otros" runat="server"></asp:DataList>

       </section>
   </div>
</asp:Content>
