<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdmiMas.Master" AutoEventWireup="true" CodeBehind="AgregarVideo.aspx.cs" Inherits="SubDob.Admin.AgregarVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cuerpoAdmi" runat="server">
    <div class="container">
        <h2>Agregar Video</h2>
        <div id="AgregarVi" class="container row ">
            <section class="col-xs-12 col-md-6">
                <asp:FormView ID="FormView1" DefaultMode="Insert" runat="server" DataKeyNames="IdVideo" DataSourceID="SqlDSAgregarVideo">
                    <InsertItemTemplate>
                        Titulo:</br>
                        <asp:TextBox Text='<%# Bind("Titulo") %>' runat="server" ID="TituloTextBox" /><br />
                        Descripcion:
                        <asp:TextBox Text='<%# Bind("Descripcion") %>' runat="server" ID="DescripcionTextBox" /><br />
                        TipoPubli:
                        <asp:TextBox Text='<%# Bind("TipoPubli") %>' runat="server" ID="TipoPubliTextBox" /><br />
                        Foto:
                        <asp:TextBox Text='<%# Bind("Foto") %>' runat="server" ID="FotoTextBox" /><br />
                        Url:
                        <asp:TextBox Text='<%# Bind("Url") %>' runat="server" ID="UrlTextBox" /><br />
                        <asp:LinkButton runat="server" Text="Insertar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                    </InsertItemTemplate>
                   
                </asp:FormView>
                <asp:SqlDataSource runat="server" ID="SqlDSAgregarVideo" ConnectionString='<%$ ConnectionStrings:SUBDOBDBUsil %>' DeleteCommand="DELETE FROM [Video] WHERE [IdVideo] = @IdVideo" InsertCommand="INSERT INTO [Video] ([Titulo], [Descripcion], [TipoPubli], [Foto], [Url]) VALUES (@Titulo, @Descripcion, @TipoPubli, @Foto, @Url)" SelectCommand="SELECT * FROM [Video]" UpdateCommand="UPDATE [Video] SET [Titulo] = @Titulo, [Descripcion] = @Descripcion, [TipoPubli] = @TipoPubli, [Foto] = @Foto, [Url] = @Url WHERE [IdVideo] = @IdVideo">
                    <DeleteParameters>
                        <asp:Parameter Name="IdVideo" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Titulo" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
                        <asp:Parameter Name="TipoPubli" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Url" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Titulo" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
                        <asp:Parameter Name="TipoPubli" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Url" Type="String"></asp:Parameter>
                        <asp:Parameter Name="IdVideo" Type="Int32"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </section>
            <section class="col-xs-12 col-md-6"></section>
        </div>
    </div>


</asp:Content>
