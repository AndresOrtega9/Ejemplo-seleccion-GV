<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/VerBus.aspx.cs" Inherits="Vista_VerBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 34%;
        }
        .auto-style11 {
            width: 33%;
        }
    	.auto-style12 {
			height: 23px;
			text-align: center;
			color: #000066;
			font-size: x-large;
		}
		.auto-style14 {
            font-weight: bold;
            font-size: small;
        }
    .auto-style15 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12" colspan="3">Sus Buses registrados</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3">
                <strong>
                <asp:GridView ID="GV_VerBus" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ODS_VerBusesAgencia" GridLines="Horizontal" OnSelectedIndexChanged="Page_Load" Width="100%" CssClass="auto-style14" AllowPaging="True" DataKeyNames="Id_placa">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="NombreTipoBus" HeaderText="TIPO BUS" SortExpression="NombreTipoBus" />
                        <asp:BoundField DataField="Capacidad" HeaderText="CAPACIDAD" SortExpression="Capacidad" />
                        <asp:BoundField DataField="Id_placa" HeaderText="NUMERO PLACA" SortExpression="Id_placa" />
                        <asp:BoundField DataField="Numero_interno" HeaderText="NUMERO INTERNO" SortExpression="Numero_interno" />
                        <asp:BoundField DataField="Tecnomecanica" HeaderText="TECNOMECANICA" SortExpression="Tecnomecanica" />
                        <asp:BoundField DataField="Soat" HeaderText="SOAT" SortExpression="Soat" />
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
                <asp:ObjectDataSource ID="ODS_VerBusesAgencia" runat="server" SelectMethod="ObtenerBusPorAgencia" TypeName="DAO_Buses">
                    <SelectParameters>
                        <asp:SessionParameter Name="nit" SessionField="agenciaNit" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3">
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
            </td>
            </tr>
    </table>
</asp:Content>

