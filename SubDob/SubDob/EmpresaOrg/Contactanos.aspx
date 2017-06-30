<%@ Page Title="" Language="C#" MasterPageFile="~/EmpresaOrg/DefaultEmpresaOrg.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="SubDob.EmpresaOrg.Contactanos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contacto"> 
        
       <h2 id="TituloCont">CONTACTO</h2>
        <input type="text" name="Nombre" placeholder="Nombre" required/>
        <input type="text" name="correo" placeholder="correo" required/>
        <input type="text" name="telefono" placeholder="telefono" required/>
        <textarea name="mensaje" placeholder="Escriba aqui su menjase"></textarea>
        <input type="submit" value="ENVIAR" id="boton"/>
    </div>
</asp:Content>
