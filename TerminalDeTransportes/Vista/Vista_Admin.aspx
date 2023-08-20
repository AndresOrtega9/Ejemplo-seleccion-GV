<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/Vista_Admin.aspx.cs" Inherits="Vista_Vista_Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 49px;
        }
        .auto-style5 {
            width: 20%;
        }
        .auto-style7 {
            width: 215px;
        }
        .auto-style9 {
            text-align: center;
            height: 40px;
        }
    	.auto-style17 {
			text-align: center;
			height: 49px;
			width: 25%;
			font-size: x-large;
			color: #000066;
		}
		.auto-style24 {
            width: 100%;
        }
        .auto-style36 {
            font-size: xx-large;
            color: #FF0000;
        }
        .auto-style37 {
            height: 23px;
            width: 381px;
            text-align: center;
            font-size: small;
        color: #000066;
    }
        .auto-style38 {
            width: 33%;
        }
        .auto-style39 {
            height: 23px;
            width: 162px;
            text-align: center;
            font-size: small;
        color: #000066;
    }
        .auto-style40 {
            width: 162px;
        }
        .auto-style41 {
            width: 33%;
            text-align: center;
        }
        .auto-style42 {
            width: 162px;
            text-align: center;
        }
        .auto-style43 {
            height: 23px;
            width: 154px;
        font-size: small;
        text-align: center;
        color: #000066;
    }
        .auto-style44 {
            width: 33%;
        }
    .auto-style45 {
        font-size: xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style17"><span class="auto-style45">Bienvenido,</span><em><span class="auto-style45">&nbsp;</span></em><strong><asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style36" Text="*"></asp:Label>
                </strong>!</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style37">
                            &nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">
                            <strong>Ver Agencias</strong></td>
                        <td class="auto-style39"><strong>Registrar Viaje</strong></td>
                        <td class="auto-style43"><strong>Cerrar Sesión</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style41">
                            <asp:ImageButton ID="IB_VerAgencias" runat="server" ImageUrl="~/Imagenes/ojo.png" Width="50px" OnClick="IB_VerAgencias_Click" />
                        </td>
                        <td class="auto-style42">
                            <asp:ImageButton ID="IB_AgregarAgencias" runat="server" ImageUrl="~/Imagenes/mas.png" Width="50px" OnClick="IB_AgregarAgencias_Click" />
                        </td>
                        <td class="auto-style41">
                            <asp:ImageButton ID="IB_CerrarSesion" runat="server" ImageUrl="~/Imagenes/cerrar-sesion.png" Width="50px" OnClick="IB_CerrarSesion_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style40">&nbsp;</td>
                        <td class="auto-style44">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>