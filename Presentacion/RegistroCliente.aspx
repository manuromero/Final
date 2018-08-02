<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="Presentacion.RegistroCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <div class="row col-md-6">


            <div class="col-md-12">
                <div class="form-group btn-group">
                    <asp:Label ID="LblClientes" runat="server" Text="Clientes" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:DropDownList ID="DDlClientes" runat="server" OnSelectedIndexChanged="DDlClientes_SelectedIndexChanged" DataTextField="Tipo de Cuenta" AutoPostBack="true"></asp:DropDownList>   
                </div>
            </div>

            <asp:HiddenField ID="HFIdCliente" runat="server"/>

            
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label ID="LblNombreCli" runat="server" Text="Nombre Cliente" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblNombreCliente" runat="server" CssClass="form-control"></asp:Label>
                 </div>
            </div>
                 
            <div class="col-md-6">
                <div class="form-group">   
                    <asp:Label ID="LblApellidoCl" Text="Apellido Cliente" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblApellido" runat="server" CssClass="form-control"></asp:Label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">  
                    <asp:Label ID="LblDni" Text="dni Cliente" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                     <asp:TextBox ID="TbxDni" placeholder="Dni" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <asp:HiddenField ID="HFIdAuto" runat="server" />

            <div class="col-md-12">
                <div class="form-group btn-group">
                    <asp:Label ID="LblAuto" Text="seleccione auto" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:DropDownList ID="DDLAuto" runat="server" OnSelectedIndexChanged="DDLAuto_SelectedIndexChanged"  DataTextField="Auto" AutoPostBack="true"></asp:DropDownList>   
                </div>

            </div>

           <div class="col-md-5">
                <div class="form-group">
                    <asp:Label ID="Lblmarca" Text="marca" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblmarcaAuto" runat="server" CssClass="form-control"></asp:Label>
                </div>
            </div>
        <div class="col-md-5">
                <div class="form-group">
                    <asp:Label ID="Lblmodelo" Text="modelo " runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblmodeloAuto" runat="server" CssClass="form-control"></asp:Label>
                </div>
            </div>
         <div class="col-md-5">
                <div class="form-group">
                    <asp:Label ID="LblAño" Text="año " runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblAñoauto" runat="server" CssClass="form-control"></asp:Label>
                </div>
            </div>



            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label ID="LblFechaIngreso" runat="server" Text="Fecha de ingreso" CssClass="label control-label alert-info center-block"></asp:Label>
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class='col-md-3'>
                                    <div class="form-group">
                                        <div class='input-group date' id='myDate'>
                                            <asp:TextBox ID="TbxFechaIngreso" placeholder="Fecha de Ingreso" CssClass="form-control" runat="server"></asp:TextBox>
                                            <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function () {
                                    $('#myDate').datetimepicker({ format: 'DD-MM-YYYY' }).on('dp.change', function (e) {
                                    if (!e.oldDate || !e.date.isSame(e.oldDate, 'day')) {
                                    $(this).data('DateTimePicker').hide();
                                            }   
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <asp:Button ID="BtnGuardar" runat="server" Text="guardarIngreso" OnClick="BtnGuardar_Click" CssClass="btn btn-success"/>
                    <asp:Button ID="BtnListarIngresos" runat="server" Text="Ver ingresos" OnClick="BtnListarIngresos_Click" CssClass="btn btn-info"/>
                </div>
            </div>

            <div class="form-group">
                <asp:GridView ID="GdvIngresos" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
                    <Columns>
                        <asp:BoundField HeaderText="nombre" DataField="nombreApellido"/>
                        <asp:BoundField HeaderText="dni" DataField="dni"/>
                        <asp:BoundField HeaderText="auto" DataField="autoIngresado"/>
                        <asp:BoundField HeaderText="fechaIngreso" DataField="fechaIngreso"/>
                         <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="BtnEditar" OnClick="BtnEditar_Click" CommandName='<%# Eval("idIngreso") %>' CommandArgument='<%# Eval("idIngreso") %>' runat="server" Text="Editar" CssClass="btn btn-warning"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="BtnRegistrarServicio" OnClick="BtnRegistrarServicio_Click" CommandName='<%# Eval("idIngreso") %>' CommandArgument='<%# Eval("idIngreso") %>' runat="server" Text="Ingresar Servi" CssClass="btn btn-warning" />
                                </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </div>

</asp:Content>
