<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ahorro.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 87px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoMenuContextual" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <div id="Login">
        <form id="FormLogin">
            <h1>Login</h1>
            <input type="text" max-length="20" placeholder="Ingrese su email"></input>
            <input type="password" max-length="20" placeholder="Ingrese su contraseña"></input>
            <input type="submit" name="boton" value="Entrar" />
            <a href="#">Registrarse</a>
        </form>
    </div>
</asp:Content>
