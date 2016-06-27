<%@ Page Title="" Language="C#" MasterPageFile="~/Reportes/MPReportes.master" AutoEventWireup="true" CodeBehind="CierreAnual.aspx.cs" Inherits="Ahorro.Reportes.CierreAnual"EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <div id="ingresar_form">
        <form>
            <div>
                <ul>
                    <li>
                        <h2>Cierre anual</h2>
                        <span class="required_notification">* Datos requeridos</span>
                    </li>
                    <li>
                        <p id="p0" runat="server" Visible="False"></p>
                        <label for="YEAR">año: </label>
                        <input type="text" ID="txtyear" name="txtyear" runat="server" placeholder="##" required/>
                        <span class="form_hint">Formato correcto: "#numero"</span>
                    </li>
                    <li>
                        <button class="boton" name="Generar" type="button" value="Generar" runat="server" OnServerClick="Generar_OnServerClick">Generar</button>
                        <button class="boton" type="reset" name="reset" value="Reset" runat="server" OnServerClick="reset_OnServerClick">Reset</button>
                    </li>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHORRO123ConnectionString %>" SelectCommand="SP_R_CIERRE_ANUAL" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtyear" Name="YEAR" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </ul>
            </div>
        </form>
    </div>
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1009px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ID_EMPLEADO" HeaderText="ID_EMPLEADO" SortExpression="ID_EMPLEADO" />
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="INVERSION_TOTAL" HeaderText="INVERSION_TOTAL" SortExpression="INVERSION_TOTAL" />
                            <asp:BoundField DataField="PORC_GANANCIA" HeaderText="PORC_GANANCIA" SortExpression="PORC_GANANCIA" />
                            <asp:BoundField DataField="GANANCIA" HeaderText="GANANCIA" SortExpression="GANANCIA" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView> 
</asp:Content>
