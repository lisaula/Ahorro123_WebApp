<%@ Page Title="" Language="C#" MasterPageFile="~/Empleados/MPEmpleados.master" AutoEventWireup="true" CodeBehind="AdministrarEmpleados.aspx.cs" Inherits="Ahorro.Empleados.AdministrarEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHORRO123ConnectionString %>" SelectCommand="SP_EMPLEADOS_READ" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" 
            runat="server" 
            CellPadding="4" 
            ForeColor="#333333" 
            GridLines="None" 
            AutoGenerateColumns="False" 
            DataKeyNames="ID_EMPLEADO" 
            DataSourceID="SqlDataSource1" 
            Width="1004px" 
            AllowPaging="True" 
            AutoGenerateEditButton="True"
            OnRowEditing="GridView1_OnRowEditing">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ID_EMPLEADO" HeaderText="ID_EMPLEADO" InsertVisible="False" ReadOnly="True" SortExpression="ID_EMPLEADO" />
                <asp:BoundField DataField="ID_USUARIO" HeaderText="ID_USUARIO" SortExpression="ID_USUARIO" />
                <asp:BoundField DataField="PRIMER_NOMBRE" HeaderText="PRIMER_NOMBRE" SortExpression="PRIMER_NOMBRE" />
                <asp:BoundField DataField="PRIMER_APELLIDO" HeaderText="PRIMER_APELLIDO" SortExpression="PRIMER_APELLIDO" />
                <asp:BoundField DataField="FECHA_CONTRACION" HeaderText="FECHA_CONTRACION" SortExpression="FECHA_CONTRACION" />
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
