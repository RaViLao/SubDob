<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmiMas.Master" AutoEventWireup="true" CodeBehind="VerVideo.aspx.cs" Inherits="SubDob.Admin.VerVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpoAdmi" runat="server">
    <div class="container">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="IdP" DataSourceID="SqlDsVerVideo">
            <ItemTemplate>
                IdP:
                <asp:Label Text='<%# Eval("IdP") %>' runat="server" ID="IdPLabel" /><br />
                IdV:
                <asp:Label Text='<%# Bind("IdV") %>' runat="server" ID="IdVLabel" /><br />
                IdL:
                <asp:Label Text='<%# Bind("IdL") %>' runat="server" ID="IdLLabel" /><br />
                Fecha:
                <asp:Label Text='<%# Bind("Fecha") %>' runat="server" ID="FechaLabel" /><br />
                Tipo:
                <asp:Label Text='<%# Bind("Tipo") %>' runat="server" ID="TipoLabel" /><br />
                Lengua:
                <asp:Label Text='<%# Bind("Nombre") %>' runat="server" ID="Label1" /><br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource runat="server" ID="SqlDsVerVideo" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString3 %>' SelectCommand="select * from Producto inner Join Video on Producto.IdV = Video.IdVideo inner join Lengua on Producto.IdL = Lengua.IdLengua WHERE ([IdP] = @IdP)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="c" Name="IdP" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>



</asp:Content>
