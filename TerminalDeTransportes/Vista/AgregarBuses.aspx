<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/AgregarBuses.aspx.cs" Inherits="Vista_AgregarBuses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 25%;
        }
        .auto-style14 {
          
            height: 9px;
            font-size: x-large;
            text-align: center;
            color: #000066;
        }
        .auto-style18 {
            width: 25%;
        }
        .auto-style19 {
            width: 25%;
        }
        .auto-style29 {
            font-size: small;
            color: #000000;
        }
	    .auto-style33 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style34 {
            text-align: center;
        }
        .auto-style35 {
            color: #FF0000;
            font-size: x-small;
        }
        .auto-style36 {
            font-weight: bold;
            font-size: small;
        }
        .auto-style37 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style14" colspan="4">Registre un Bus</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">Nombre Agencia:</td>
            <td class="auto-style18">
                <strong>
                <asp:Label ID="L_MensajeNombre" runat="server" CssClass="auto-style29" Width="100%"></asp:Label>
                </strong>
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">Nit Agencia:</td>
            <td class="auto-style18">
                <strong>
                <asp:Label ID="L_MensajeNit" runat="server" CssClass="auto-style29" Width="100%"></asp:Label>
                </strong>
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">Tipo de Bus:</td>
            <td class="auto-style18">
                <strong>
                <asp:DropDownList ID="DDL_TipoBus" runat="server" DataSourceID="ODS_TipoBus" DataTextField="Nombre" DataValueField="Id" Width="100%" CssClass="auto-style36">
                </asp:DropDownList>
                </strong>
                <asp:ObjectDataSource ID="ODS_TipoBus" runat="server" SelectMethod="Obtener_Tipo" TypeName="DAO_Buses"></asp:ObjectDataSource>
                </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RFV_TipoBus" runat="server" ControlToValidate="DDL_TipoBus" CssClass="auto-style33" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7">Numero Placa:</td>
            <td class="auto-style7">
                <strong>
                <asp:TextBox ID="TB_NumPlaca" runat="server" Width="100%" BorderStyle="Inset" CssClass="auto-style36"></asp:TextBox>
                </strong>
                </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RFV_NumPlaca" runat="server" ControlToValidate="TB_NumPlaca" CssClass="auto-style33" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Placa" runat="server" ControlToValidate="TB_NumPlaca" CssClass="auto-style35" ErrorMessage="No más de 7 caracteres" ValidationExpression="^.{6,7}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">Numero Interno:</td>
            <td class="auto-style18">
                <strong>
                <asp:TextBox ID="TB_NumInterno" runat="server" Width="100%" BorderStyle="Inset" CssClass="auto-style36" TextMode="Number"></asp:TextBox>
                </strong>
                </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RFV_NumInterno" runat="server" ControlToValidate="TB_NumInterno" CssClass="auto-style33" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Numinterno" runat="server" ControlToValidate="TB_NumInterno" CssClass="auto-style35" ErrorMessage="No más de 3 numeros" ValidationExpression="^.{3}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7">Vence: Soat</td>
            <td class="auto-style7">
                <strong>
                <asp:TextBox ID="TB_soat" runat="server" Width="100%" BorderStyle="Inset" TextMode="Date" CssClass="auto-style37"></asp:TextBox>
                </strong>
                </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RFV_VSoat" runat="server" ControlToValidate="TB_soat" CssClass="auto-style33" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style12">Vence: Tecno</td>
            <td class="auto-style18">
                <strong>
                <asp:TextBox ID="TB_fecha" runat="server" Width="100%" BorderStyle="Inset" TextMode="Date" CssClass="auto-style37"></asp:TextBox>
                </strong>
                </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RFV_VTecno" runat="server" ControlToValidate="TB_fecha" CssClass="auto-style33" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style34" colspan="2">
                <asp:ImageButton ID="IB_GuardarBus" runat="server" ImageUrl="~/Imagenes/verificar.png" OnClick="IB_GuardarBus_Click" Width="50px" />
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style34" colspan="2">
                <asp:ImageButton ID="IB_Regresar" runat="server" ImageUrl="~/Imagenes/regreso.png" OnClick="IB_Volver" Width="50px" Height="25px" />
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

