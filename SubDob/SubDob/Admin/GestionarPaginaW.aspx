﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmiMas.Master" AutoEventWireup="true" CodeBehind="GestionarPaginaW.aspx.cs" Inherits="SubDob.Admin.verSubDobAdmi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpoAdmi" runat="server">
    <div id="Acordion" class="container">
        <section id="item1" class="container">
            <a href="#item1">
                <h2>Administrar Productos</h2>
                <img width="100%" src="http://macrogroupcompanies.com/web/c/62-category_default/recording-broadcast.jpg" />

            </a>
            <asp:GridView CssClass="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdP" DataSourceID="SqldsTodos">
                <Columns>
                    <asp:TemplateField HeaderText="Ir Producto">
                        <ItemTemplate><a href="VerVideo.aspx?c=<%#Eval("IDP") %>">Ver Video</a></ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo"></asp:BoundField>
                    <asp:BoundField DataField="TipoPubli" HeaderText="TipoPubli" SortExpression="TipoPubli"></asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                </Columns>
            </asp:GridView>


        </section>

        <section id="item2" class="container">
            <a href="#item2">
                <h2>Administrar Video</h2>
                <img width="100%" src="http://2.bp.blogspot.com/_V--YAIes9rs/TPTd9wW2cCI/AAAAAAAAAEU/MGtey9S-T98/fotostodo2.jpg" />

            </a>
                        <asp:GridView CssClass="table table-hover" ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="IdVideo" DataSourceID="SqlDsVideo">
                <a></a><Columns>
                    <asp:BoundField DataField="IdVideo" HeaderText="IdVideo" ReadOnly="True" InsertVisible="False" SortExpression="IdVideo"></asp:BoundField>
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo"></asp:BoundField>
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
                    <asp:BoundField DataField="TipoPubli" HeaderText="TipoPubli" SortExpression="TipoPubli"></asp:BoundField>
                    <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto"></asp:BoundField>
                    <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDsVideo" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString3 %>' SelectCommand="SELECT * FROM [Video]"></asp:SqlDataSource>

            


        </section>

        <section id="item3" class="container">
            <a href="#item3">
                <h2>Administrar Lengua</h2>
                <img width="100%" src="http://cde.peru21.pe/ima/0/0/3/0/2/302082.jpg" />
            </a>
            <asp:GridView CssClass="table table-hover" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdLengua" DataSourceID="SqlDsLengua">
                <Columns>
                    <asp:BoundField DataField="IdLengua" HeaderText="IdLengua" ReadOnly="True" InsertVisible="False" SortExpression="IdLengua"></asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                    <asp:BoundField DataField="ZonaGeo" HeaderText="ZonaGeo" SortExpression="ZonaGeo"></asp:BoundField>
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDsLengua" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString3 %>' SelectCommand="SELECT * FROM [Lengua]"></asp:SqlDataSource>
        </section>
        <asp:SqlDataSource runat="server" ID="SqldsTodos" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString3 %>' SelectCommand="select * from Producto inner Join Video on Producto.IdV = Video.IdVideo inner join Lengua on Producto.IdL = Lengua.IdLengua"></asp:SqlDataSource>
    </div>


</asp:Content>