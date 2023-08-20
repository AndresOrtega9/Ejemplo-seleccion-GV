<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/Vista_AgregarAgencia.aspx.cs" Inherits="Vista_VistaAgregarAgencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 27px;
        }
        .auto-style3 {
            text-align: right;
            width: 15%;
        }
        .auto-style4 {
            text-align: center;
            height: 27px;
            width: 10%;
        }
        .auto-style5 {
            text-align: right;
            width: 83px;
        }
        .auto-style6 {
            width: 15%;
        }
        .auto-style7 {
            width: 20%;
        }
        .auto-style9 {
        width: 10%;
        text-align: center;
    }
    	.auto-style15 {
			text-align: left;
			width: 15%;
		}
		.auto-style17 {
			text-align: center;
			height: 50px;
		}
		.auto-style19 {
			text-align: right;
			width: 25%;
			height: 23px;
		}
		.auto-style20 {
			text-align: left;
			width: 15%;
			height: 23px;
		}
    	.auto-style21 {
			color: #FF0000;
			font-size: large;
		}
		.auto-style22 {
		height: 27px;
		font-size: x-large;
		text-align: center;
		color: #000066;
		}
		.auto-style32 {
			font-size: x-small;
			color: #FF0000;
		}
		.auto-style33 {
            text-align: left;
            width: 25%;
            height: 23px;
        }
		.auto-style34 {
            font-weight: bold;
            font-size: small;
        }
		</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style22" colspan="4">Registre una Agencia</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">Nombre:</td>
            <td class="auto-style11">
                <strong>
                <asp:TextBox ID="TB_NombreAgencia" runat="server" Width="80%" BorderStyle="Inset" CssClass="auto-style34"></asp:TextBox>
            	</strong>
            	<asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" CssClass="auto-style21" ErrorMessage="*" ControlToValidate="TB_NombreAgencia"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11">
				<strong>
				<asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_NombreAgencia" CssClass="auto-style32" ErrorMessage="Entre 4 y 30 cáracteres" ValidationExpression="^.{4,30}$"></asp:RegularExpressionValidator>
				</strong>
                </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">NIT:</td>
            <td class="auto-style11">
                <strong>
                <asp:TextBox ID="TB_NitAgencia" runat="server" Width="80%" BorderStyle="Inset" CssClass="auto-style34"></asp:TextBox>
            	</strong>
            	<asp:RequiredFieldValidator ID="RFV_Nit" runat="server" CssClass="auto-style21" ErrorMessage="*" ControlToValidate="TB_NitAgencia"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11">
				<strong>
				<asp:RegularExpressionValidator ID="REV_Nit" runat="server" ControlToValidate="TB_NitAgencia" CssClass="auto-style32" ErrorMessage="No más de 10 cáracteres" ValidationExpression="^.{10}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style15">Correo:</td>
            <td class="auto-style11">
                <strong>
                <asp:TextBox ID="TB_CorreoAgencia" runat="server" Width="80%" BorderStyle="Inset" CssClass="auto-style34" TextMode="Email"></asp:TextBox>
            	</strong>
            	<asp:RequiredFieldValidator ID="RFV_Correo" runat="server" CssClass="auto-style21" ErrorMessage="*" ControlToValidate="TB_CorreoAgencia"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
				&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">Contraseña:</td>
            <td class="auto-style11">
                <strong>
                <asp:TextBox ID="TB_ContraseñaAgencia" runat="server" Width="80%" BorderStyle="Inset" CssClass="auto-style34" TextMode="Password"></asp:TextBox>
            	</strong>
            	<asp:RequiredFieldValidator ID="RFV_Contraseña" runat="server" CssClass="auto-style21" ErrorMessage="*" ControlToValidate="TB_ContraseñaAgencia"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style33">
				<strong>
				<asp:RegularExpressionValidator ID="REV_Contraseña" runat="server" ControlToValidate="TB_ContraseñaAgencia" CssClass="auto-style32" ErrorMessage="8 y 16 cáracteres" ValidationExpression="^.{4,16}$"></asp:RegularExpressionValidator>
				</strong></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
            </td>
            <td class="auto-style11">
                <strong>
                <asp:TextBox ID="TB_UserNameAgencia" runat="server" BorderStyle="Inset" Width="80%" CssClass="auto-style34"></asp:TextBox>
            	</strong>
            	<asp:RequiredFieldValidator ID="RFV_UserName" runat="server" CssClass="auto-style21" ErrorMessage="*" ControlToValidate="TB_UserNameAgencia"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11">
				<strong>
				<asp:RegularExpressionValidator ID="REV_Usuario" runat="server" ControlToValidate="TB_UserNameAgencia" CssClass="auto-style32" ErrorMessage="4 y 12 cáracteres" ValidationExpression="^.{4,12}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style15">Contacto:</td>
            <td class="auto-style11">
                <strong>
                <asp:TextBox ID="TB_Contacto" runat="server" Width="80%" BorderStyle="Inset" CssClass="auto-style34" TextMode="Number"></asp:TextBox>
            	</strong>
            	<asp:RequiredFieldValidator ID="RFV_Contacto" runat="server" CssClass="auto-style21" ErrorMessage="*" ControlToValidate="TB_Contacto"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
				<strong>
				<asp:RegularExpressionValidator ID="REV_Contacto" runat="server" ControlToValidate="TB_Contacto" CssClass="auto-style32" ErrorMessage="7-10 cáracteres" ValidationExpression="^.{7,10}$"></asp:RegularExpressionValidator>
				</strong>
			</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="4">
				<strong>
				&nbsp;&nbsp;
                <asp:ImageButton ID="IB_Agregar" runat="server" ImageUrl="~/Imagenes/verificar.png" OnClick="IB_Registro_Click" Width="50px" />
				</strong>
			</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="4">
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Regresar_Click" Width="50px" Height="25px" />
			</td>
        </tr>
        </table>
</asp:Content>

