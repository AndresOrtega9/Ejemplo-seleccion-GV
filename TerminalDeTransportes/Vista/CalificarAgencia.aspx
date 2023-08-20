<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/CalificarAgencia.aspx.cs" Inherits="Vista_CalificarAgencia" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 33%;
        }
        .auto-style13 {
            width: 33%;
        }
        .auto-style16 {
            width: 33%;
        }
        .auto-style17 {
            height: 23px;
            text-align: center;
            color: #000066;
            font-size: x-large;
        }
        .auto-style18 {
            width: 50%;
            font-size: medium;
            color: #FFFFFF;
            background-color: #000066;
        }
        .auto-style19 {
            width: 50%;
            background-color: #000066;
        }
        .auto-style30 {
            width: 33%;
            text-align: center;
        }
        .auto-style31 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style17" colspan="3">Califique la Agencia con la que viajó</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style18"><strong>Agencia:</strong></td>
                        <td class="auto-style19">
                            <asp:DropDownList ID="DDL_ElegirAgencia" runat="server" CssClass="auto-style31" DataSourceID="ODS_Elegir" DataTextField="Nombre" DataValueField="Nombre" Width="100%">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="ODS_Elegir" runat="server" SelectMethod="ObtenerAgencias" TypeName="DAO_Agencia"></asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18"><strong>Calificación:</strong></td>
                        <td class="auto-style19"><strong>
                            <asp:DropDownList ID="DDL_Puntuacion" runat="server" CssClass="auto-style31" DataSourceID="ODS_Puntuacion" DataTextField="Nombre" DataValueField="Puntuacion"  Width="100%">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="ODS_Puntuacion" runat="server" SelectMethod="puntuacion" TypeName="DAO_Calificacion"></asp:ObjectDataSource>
                            </strong>
                        </td>
                    </tr>
                    </table>
            </td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style30">
                <asp:ImageButton ID="IB_Calificar" runat="server" ImageUrl="~/Imagenes/calificar.png" OnClick="IB_Calificar_Click" Width="60px" />
            </td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style30">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

