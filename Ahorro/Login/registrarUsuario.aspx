<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registrarUsuario.aspx.cs" Inherits="Ahorro.Login.registrarUsuario" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoMenuContextual" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <div id="ingresar_form">
        <form>
            <div>
                <ul>
                    <li>
                        <h2>Usuarios</h2>
                        <span class="required_notification">* Datos requeridos</span>
                    </li>
                    <li>
                        <label for="ID_USUARIO">Email: </label>
                        <input type="text" ID="txtusu" name="txtusu" runat="server" placeholder="prueba@test.com" required/>
                        <span class="form_hint">Formato correcto: "name@something.com"</span>
                    </li>
                    <li>
                        <label for="USERNAME">Nombre de usuario: </label>
                        <input type="text" ID="txtusername" name="txtusername" runat="server"  required/>
                    </li>
                    <li>
                        <label for="CLAVE">Contraseña: </label>
                        <input type="password" ID="txtspass" name="txtclave" runat="server" required />
                    </li>
                    <li>
                        <button class="boton" name="Registrar" type="button" value="Registrar" runat="server" OnServerClick="Registrar_OnServerClick">Registrar</button>
                        <button class="boton" type="reset" name="reset" value="Reset" runat="server" OnServerClick="reset_OnServerClick">Reset</button>
                    </li>
                </ul>
            </div>
        </form>
    </div> 
</asp:Content>
