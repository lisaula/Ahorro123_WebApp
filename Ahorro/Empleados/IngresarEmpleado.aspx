<%@ Page Title="" Language="C#" MasterPageFile="~/Empleados/MPEmpleados.master" AutoEventWireup="true" CodeBehind="IngresarEmpleado.aspx.cs" Inherits="Ahorro.Empleados.IngresarEmpleado" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <body>
    <div id="ingresar_form">
        <form>      
            <div>
                <ul>
                    <li>
                        <h2>Empleados</h2>
                        <span class="required_notification">* Datos requeridos</span>
                    </li>
                    <li>
                        <label for="ID_USUARIO">Email de usuario: </label>
                        <input type="text" ID="txtusu" runat="server" placeholder="prueba@test.com" required/>
                        <span class="form_hint">Formato correcto: "name@something.com"</span>
                    </li>
                    <li>
                        <p id="p0" runat="server" Visible="False">nada</p>
                        <label for="EMAIL_SECUNDARIO">Email secundario: </label>
                        <input type="text" ID="txt2email" runat="server"  placeholder="prueba@test.com" ></input>
                        <span class="form_hint">Formato correcto: "name@something.com"</span>
                    </li>
                    <li>
                        <p id="p" runat="server" Visible="False">nada</p>
                        <label for="PRIMER_NOMBRE">Primer nombre: </label>
                        <input type="text" ID="txtpnombre" name="txtpnombre" runat="server" required/>
                    </li>
                    <li>
                        <p id="p1" runat="server" Visible="False">nada</p>
                        <label for="SEGUNDO_NOMBRE">Segundo nombre: </label>
                        <input type="text" ID="txtsnombre" runat="server" />
                    </li>
                    <li>
                        <p id="p2" runat="server" Visible="False">nada</p>
                        <label for="PRIMER_APELLIDO">Primer apellido: </label>
                        <input type="text" ID="txtpapellido" runat="server"  required/>
                    </li>
                    <li>
                        <p id="p3" runat="server" Visible="False">nada</p>
                        <label for="SEGUNDO_APELLIDO">Segundo apellido: </label>
                        <input type="text" ID="txtsapellido" runat="server" />
                    </li>
                    <li>
                        <p id="p4" runat="server" Visible="False">nada</p>
                        <label for="FECHA_NAC">Fecha de nacimiento: </label>
                        <input type="date" ID="txtfecnac" runat="server" />
                    </li>
                    <li>
                        <p id="p5" runat="server" Visible="False">nada</p>
                        <label for="CALLE">Calle: </label>
                        <input type="text" ID="txtcalle" runat="server" />
                    </li>
                    <li>
                        <p id="p6" runat="server" Visible="False">nada</p>
                        <label for="CIUDAD">Ciudad: </label>
                        <input type="text" ID="txtciudad" runat="server" />
                    </li>
                    <li>
                        <p id="p7" runat="server" Visible="False">nada</p>
                        <label for="AVENIDA">Avenida: </label>
                        <input type="text" ID="txtavenida" runat="server" />
                    </li>
                    <li>
                        <p id="p8" runat="server" Visible="False">nada</p>
                        <label for="NUM_CASA">Numero de casa: </label>
                        <input type="text" ID="txtnumcasa" runat="server" />
                    </li>
                    <li>
                        <p id="p9" runat="server" Visible="False">nada</p>
                        <label for="DEPARTAMENTO">Departamento: </label>
                        <input type="text" ID="txtdepartamento" runat="server" />
                    </li>
                    <li>
                        <p id="p10" runat="server" Visible="False">nada</p>
                        <label for="FECHA_CONTRACION">Fecha de contratación: </label>
                        <input type="date" ID="txtfeccontra" runat="server" />
                    </li>
                    <li>
                        <p id="p11" runat="server" Visible="False">nada</p>
                        <label for="REFERENCIA">Referencia: </label>
                        <textarea ID="txtreferencia" cols="10" rows="6" runat="server" ></textarea>
                    </li>
                    <li>
                        <button class="boton" name="Guardar" type="button" value="Guardar" runat="server" OnServerClick="Guardar_OnServerClick">Guardar</button>
                        <button class="boton" type="reset" name="reset" value="Reset" runat="server" OnServerClick="reset_OnServerClick">Reset</button>
                    </li>
                </ul>
            </div>
            
        </form>
        <script type="text/javascript">
            /*window.onload = function checkInput(some) {
                //$('#link').attr('value', 'new value');
                $("input[name=txtpnombre]").change(function () {
                    alert($('input[name=txtpnombre]').val());
                });*/
                //console.log($("#txtpnombre").val);
                //var ssio = document.getElementById('txtpnombre').value;
                //console.log(ssio);
            //}
            $(".txtpnombre").val("nombe")
            /*$(document).ready(function() {
                $("input[name=txtpnombre]").change(function () {
                    alert($('input[name=txtpnombre]').val());
                });
            });*/
            /*$('#txtpnombre').bind('keyup', function () {
                var obj = this;
                $('#txtpnombre').each(function () {
                    console.log($(obj).val());
                });
            });*/
        </script>
    </div>
       
    </body>
</asp:Content>
