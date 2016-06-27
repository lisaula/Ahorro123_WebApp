<%@ Page Title="" Language="C#" MasterPageFile="~/Pagos/MPPagos.master" AutoEventWireup="true" CodeBehind="IngresarPago.aspx.cs" Inherits="Ahorro.Pagos.IngresarPago" EnableEventValidation="false" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
     <div id="ingresar_form">
        <form>
            <div>
                <ul>
                    <li>
                        <h2>Pagos</h2>
                        <span class="required_notification">* Datos requeridos</span>
                    </li>
                    <li>
                        <p id="p0" runat="server" Visible="False"></p>
                        <label for="ID_PRESTAMO">ID prestamo: </label>
                        <input type="text" ID="txtidprestamo" name="txtidprestamo" runat="server" placeholder="##" required/>
                        <span class="form_hint">Formato correcto: "#numero"</span>
                    </li>
                    <li>
                        <p id="p1" runat="server" Visible="False"></p>
                        <label for="MONTO">Monto: </label>
                        <input type="text" ID="txtmonto" name="txtmonto" runat="server" required />
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
