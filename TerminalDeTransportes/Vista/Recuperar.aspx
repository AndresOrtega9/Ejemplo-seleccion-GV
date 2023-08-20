<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/Recuperar.aspx.cs" Inherits="Vista_Recuperar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
		.auto-style16 {
		color: #000066;
		font-weight: bold;
		background-color: #FFFFFF;
	}
		.auto-style20 {
			font-size: large;
		}
		.auto-style22 {
			font-size: large;
			text-align: center;
			color: #000066;
			background-color: #000066;
		}
		.auto-style23 {
			text-decoration: underline;
			font-size: medium;
			color: #FFFFFF;
		}
		.auto-style26 {
			font-size: medium;
			color: #FFFFFF;
		}
	.auto-style27 {
		font-size: large;
		text-align: center;
		color: #000066;
		background-color: #FFFFFF;
	}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
		<tr>
			<td class="auto-style27">Cambio de contraseña</td>
		</tr>
		<tr>
			<td class="auto-style22"><strong><em>
				<br />
				</em></strong><span class="auto-style26">Su nueva contraseña:</span>
				<asp:TextBox ID="TB_NuevaContraseña" runat="server" BorderStyle="Inset" Width="30%" BorderColor="White"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RFV_Nueva" runat="server" ControlToValidate="TB_NuevaContraseña" CssClass="auto-style20" ErrorMessage="*" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
				<br />
				<span class="auto-style26">Confirme contraseña:</span>
				<asp:TextBox ID="TB_ConfirmarContraseña" runat="server" BorderStyle="Inset" Width="30%" BorderColor="White"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RFV_Confirmar" runat="server" ControlToValidate="TB_ConfirmarContraseña" CssClass="auto-style20" ErrorMessage="*" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
				<strong>
				<br />
				<br />
				<asp:Button ID="B_GuardarNuevaContraseña" runat="server" CssClass="auto-style16" Text="GUARDAR" OnClick="B_GuardarNuevaContraseña_Click" style="height: 26px" BorderColor="White" />
				<br />
				<br />
				<asp:CompareValidator ID="CV_Contraseña" runat="server" ControlToCompare="TB_NuevaContraseña" ControlToValidate="TB_ConfirmarContraseña" ErrorMessage="Las contraseñas no coinciden" CssClass="auto-style23"></asp:CompareValidator>
				<br />
                <br />
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
				</strong></td>
		</tr>
		</table>
</asp:Content>

