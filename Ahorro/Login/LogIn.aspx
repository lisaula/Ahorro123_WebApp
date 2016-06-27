<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Ahorro.Login.LogIn" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoMenuContextual" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <div id="Login">
        <form id="FormLogin">
            <h1>Login</h1>
            <input type="text" name="txtusu" max-length="20" placeholder="Ingrese su email"></input>
            <input type="password" name="txtpass"max-length="20" placeholder="Ingrese su contraseña"></input>
            <input type="button" name="boton" value="Entrar" runat="server" OnServerClick="boton_OnServerClick" />
            <a href="/Login/registrarUsuario.aspx">Registrarse</a>
        </form>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHORRO123ConnectionString %>" SelectCommand="Validar_Login" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:FormParameter FormField="txtusu" Name="Email" Type="String" />
                <asp:FormParameter FormField="txtpass" Name="password" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
