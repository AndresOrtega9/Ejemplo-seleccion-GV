<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/VerAgencias_Admin.aspx.cs" Inherits="Vista_VerAgencias_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
        font-weight: bold;
            font-size: small;
        }
    .auto-style15 {
        height: 23px;
        font-size: xx-large;
        color: #000066;
        text-align: center;
    }
    .auto-style16 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">Agencias registradas </td>
            <strong>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            </tr>
        <tr>
            <td><strong><em>
                <asp:GridView ID="GV_VerAgenciasAdmin" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ODS_VerAgencias_Admin" GridLines="Horizontal" Width="100%" CssClass="auto-style14">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" SortExpression="Nombre" />
                        <asp:BoundField DataField="Nit" HeaderText="NIT" SortExpression="Nit" />
                        <asp:BoundField DataField="User_name" HeaderText="USUARIO" SortExpression="User_name" />
                        <asp:BoundField DataField="Correo" HeaderText="CORREO" SortExpression="Correo" />
                        <asp:BoundField DataField="Contraseña" HeaderText="CONTRASEÑA" SortExpression="Contraseña" />
                        <asp:BoundField DataField="Telefono" HeaderText="TELEFONO" SortExpression="Telefono" />
                        <asp:CommandField HeaderText="OPCIONES" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="ODS_VerAgencias_Admin" runat="server" SelectMethod="VerAgenciasAdmin" TypeName="DAO_Agencia" DataObjectTypeName="E_Agencia" DeleteMethod="eliminarAgencia" UpdateMethod="editarAgencia"></asp:ObjectDataSource>
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

