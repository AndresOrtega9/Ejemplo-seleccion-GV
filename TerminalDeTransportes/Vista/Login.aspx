<%@ Page Title="Tu Ticket" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/Login.aspx.cs" Inherits="Vista_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 33%;
        }
        .auto-style13 {
            width: 33%;
        }
        .auto-style14 {
            width: 33%;
        }
        .auto-style15 {
            width: 250px;
        }
        .auto-style16 {
            width: 250px;
            text-align: center;
        }
        .auto-style20 {
            background-color: #000066;
        }
		.auto-style34 {
			color: #FFFFFF;
			text-decoration: underline;
			font-size: small;
		}
		.auto-style35 {
            width: 250px;
            font-size: x-large;
            color: #000066;
            background-color: #FFFFFF;
        }
        .auto-style36 {
            color: #FFFFFF;
        }
        .auto-style37 {
            font-weight: bold;
            color: #000066;
        }
        .auto-style38 {
            color: #FF0000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13" rowspan="3">
                <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate1" TextLayout="TextOnTop" BorderColor="White" BorderStyle="Inset" CssClass="auto-style20">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td class="auto-style20">
                                    <table cellpadding="0">
                                        <tr>
                                            <td align="center" class="auto-style35"><strong>Iniciar sesión</strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><strong>
                                                &nbsp;
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="auto-style36">Usuario:</asp:Label>
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">
                                                <asp:TextBox ID="UserName" runat="server" BorderColor="White" BorderStyle="Inset"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" CssClass="auto-style38" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><strong>
                                                &nbsp;
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="auto-style36">Contraseña:</asp:Label>
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password" BorderColor="White" BorderStyle="Inset"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" CssClass="auto-style38" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><strong>
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo" CssClass="auto-style36" />
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">
                                                <strong>
                                                <asp:Button ID="LoginButton" runat="server" BorderColor="White" BorderStyle="Inset" CommandName="Login" CssClass="auto-style37" Height="30px" OnClick="LoginButton_Click" Text="Inicio de sesión" ValidationGroup="Login1" Width="65%" />
                                                </strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16"><strong>
                                                <asp:Button ID="LB_Registro" runat="server" BorderColor="White" BorderStyle="Inset" CssClass="auto-style37" Height="30px" OnClick="Registro" Text="Registrarme" Width="65%" />
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16"><strong>
                                                <asp:HyperLink ID="HL_Recuperar" runat="server" CssClass="auto-style34" NavigateUrl="~/Vista/RecuperarContrasena.aspx" Width="60%">Olvidé mi contraseña</asp:HyperLink>
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style16">&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:Login>
            </td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

