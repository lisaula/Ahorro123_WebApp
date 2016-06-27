<%@ Page Title="" Language="C#" MasterPageFile="~/Cuentas/MPCuentas.master" AutoEventWireup="true" CodeBehind="AdministrarCuentas.aspx.cs" Inherits="Ahorro.Cuentas.AdministrarCuentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHORRO123ConnectionString %>" SelectCommand="SP_CUENTAS_READ" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="ID_CUENTA" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1003px" OnRowEditing="GridView1_OnRowEditing">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID_CUENTA" HeaderText="ID_CUENTA" InsertVisible="False" ReadOnly="True" SortExpression="ID_CUENTA" />
            <asp:BoundField DataField="ID_EMPLEADO" HeaderText="ID_EMPLEADO" SortExpression="ID_EMPLEADO" />
            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
            <asp:BoundField DataField="FECHA_APERTURA" HeaderText="FECHA_APERTURA" SortExpression="FECHA_APERTURA" />
            <asp:BoundField DataField="SALDO" HeaderText="SALDO" SortExpression="SALDO" />
            <asp:BoundField DataField="MONTO_ANUAL" HeaderText="MONTO_ANUAL" SortExpression="MONTO_ANUAL" />
            <asp:BoundField DataField="PLAZO_FIJO" HeaderText="PLAZO_FIJO" SortExpression="PLAZO_FIJO" />
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
