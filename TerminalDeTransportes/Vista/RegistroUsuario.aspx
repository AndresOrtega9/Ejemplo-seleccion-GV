<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/RegistroUsuario.aspx.cs" Inherits="Vista_RegistroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
		.auto-style7 {
			height: 23px;
			width: 103px;
		}
		.auto-style9 {
			width: 25%;
		}
		.auto-style11 {
			width: 25%;
		}
		.auto-style13 {
			width: 25%;
		}
		.auto-style14 {
			width: 25%;
			height: 23px;
		}
		.auto-style15 {
			width: 25%
			;
		}
	.auto-style16 {
		height: 23px;
		text-align: center;
	}
	.auto-style18 {
		width: 25%;
		height: 26px;
	}
		.auto-style25 {
			width: 23%;
			height: 23px;
			text-align: center;
		}
		.auto-style27 {
			height: 33px;
			text-align: center;
		}
		.auto-style28 {
			width: 23%;
			height: 23px;
		}
		.auto-style29 {
			width: 23%;
			height: 26px;
		}
		.auto-style31 {
			font-size: large;
			color: #FF0000;
		}
		.auto-style32 {
			font-size: x-small;
			color: #FF0000;
		}
		.auto-style35 {
			width: 21%;
		}
		.auto-style36 {
			width: 21%;
			height: 23px;
		}
		.auto-style37 {
			width: 21%;
			height: 26px;
		}
	.auto-style38 {
		height: 23px;
		text-align: center;
		font-size: x-large;
		color: #000066;
	}
	    .auto-style39 {
            font-weight: bold;
            font-size: small;
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
		<tr>
			<td class="auto-style38" colspan="4">Ingrese los siguientes datos</td>
		</tr>
		<tr>
			<td class="auto-style28"></td>
			<td class="auto-style16" colspan="2">
				&nbsp;</td>
			<td class="auto-style14">
				&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style25">&nbsp;</td>
			<td class="auto-style36">Correo:</td>
			<td class="auto-style13">
				<strong>
				<asp:TextBox ID="TB_Correo" runat="server" BorderStyle="Inset" Width="100%" CssClass="auto-style39" TextMode="Email"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style15">
				<asp:RequiredFieldValidator ID="RV_Co" runat="server" ControlToValidate="TB_Correo" CssClass="auto-style31" ErrorMessage="*"></asp:RequiredFieldValidator>
				<strong>
				<asp:RegularExpressionValidator ID="REV_Correo1" runat="server" ControlToValidate="TB_Correo" CssClass="auto-style32" ErrorMessage="Entre 4 y 30 cáracteres" ValidationExpression="^.{4,30}$"></asp:RegularExpressionValidator>
				</strong></td>
		</tr>
		<tr>
			<td class="auto-style25">&nbsp;</td>
			<td class="auto-style36">Contraseña:</td>
			<td class="auto-style13">
				<strong>
				<asp:TextBox ID="TB_Contraseña" runat="server" BorderStyle="Inset" Width="100%" CssClass="auto-style39" TextMode="Password"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style15">
				<asp:RequiredFieldValidator ID="RV_Correo" runat="server" ControlToValidate="TB_Contraseña" CssClass="auto-style31" ErrorMessage="*"></asp:RequiredFieldValidator>
				<strong>
				<asp:RegularExpressionValidator ID="REV_Contraseña" runat="server" ControlToValidate="TB_Contraseña" CssClass="auto-style32" ErrorMessage="8 y 16 cáracteres" ValidationExpression="^.{4,16}$"></asp:RegularExpressionValidator>
				</strong></td>
		</tr>
		<tr>
			<td class="auto-style25"></td>
			<td class="auto-style36">Usuario:</td>
			<td class="auto-style14">
				<strong>
				<asp:TextBox ID="TB_UserName" runat="server" BorderStyle="Inset" Width="100%" CssClass="auto-style39"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style14">
				<asp:RequiredFieldValidator ID="RV_Usuario" runat="server" ControlToValidate="TB_UserName" CssClass="auto-style31" ErrorMessage="*"></asp:RequiredFieldValidator>
				<strong>
				<asp:RegularExpressionValidator ID="REV_UserName" runat="server" ControlToValidate="TB_UserName" CssClass="auto-style32" ErrorMessage="4 y 12 cáracteres" ValidationExpression="^.{4,12}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
		</tr>
		<tr>
			<td class="auto-style25">&nbsp;</td>
			<td class="auto-style36">Nombre:</td>
			<td class="auto-style13">
				<strong>
				<asp:TextBox ID="TB_Nombre" runat="server" BorderStyle="Inset" Width="100%" CssClass="auto-style39"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style15">
				<asp:RequiredFieldValidator ID="RV_Nombre" runat="server" ControlToValidate="TB_Nombre" CssClass="auto-style31" ErrorMessage="*"></asp:RequiredFieldValidator>
				<strong>
				<asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" CssClass="auto-style32" ErrorMessage="4 y 30 cáracteres" ValidationExpression="^.{4,20}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
		</tr>
		<tr>
			<td class="auto-style25"></td>
			<td class="auto-style36">Apellido:</td>
			<td class="auto-style14">
				<strong>
				<asp:TextBox ID="TB_Apellido" runat="server" BorderStyle="Inset" Width="100%" CssClass="auto-style39"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style14">
				<asp:RequiredFieldValidator ID="RV_Apellido" runat="server" ControlToValidate="TB_Apellido" CssClass="auto-style31" ErrorMessage="*"></asp:RequiredFieldValidator>
				<strong>
				<asp:RegularExpressionValidator ID="REV_Apellido" runat="server" ControlToValidate="TB_Apellido" CssClass="auto-style32" ErrorMessage="4 y 30 cáracteres" ValidationExpression="^.{4,30}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
		</tr>
		<tr>
			<td class="auto-style28"></td>
			<td class="auto-style36">Numero Cedula:</td>
			<td class="auto-style14">
				<strong>
				<asp:TextBox ID="TB_Cedula" runat="server" BorderStyle="Inset" Width="100%" TextMode="Number" CssClass="auto-style39"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style14">
				<asp:RequiredFieldValidator ID="RV_Cedula" runat="server" ControlToValidate="TB_Cedula" CssClass="auto-style31" ErrorMessage="*"></asp:RequiredFieldValidator>
				<strong>
				<asp:RegularExpressionValidator ID="REV_Cedula" runat="server" ControlToValidate="TB_Cedula" CssClass="auto-style32" ErrorMessage="8 y 10 cáracteres" ValidationExpression="^.{8,10}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
		</tr>
		<tr>
			<td class="auto-style29"></td>
			<td class="auto-style37">Tel/Celular:</td>
			<td class="auto-style18">
				<strong>
				<asp:TextBox ID="TB_Telefono" runat="server" BorderStyle="Inset" Width="100%" TextMode="Number" CssClass="auto-style39"></asp:TextBox>
			    </strong>
			</td>
			<td class="auto-style18">
				<asp:RequiredFieldValidator ID="RV_Telefono" runat="server" ControlToValidate="TB_Telefono" CssClass="auto-style31" ErrorMessage="*"></asp:RequiredFieldValidator>
				<strong>
				<asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" CssClass="auto-style32" ErrorMessage="7 y 10 cáracteres" ValidationExpression="^.{7,10}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
		</tr>
		<tr>
			<td class="auto-style25">&nbsp;</td>
			<td class="auto-style35">
				&nbsp;</td>
			<td class="auto-style15">&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style27" colspan="4">
				<strong>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="IB_Registro" runat="server" ImageUrl="~/Imagenes/verificar.png" OnClick="IB_Registro_Click" Width="50px" />
				</strong>
			</td>
		</tr>
		<tr>
			<td class="auto-style25">&nbsp;</td>
			<td class="auto-style36">&nbsp;</td>
			<td class="auto-style13">
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
            </td>
			<td class="auto-style15">&nbsp;</td>
		</tr>
		</table>
</asp:Content>

