<%@ Page Title="" Language="C#" MasterPageFile="~/Abono/MPAbono.master" AutoEventWireup="true" CodeBehind="VerAbonos.aspx.cs" Inherits="Ahorro.Abono.VerAbonos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHORRO123ConnectionString %>" SelectCommand="SP_ABONOS_READ" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_ABONO,ID_CUENTA" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1005px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID_ABONO" HeaderText="ID_ABONO" ReadOnly="True" SortExpression="ID_ABONO" />
            <asp:BoundField DataField="ID_CUENTA" HeaderText="ID_CUENTA" ReadOnly="True" SortExpression="ID_CUENTA" />
            <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
            <asp:BoundField DataField="COMENTARIO" HeaderText="COMENTARIO" SortExpression="COMENTARIO" />
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
