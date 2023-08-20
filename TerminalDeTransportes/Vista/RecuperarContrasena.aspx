<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/RecuperarContrasena.aspx.cs" Inherits="Vista_RecuperarContrasena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
		.auto-style18 {
		font-weight: bold;
		color: #000066;
		background-color: #FFFFFF;
	}
		.auto-style20 {
			font-size: large;
		}
		.auto-style22 {
			font-size: x-large;
			color: #000066;
			text-align: center;
			background-color: #000066;
		}
		.auto-style23 {
			font-size: medium;
		}
		.auto-style24 {
			color: #FFFFFF;
		}
		.auto-style25 {
			font-size: medium;
			color: #FFFFFF;
		}
	.auto-style26 {
		font-size: x-large;
		color: #000066;
		text-align: center;
		background-color: #FFFFFF;
		    height: 40px;
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
		<tr>
			<td class="auto-style26">Correo de recuperación</td>
		</tr>
		<tr>
			<td class="auto-style22"><strong><em>
				<br />
				</em></strong><span class="auto-style23"><span class="auto-style24">Correo: </span></span>
				<asp:TextBox ID="TB_Correo" runat="server" BorderStyle="Inset" Width="50%"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ControlToValidate="TB_Correo" CssClass="auto-style20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
				<strong>
				<br />
				<br />
				<asp:Button ID="B_Recuperar" runat="server" CssClass="auto-style18" Text="RECUPERAR" OnClick="B_Recuperar_Click" />
				<br />
				<br />
				</strong>
				<asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style25"></asp:Label>
			    <br />
                <br />
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
			</td>
		</tr>
		</table>
</asp:Content>

