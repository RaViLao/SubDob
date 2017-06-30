<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeVer.aspx.cs" Inherits="SubDob.UserNatural.HomeVer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container-fluid row">
        <h2>Tutoriales</h2>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="IdP" DataSourceID="sqdSProducto">
            <ItemTemplate>
                IdP:
                <asp:Label Text='<%# Eval("IdP") %>' runat="server" ID="IdPLabel" /><br />
                IdV:
                <asp:Label Text='<%# Eval("IdV") %>' runat="server" ID="IdVLabel" /><br />
                IdL:
                <asp:Label Text='<%# Eval("IdL") %>' runat="server" ID="IdLLabel" /><br />
                Fecha:
                <asp:Label Text='<%# Eval("Fecha") %>' runat="server" ID="FechaLabel" /><br />
                Tipo:
                <asp:Label Text='<%# Eval("Tipo") %>' runat="server" ID="TipoLabel" /><br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource runat="server" ID="sqdSProducto" ConnectionString='<%$ ConnectionStrings:SUBDOBConnectionString %>' SelectCommand="SELECT * FROM [Producto] INNER JOIN [VIDEO] ON PRODUCTO.IDP = VIDEO.IDVIDEO"></asp:SqlDataSource>
    </div>
    </div>
    </form>
</body>
</html>
