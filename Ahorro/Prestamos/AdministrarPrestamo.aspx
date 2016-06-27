<%@ Page Title="" Language="C#" MasterPageFile="~/Prestamos/MPPrestamos.master" AutoEventWireup="true" CodeBehind="AdministrarPrestamo.aspx.cs" Inherits="Ahorro.Prestamos.AdministrarPrestamo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHORRO123ConnectionString %>" SelectCommand="SP_PRESTAMOS_READ" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_PRESTAMO" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1008px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID_PRESTAMO" HeaderText="ID_PRESTAMO" InsertVisible="False" ReadOnly="True" SortExpression="ID_PRESTAMO" />
            <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" SortExpression="PERIODO" />
            <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
            <asp:BoundField DataField="FECHA_CREO" HeaderText="FECHA_CREO" SortExpression="FECHA_CREO" />
            <asp:BoundField DataField="SALDO" HeaderText="SALDO" SortExpression="SALDO" />
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
