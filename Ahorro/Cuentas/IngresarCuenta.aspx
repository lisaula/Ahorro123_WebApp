<%@ Page Title="" Language="C#" MasterPageFile="~/Cuentas/MPCuentas.master" AutoEventWireup="true" CodeBehind="IngresarCuenta.aspx.cs" Inherits="Ahorro.Cuentas.IngresarCuenta" EnableEventValidation="false" ValidateRequest="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <head>
        <script type="text/javascript">
            $("#othertype").show();
            $('#txttipo').on('change', function () {
                var selection = $(this).val();
                switch (selection) {
                    case "1":
                        $("#othertype").show();
                        break;
                    default:
                        $("#othertype").hide();
                }
            });
        </script>
    </head>
    <div id="ingresar_form">
        <form>
            <div>
                <ul>
                    <li>
                        <h2>Cuentas</h2>
                        <span class="required_notification">* Datos requeridos</span>
                    </li>
                    <li>
                        <p id="p0" runat="server" Visible="False"></p>
                        <label for="ID_EMPLEADO">ID empleado: </label>
                        <input type="text" ID="txt_idempleado" name="txtusu" runat="server" placeholder="##" required/>
                        <span class="form_hint">Formato correcto: "#numero"</span>
                    </li>
                    <li>
                        <p id="p1" runat="server" Visible="False"></p>
                        <label for="TIPO">Tipo de cuenta: </label>
                        <select name="txttipo" id="txttipo" runat="server">
                            <option>Escoje un tipo</option>
                            <option value="0">Cuenta Ahorro</option>
                            <option value="1">Cuenta Inversion</option>
                        </select>
                    </li>
                    <li>
                        <p id="p2" runat="server" Visible="False"></p>
                        <label for="SALDO">Saldo: </label>
                        <input type="text" ID="txtsaldo" name="txtsaldo" runat="server" required />
                    </li>
                    <li>
                        <p id="p3" runat="server" Visible="False"></p>
                        <label for="MONTO_A">Monto anual: </label>
                        <input type="text" ID="txtmontoa" name="txtmontoa" runat="server" style="" required />
                    </li>
                        <li>
                        <p id="p4" runat="server" Visible="False"></p>
                        <label for="PLAZO_FIJO">A plazo fijo: </label>
                        <select name="txttipo" id="txtplazofijo" runat="server">
                            <option>Escoje un tipo</option>
                            <option value="1">Si</option>
                            <option value="0">No</option>
                        </select>
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
