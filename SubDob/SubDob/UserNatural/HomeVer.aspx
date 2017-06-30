<%@ Page Title="" Language="C#" MasterPageFile="~/UserNatural/UsuarioNaturalMas.Master" AutoEventWireup="true" CodeBehind="HomeVer.aspx.cs" Inherits="SubDob.UserNatural.HomeVer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid rows" id="principal"> 
       <section id="aside" class="col-xs-0 col-md-3">
           <h3>Encuentralos por:</h3>
           <ul id="cat">
               <li> <a>Lengua Oriunda </a></li>
               <li> <a>Dialecto Regional</a></li>
               <li> <a>Ashaninka</a></li>
               <li> <a>Cat4 </a></li>
               <li> <a>Cat5 </a></li>
           </ul>
           <h3>Te puede interesar</h3>
           <asp:AdRotator ID="Publi" AdvertisementFile="~/UserNatural/publi1.xml" runat="server" />
       </section>
        <section class="col-xs-12 col-md-9">
            <div>
                <h2>Películas</h2>
                    <asp:DataList cssClass="Mostrar" ID="Pelicula" RepeatColumns="4" runat="server" DataKeyField="IdP" DataSourceID="SqlDSPeliculas">
                        <ItemTemplate><a href="Pelicula.aspx?c=">
                            <img src="<%# Eval("Foto") %>" />
                            <h4><%# Eval("Titulo") %></h4>                            
                            <asp:Label ID="Label1" runat="server" Text='Lengua:<%# Eval("Nombre") %>'></asp:Label> </a>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource runat="server" ID="SqlDSPeliculas" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString2 %>' SelectCommand="SELECT * FROM [Producto] INNER JOIN [VIDEO] ON PRODUCTO.IDV = VIDEO.IDVIDEO inner join Lengua on producto.IdL = lengua.IdLengua  where video.TipoPubli = 'Pelicula'"></asp:SqlDataSource>
        
                <h2>Tutoriales</h2>

                <asp:DataList cssClass="Mostrar" ID="Tutoriales" RepeatColumns="4" runat="server" DataKeyField="IdP" DataSourceID="SqlDSTutoriales">

                    <ItemTemplate>
                         <img src="<%# Eval("Foto") %>" />
                       <h4><%# Eval("Titulo") %></h4>     
                       <asp:Label ID="Label1" runat="server" Text='Lengua: <%# Eval("Nombre") %>'></asp:Label> 
                    </ItemTemplate>
                </asp:DataList>

                <asp:SqlDataSource runat="server" ID="SqlDSTutoriales" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString2 %>' SelectCommand="SELECT * FROM [Producto] INNER JOIN [VIDEO] ON PRODUCTO.IDV = VIDEO.IDVIDEO inner join Lengua on producto.IdL = lengua.IdLengua  where video.TipoPubli = 'Tutorial'
"></asp:SqlDataSource>
            </div>
       </section>
    </div>
</asp:Content>
