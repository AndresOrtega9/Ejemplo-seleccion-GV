<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/VerViajesAgencia.aspx.cs" Inherits="Vista_VerViajesAgencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 25%
        }
        .auto-style13 {
            width: 25%;
        }
    .auto-style14 {
        font-size: x-large;
        text-align: center;
        color: #000066;
    }
    .auto-style15 {
        text-align: center;
    }
        .auto-style16 {
            font-size: small;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style14" colspan="2">Sus viajes registrados</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
                <asp:GridView ID="GV_VerViajesAgencia" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id_viaje" DataSourceID="ODS_VerViajesAgencia" EmptyDataText="Nada que ver por ahora." GridLines="Horizontal" Width="100%" CssClass="auto-style16">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Nombre_agencia" HeaderText="Nombre Agencia" SortExpression="Nombre_agencia" />
                        <asp:BoundField DataField="NombreOrigen" HeaderText="Origen" SortExpression="NombreOrigen" />
                        <asp:BoundField DataField="NombreDestino" HeaderText="Destino" SortExpression="NombreDestino" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha de Viaje" SortExpression="Fecha" />
                        <asp:BoundField DataField="NombreTipoBus" HeaderText="Tipo de Bus" SortExpression="NombreTipoBus" />
                        <asp:BoundField DataField="Aforo" HeaderText="Cantidad de sillas" SortExpression="Aforo" />
                        <asp:BoundField DataField="Id_placa" HeaderText="N° Placa Bua" SortExpression="Id_placa" />
                        <asp:BoundField DataField="Numero_interno" HeaderText="N° Interno" SortExpression="Numero_interno" />
                        <asp:BoundField DataField="Precio_viaje" HeaderText="Precio pasaje" SortExpression="Precio_viaje" />
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
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2">
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ObjectDataSource ID="ODS_VerViajesAgencia" runat="server" SelectMethod="ObtenerViajesAgencia" TypeName="DAO_Viaje">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="agenciaNit" Name="nit" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

