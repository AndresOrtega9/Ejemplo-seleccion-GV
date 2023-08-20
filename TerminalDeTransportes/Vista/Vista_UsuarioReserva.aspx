<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Inicio.master" AutoEventWireup="true" CodeFile="~/Controlador/Vista_UsuarioReserva.aspx.cs" Inherits="Vista_Vista_UsuarioReserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 33%;
        }
        .auto-style13 {
            width: 33%;
        }
        .auto-style15 {
            width: 112px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
            width: 25%;
        }
        .auto-style17 {
            width: 117px;
            text-align: center;
            height: 23px;
            font-size: large;
            color: #000066;
        }
        .auto-style19 {
            width: 120px;
            text-align: center;
            height: 23px;
            font-size: large;
            color: #000066;
        }
        .auto-style21 {
            width: 122px;
            text-align: center;
            height: 23px;
        }
        .auto-style38 {
            margin-left: 0px;
        }
        .auto-style39 {
            width: 33%;
            text-align: center;
        }
        .auto-style40 {
            text-align: center;
        }
        .auto-style41 {
            color: #FF0000;
            font-size: xx-large;
        }
        .auto-style47 {
            font-size: x-small;
            font-weight: bold;
        }
        .auto-style48 {
            color: #000066;
            font-size: x-large;
        }
        .auto-style49 {
            font-size: x-large;
        }
        .auto-style50 {
            height: 23px;
            text-align: center;
            color: #FF0000;
            font-size: large;
        }
        .auto-style59 {
            width: 33%;
            height: 99px;
            text-align: left;
        }
        .auto-style60 {
            width: 122px;
            text-align: right;
            height: 23px;
        }
        .auto-style61 {
            width: 122px;
            text-align: center;
        }
        .auto-style63 {
            height: 23px;
            text-align: center;
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style64 {
            font-size: small;
            font-weight: bold;
        }
        .auto-style66 {
            width: 33%;
            height: 23px;
        }
        .auto-style71 {
            font-size: medium;
            text-align: center;
            color: #000066;
            background-color: #FFFFFF;
        }
        .auto-style73 {
            width: 33%;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style74 {
            text-align: center;
            font-size: medium;
            background-color: #FFFFFF;
        }
        .auto-style75 {
            width: 33%;
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
                        <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="IB_CerrarSesion0" runat="server" ImageUrl="~/Imagenes/cerrar-sesion.png" Width="50px" OnClick="IB_CerrrarSesion_Click" />
                        </td>
                        <td class="auto-style50" colspan="2">
                                <asp:GridView ID="GV_AgenciasCalificadas0" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CssClass="auto-style64" DataSourceID="DAO_AgenciasCalificadas0" GridLines="Horizontal" Width="50%" CellSpacing="2" ForeColor="Black" Height="23px">
                                    <Columns>
                                        <asp:BoundField DataField="Id_agencia" HeaderText="AGENCIA" SortExpression="Id_agencia" />
                                        <asp:BoundField DataField="Puntuacion" HeaderText="PUNTUACION" SortExpression="Puntuacion" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                        </td>
                        <td class="auto-style60">&nbsp;</td>
				            
                    </tr>
        <tr>
                        <td class="auto-style21">
                            <asp:ObjectDataSource ID="DAO_AgenciasCalificadas0" runat="server" SelectMethod="agenciasCalificadas" TypeName="DAO_Asignar"></asp:ObjectDataSource>
                        </td>
				            
        </tr>
        <tr>
            <td colspan="3" class="auto-style40"><span class="auto-style48">Hola,</span> <strong>
                <asp:Label ID="L_Mensaje" runat="server" CssClass="auto-style41" Text="*"></asp:Label>
                </strong><span class="auto-style49">, </span><span class="auto-style48">reserve ahora los pasajes de su próximo viaje</span></td>
        </tr>
        <tr>
            <td colspan="3">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style50" colspan="2">
                            <asp:ObjectDataSource ID="DAO_AgenciasCalificadas" runat="server" SelectMethod="agenciasCalificadas" TypeName="DAO_Asignar"></asp:ObjectDataSource>
                        </td>
                        <td class="auto-style21">&nbsp;</td>
				            
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style63" colspan="2"><strong>Su viaje será:</strong></td>
                        <td class="auto-style21">&nbsp;</td>
				            
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style17"><strong>Entre:</strong></td>
                        <td class="auto-style19"><strong>&amp;:</strong></td>
                        <td class="auto-style61" rowspan="2">
				<asp:ImageButton ID="IB_Buscar" runat="server" BorderStyle="None" ImageUrl="~/Imagenes/buscar.png" OnClick="IB_Buscar_Click" Width="50px" />
			            </td>
				            
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style16">
				<asp:TextBox ID="TB_Fecha1" runat="server" BorderStyle="Inset" TextMode="DateTimeLocal" Width="100%"></asp:TextBox>
			            </td>
                        <td class="auto-style16">
				<asp:TextBox ID="TB_Fecha2" runat="server" BorderStyle="Inset" TextMode="DateTimeLocal" Width="100%" CssClass="auto-style38"></asp:TextBox>
			            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <strong>
                <asp:GridView ID="GV_ReservarPasajes" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%" AutoGenerateColumns="False" CssClass="auto-style47" DataKeyNames="Id_viaje" DataSourceID="ODS_Reserva" EmptyDataText="¡Nada que ver por ahora!">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="NombreAgencia" HeaderText="NOMBRE AGENCIA" SortExpression="NombreAgencia" />
                        <asp:BoundField DataField="NombreOrigen" HeaderText="ORIGEN" SortExpression="NombreOrigen" />
                        <asp:BoundField DataField="NombreDestino" HeaderText="DESTINO" SortExpression="NombreDestino" />
                        <asp:BoundField DataField="Fecha" HeaderText="FECHA DE VIAJE" SortExpression="Fecha" />
                        <asp:BoundField DataField="NombreTipoBus" HeaderText="TIPO DE BUS" SortExpression="NombreTipoBus" />
                        <asp:BoundField DataField="Capacidad" HeaderText="CAPACIDAD" SortExpression="Capacidad" />
                        <asp:BoundField DataField="Precio_viaje" HeaderText="PRECIO DE PASAJE" SortExpression="Precio_viaje" DataFormatString={0:c2} />
                        <asp:CommandField HeaderText="Opciones" SelectText="Ver" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                </strong>
                <asp:ObjectDataSource ID="ODS_Reserva" runat="server" SelectMethod="obtenerViajesByFecha" TypeName="DAO_Viaje">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TB_Fecha1" Name="fechaInicio" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TB_Fecha2" Name="fechaFin" PropertyName="Text" Type="DateTime" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                            &nbsp;</td>
            <td class="auto-style59">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style71" colspan="2"><strong>Mapa de Sillas</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style73">
                            <asp:Image ID="I_Dispobible0" runat="server" ImageUrl="~/Imagenes/verde.png" Width="30px" />
                            </td>
                        <td class="auto-style74"><strong><em>Disponible</em></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style73">
                            <asp:Image ID="I_Ocupado0" runat="server" ImageUrl="~/Imagenes/rojo.png" Width="30px" />
                        </td>
                        <td class="auto-style74"><strong><em>Reservado</em></strong></td>
                    </tr>
                </table>
            </td>
            <td class="auto-style75">
                <asp:ImageButton ID="IB_Reservar" runat="server" ImageUrl="~/Imagenes/reservar_icono.png" OnClick="IB_Reservar_Click" Width="50px" />
                            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3">
                    <asp:DataList ID="DL_Sillas" runat="server" DataSourceID="ODS_Sillas" HorizontalAlign="Center" OnItemCommand="DL_Sillas_ItemCommand" OnItemDataBound="DL_Sillas_ItemDataBound" RepeatColumns="4" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="100%">
                        <ItemTemplate>
                            <strong>
                            <asp:CheckBox ID="CB_Silla" runat="server" OnCheckedChanged="CB_Silla_CheckedChanged" />
                            <asp:ImageButton ID="IB_Imagen" runat="server" Width="5%" />
                            </strong>
                        </ItemTemplate>
                    </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:ObjectDataSource ID="ODS_Sillas" runat="server" SelectMethod="obtenerPasajesByViaje" TypeName="DAO_Pasaje">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GV_ReservarPasajes" Name="viajeId" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                    </td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        </table>
</asp:Content>

