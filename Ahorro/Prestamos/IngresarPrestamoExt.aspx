<%@ Page Title="" Language="C#" MasterPageFile="~/Prestamos/MPPrestamos.master" AutoEventWireup="true" CodeBehind="IngresarPrestamoExt.aspx.cs" Inherits="Ahorro.Prestamos.IngresarPrestamoExt" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <div id="ingresar_form">
        <form>
            <div>
                <ul>
                    <li>
                        <h2>Prestamos A Personas Externas</h2>
                        <span class="required_notification">* Datos requeridos</span>
                    </li>
                    <li>
                        <p id="p0" runat="server" Visible="False"></p>
                        <label for="ID_EXTERNO">ID P. Externa: </label>
                        <input type="text" ID="txtexterno" name="txtexterno" runat="server" placeholder="##" required/>
                        <span class="form_hint">Formato correcto: "#numero"</span>
                    </li>
                    <li>
                        <p id="p3" runat="server" Visible="False"></p>
                        <label for="ID_EMP_AVAL">ID empleado aval: </label>
                        <input type="text" ID="txtempAval" name="txtempAval" runat="server" placeholder="##" required/>
                        <span class="form_hint">Formato correcto: "#numero"</span>
                    </li>
                    <li>
                        <p id="p4" runat="server" Visible="False"></p>
                        <label for="PARENTESCO">Parentesco con aval: </label>
                        <input type="text" ID="txtparentesco" name="txtparentesco" runat="server" placeholder="relativo" required/>
                        <span class="form_hint">Formato correcto: "mama, hermano, etc"</span>
                    </li>
                    <li>
                        <p id="p1" runat="server" Visible="False"></p>
                        <label for="PERIODO">Periodos: </label>
                        <input type="text" ID="txtperiodo" name="txtperiodo" runat="server" required />
                    </li>
                     <li>
                        <p id="p2" runat="server" Visible="False"></p>
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
