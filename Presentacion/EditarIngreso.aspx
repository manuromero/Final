<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarIngreso.aspx.cs" Inherits="Presentacion.EditarIngreso" %>
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
                    <asp:Label ID="LblNombreCli" runat="server" Text="Nombre Pasajero" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblNombreCliente" runat="server" CssClass="form-control"></asp:Label>
                 </div>
            </div>
                 
            <div class="col-md-6">
                <div class="form-group">   
                    <asp:Label ID="LblApellidoCl" Text="Apellido Pasajero" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
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
                    <asp:Button ID="Btnvolverinicio" runat="server" Text="volver ingreso" OnClick="Btnvolverinicio_Click" CssClass="btn btn-info"/>
                </div>
            </div>

           

        </div>
    </div>
</asp:Content>
