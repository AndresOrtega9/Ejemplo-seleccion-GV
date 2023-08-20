<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/RegistrarViaje.aspx.cs" Inherits="Vista_RegistrarViaje" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
		.auto-style12 {
			width: 25%;
		}
		.auto-style13 {
			width: 25%;
		}
		.auto-style14 {
			width: 25%;
		}
		.auto-style15 {
			width: 25%;
		}
		.auto-style16 {
			color: #000066;
			font-size: x-large;
			text-align: center;
           
        }
		.auto-style18 {
			text-align: center;
			
		}
		.auto-style19 {
			width: 25%;
		
		}
	.auto-style20 {
        text-align: center;
    }
	    .auto-style22 {
            color: #FF0000;
            font-size: x-small;
        }
	    .auto-style23 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style24 {
            width: 25%;
          
        }
	    .auto-style25 {
            font-weight: bold;
            font-size: small;
        }
        .auto-style26 {
            font-weight: bold;
            font-size: medium;
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
		<tr>
			<td class="auto-style16" colspan="4">Registre un Viaje</td>
		</tr>
		<tr>
			<td class="auto-style7"></td>
			<td class="auto-style7"></td>
			<td class="auto-style7"></td>
		</tr>
		<tr>
			<td class="auto-style24">&nbsp;</td>
			<td class="auto-style24">
				NIT Agencia</td>
			<td class="auto-style24">
				<strong>
				<asp:DropDownList ID="DDL_Agencias" runat="server" Width="100%" DataSourceID="ODS_AsignaAgenciaViaje" DataTextField="Nombre" DataValueField="Nit" OnSelectedIndexChanged="cambio" OnTextChanged="cambio" AutoPostBack="True" CssClass="auto-style25">
				</asp:DropDownList>
				</strong>
				<asp:ObjectDataSource ID="ODS_AsignaAgenciaViaje" runat="server" SelectMethod="VerAgenciasAdmin" TypeName="DAO_Agencia">
                </asp:ObjectDataSource>
			</td>
			<td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DDL_Agencias" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
		</tr>
		<tr>
			<td class="auto-style12">&nbsp;</td>
			<td class="auto-style13">
				N° Placa bus</td>
			<td class="auto-style15">
				<strong>
				<asp:DropDownList ID="DDL_PlacaBus" runat="server" Width="100%" DataSourceID="ODS_ObtenerBusPlaca" DataTextField="Id_placa" DataValueField="Id_placa" AutoPostBack="True" OnSelectedIndexChanged="DDL_PlacaBus_SelectedIndexChanged" CssClass="auto-style25">
				</asp:DropDownList>
				</strong>
				<asp:ObjectDataSource ID="ODS_ObtenerBusPlaca" runat="server" SelectMethod="Obtener_Buses" TypeName="DAO_Buses">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DDL_Agencias" Name="nit" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
			</td>
			<td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDL_PlacaBus" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
		</tr>
		<tr>
			<td class="auto-style24">&nbsp;</td>
			<td class="auto-style24">
				<asp:Label ID="L_Origen" runat="server" Text="Origen:"></asp:Label>
			</td>
			<td class="auto-style24">
				<strong>
				<asp:DropDownList ID="DDL_Origen" runat="server" Width="100%" DataSourceID="ODS_Origen" DataTextField="Nombre" DataValueField="Id" CssClass="auto-style25">
				</asp:DropDownList>
				</strong>
				<asp:ObjectDataSource ID="ODS_Origen" runat="server" SelectMethod="Obtener_Lugares" TypeName="DAO_Lugares"></asp:ObjectDataSource>
			</td>
			<td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDL_Origen" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
		</tr>
		<tr>
			<td class="auto-style7">&nbsp;</td>
			<td class="auto-style7">
				<asp:Label ID="L_Destino" runat="server" Text="Destino:"></asp:Label>
			</td>
			<td class="auto-style7">
				<strong>
				<asp:DropDownList ID="DDL_Destino" runat="server" Width="100%" DataSourceID="ODS_Destino" DataTextField="Nombre" DataValueField="Id" CssClass="auto-style25">
				</asp:DropDownList>
				</strong>
				<asp:ObjectDataSource ID="ODS_Destino" runat="server" SelectMethod="Obtener_Lugares" TypeName="DAO_Lugares"></asp:ObjectDataSource>
			</td>
			<td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDL_Destino" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
		</tr>
		<tr>
			<td class="auto-style7">&nbsp;</td>
			<td class="auto-style7">
				<asp:Label ID="L_FViaje" runat="server" Text="Fecha de Viaje:"></asp:Label>
			</td>
			<td class="auto-style7">
				<strong>
				<asp:TextBox ID="TB_Fecha" runat="server" BorderStyle="Inset" TextMode="Date" Width="100%" CssClass="auto-style26"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Fecha" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
		</tr>
		<tr>
			<td class="auto-style7">&nbsp;</td>
			<td class="auto-style7">
				<asp:Label ID="L_PrecioViaje" runat="server" Text="Valor C/u:"></asp:Label>
			</td>
			<td class="auto-style7">
				<strong>
				<asp:TextBox ID="TB_PrecioViaje" runat="server" BorderStyle="Inset" Width="100%" CssClass="auto-style25" TextMode="Number"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_PrecioViaje" CssClass="auto-style23" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TB_PrecioViaje" CssClass="auto-style22" ErrorMessage="Valor fuera de rango" ValidationExpression="^.{4,6}$"></asp:RegularExpressionValidator>
                </td>
		</tr>
		<tr>
			<td class="auto-style7">&nbsp;</td>
			<td class="auto-style7">
				&nbsp;</td>
			<td class="auto-style7">
				&nbsp;</td>
			<td class="auto-style7">&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style19"></td>
			<td class="auto-style18" colspan="2">
				&nbsp;&nbsp;&nbsp;
				<asp:ImageButton ID="IB_Guardar" runat="server" BorderStyle="None" ImageUrl="~/Imagenes/verificar.png" OnClick="IB_Guardar_Click" Width="50px" />
			</td>
			<td class="auto-style19"></td>
		</tr>
		<tr>
			<td class="auto-style12">&nbsp;</td>
			<td class="auto-style20" colspan="2"><strong>
                &nbsp;<asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
                </strong></td>
			<td class="auto-style14">&nbsp;</td>
		</tr>
	</table>
</asp:Content>

