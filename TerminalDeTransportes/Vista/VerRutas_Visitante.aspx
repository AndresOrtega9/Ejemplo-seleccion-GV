<%@ Page Title="Disponibilidad de viajes" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/VerRutas_Visitante.aspx.cs" Inherits="Vista_VerRutas_Visitante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
		.auto-style16 {
			font-size: x-large;
			color: #000066;
			text-align: center;
		}
		.auto-style37 {
            height: 23px;
            width: 2%;
        }
        .auto-style38 {
            margin-left: 0px;
        }
        .auto-style40 {
            height: 23px;
            width: 1%;
        }
        .auto-style42 {
            font-size: small;
            font-weight: bold;
        }
        .auto-style48 {
            font-size: large;
            color: #000000;
            text-align: center;
        }
        .auto-style52 {
            width: 25%;
            height: 23px;
            text-align: center;
        }
	    .auto-style54 {
            width: 25%;
            height: 23px;
            text-align: center;
            color: #000066;
            font-size: large;
        }
        .auto-style55 {
            font-size: x-large;
            color: #000066;
            text-align: center;
            width: 26%;
        }
        .auto-style56 {
            font-size: large;
            color: #000000;
            text-align: center;
            width: 26%;
        }
        .auto-style58 {
            width: 26%;
            height: 23px;
            text-align: center;
            color: #000066;
            font-size: large;
        }
        .auto-style59 {
            width: 26%;
        }
        .auto-style61 {
           width: 25%;
            height: 23px;
            text-align: center;
            color: #000066;
            font-size: large;
        }
	    .auto-style62 {
            font-size: x-large;
            color: #FF0000;
            text-align: center;
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
		<tr>
			<td class="auto-style16" colspan="6"><strong>Consulte la disponibilidad de su próximo destino</strong></td>
		</tr>
		<tr>
			<td class="auto-style55">&nbsp;</td>
			<td class="auto-style16" colspan="4">&nbsp;</td>
			<td class="auto-style16">&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style56">&nbsp;</td>
			<td class="auto-style62" colspan="4"><strong>Su viaje será:</strong></td>
			<td class="auto-style48">&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style58">&nbsp;</td>
			<td class="auto-style54"><strong>Entre:</strong></td>
			<td class="auto-style40">&nbsp;</td>
			<td class="auto-style37">&nbsp;</td>
			<td class="auto-style54"><strong>&amp;:</strong></td>
			<td class="auto-style54">
				<asp:ImageButton ID="IB_Buscar0" runat="server" BorderStyle="None" ImageUrl="~/Imagenes/lupa.png" OnClick="IB_Buscar_Click" Width="50px" />
			</td>
		</tr>
		<tr>
			<td class="auto-style58">&nbsp;</td>
			<td class="auto-style7">
				<strong>
				<asp:TextBox ID="TB_Fecha1" runat="server" BorderStyle="Inset" TextMode="DateTimeLocal" Width="100%"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style40">&nbsp;</td>
			<td class="auto-style37">&nbsp;</td>
			<td class="auto-style7">
				<strong>
				<asp:TextBox ID="TB_Fecha2" runat="server" BorderStyle="Inset" TextMode="DateTimeLocal" Width="100%" CssClass="auto-style38"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style7">
				&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style58">&nbsp;</td>
			<td class="auto-style7">
				&nbsp;</td>
			<td class="auto-style40">&nbsp;</td>
			<td class="auto-style37">&nbsp;</td>
			<td class="auto-style7">
				&nbsp;</td>
			<td class="auto-style7">
				&nbsp;</td>
		</tr>
		<tr>
			<td colspan="6">
				<strong>
				<asp:GridView ID="GV_Viajes" runat="server" Width="100%" OnSelectedIndexChanged="GV_Viajes_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="ODS_VistaViajes" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="auto-style42" EmptyDataText="Nada que ver por ahora." Font-Bold="True">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="NombreAgencia" HeaderText="NOMBRE AGENCIA " SortExpression="NombreAgencia" />
                        <asp:BoundField DataField="NombreOrigen" HeaderText="ORIGEN" SortExpression="NombreOrigen" />
                        <asp:BoundField DataField="NombreDestino" HeaderText="DESTINO" SortExpression="NombreDestino" />
                        <asp:BoundField DataField="Fecha" HeaderText="FECHA DEL VIAJE" SortExpression="Fecha" DataFormatString= {0:M-dd-yyyy} />
                        <asp:BoundField DataField="NombreTipoBus" HeaderText="TIPO DE BUS" SortExpression="NombreTipoBus" />
                        <asp:BoundField DataField="Capacidad" HeaderText="CAPACIDAD" SortExpression="Capacidad" />
                        <asp:BoundField DataField="Id_placa" HeaderText="N° PLACA BUS" SortExpression="Id_placa" />
                        <asp:BoundField DataField="Precio_viaje" HeaderText="PRECIO DEL VIAJE" SortExpression="Precio_viaje"    DataFormatString={0:C0} />
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
			    <asp:ObjectDataSource ID="ODS_VistaViajes" runat="server" SelectMethod="obtenerViajes_Visitante" TypeName="DAO_Viaje">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TB_Fecha1" Name="fechaInicio" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TB_Fecha2" Name="fechaFin" PropertyName="Text" Type="DateTime" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </strong>
            </td>
		</tr>
		<tr>
			<td class="auto-style59">
				&nbsp;</td>
			<td colspan="4">
				&nbsp;</td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style61">&nbsp;</td>
			<td class="auto-style52">&nbsp;</td>
			<td class="auto-style9" colspan="2">
                <asp:ImageButton ID="IB_Reservar" runat="server" ImageUrl="~/Imagenes/reservar_icono.png" OnClick="IB_Reservar_Click" Width="50px" />
                            </td>
			<td class="auto-style7"></td>
			<td class="auto-style7">&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style61">&nbsp;</td>
			<td class="auto-style52">&nbsp;</td>
			<td class="auto-style9" colspan="2">
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
            </td>
			<td class="auto-style7">&nbsp;</td>
			<td class="auto-style7">&nbsp;</td>
		</tr>
		</table>
</asp:Content>

