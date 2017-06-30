<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmiMas.Master" AutoEventWireup="true" CodeBehind="verSubDobAdmi.aspx.cs" Inherits="SubDob.Admin.verSubDobAdmi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpoAdmi" runat="server">
    <div class="container"><h2>Administrar Productos -  Videos</h2>
        <asp:GridView CssClass="table table-info" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdP" DataSourceID="SqlDSTodo">
            <Columns>
                <asp:TemplateField HeaderText="Ir Producto"><ItemTemplate><a href="VerVideo.aspx?c=<%#Eval("IDP") %>">Ver Video</a></ItemTemplate></asp:TemplateField>
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo"></asp:BoundField>
                    <asp:BoundField DataField="TipoPubli" HeaderText="TipoPubli" SortExpression="TipoPubli"></asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDSTodo" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString2 %>' SelectCommand="select * from Producto inner Join Video on Producto.IdV = Video.IdVideo inner join Lengua on Producto.IdL = Lengua.IdLengua;
"></asp:SqlDataSource>
    </div>

</asp:Content>
