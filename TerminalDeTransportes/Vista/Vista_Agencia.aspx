<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/Vista_Agencia.aspx.cs" Inherits="Vista_Agencia" %>

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
            width: 20%;
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
            width: 155px;
            text-align: center;
            font-size: small;
            color: #000066;
        }
        .auto-style38 {
            width: 25%;
        }
        .auto-style40 {
            width: 25%;
        }
        .auto-style41 {
            width: 155px;
            text-align: center;
            height: 54px;
        }
        .auto-style45 {
            font-size: xx-large;
        }
        .auto-style46 {
            height: 54px;
            width: 116px;
        text-align: center;
    }
        .auto-style48 {
            height: 23px;
            width: 89px;
            text-align: center;
            font-size: small;
            color: #000066;
        }
        .auto-style49 {
            width: 89px;
            text-align: center;
            height: 54px;
        }
        .auto-style50 {
            width: 25%;
        }
        .auto-style51 {
            height: 23px;
            width: 148px;
            text-align: center;
            font-size: small;
            color: #000066;
        }
        .auto-style52 {
            width: 148px;
            text-align: center;
            height: 54px;
        }
        .auto-style53 {
            width: 25%;
        }
    .auto-style54 {
        width: 25%;
        text-align: center;
        color: #000066;
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
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td class="auto-style53"></td>
                    </tr>
                    <tr>
                        <td class="auto-style37">
                            <strong>Agregar Bus</strong></td>
                        <td class="auto-style51"><strong>Ver Bus(es)</strong></td>
                        <td class="auto-style48"><strong>Ver Viajes</strong></td>
                        <td class="auto-style54"><strong>Cerrar Sesión</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style41">
                            <asp:ImageButton ID="IB_AgregarBus" runat="server" ImageUrl="~/Imagenes/mas.png" Width="50px" OnClick="IB_AgregarBus_Click" />
                        </td>
                        <td class="auto-style52">
                            <asp:ImageButton ID="IB_VerBuses" runat="server" ImageUrl="~/Imagenes/ojo.png" Width="50px" OnClick="IB_VerBus_Click" />
                        </td>
                        <td class="auto-style49">
                            <asp:ImageButton ID="IB_VerViajes" runat="server" ImageUrl="~/Imagenes/ruta.png" Width="50px" OnClick="IB_VerViajes_Click" />
                        </td>
                        <td class="auto-style46">
                            <asp:ImageButton ID="IB_CerrarSesion" runat="server" ImageUrl="~/Imagenes/cerrar-sesion.png" Width="50px" OnClick="IB_CerrarSesion_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style40">&nbsp;</td>
                        <td class="auto-style50">&nbsp;</td>
                        <td class="auto-style53"></td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>