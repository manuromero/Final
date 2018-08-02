<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarServicio.aspx.cs" Inherits="Presentacion.RegistrarServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row col-md-6">

            <asp:HiddenField ID="HFIdIngreso" runat="server"/>
            
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label ID="LblNombreAp" runat="server" Text="Nombre Cliente" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblNombreApellido" runat="server" CssClass="form-control"></asp:Label>
                 </div>
            </div>
                 
            <div class="col-md-6">
                <div class="form-group">   
                    <asp:Label ID="LblAutoClie" Text="AutoCliente" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:Label ID="LblAutoCliente" runat="server" CssClass="form-control"></asp:Label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">  
                    <asp:Label ID="LblcambioAc" Text="cambio aceite" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:CheckBox ID="CbxcambioAceite"  runat="server" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">  
                    <asp:Label ID="LblCambioFiltro" Text="CambioFiltro" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                    <asp:CheckBox ID="CbxCambioFiltro" runat="server" />
                </div>
            </div>

             <div class="col-md-6">
                <div class="form-group">  
                    <asp:Label ID="LblReparaciones" Text="reparaciones" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                     <asp:TextBox ID="TbxReparaciones" placeholder="reparaciones" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

          <div class="col-md-6">
                <div class="form-group">  
                    <asp:Label ID="LblObservaciones" Text="Observaciones" runat="server" CssClass="label control-label alert-info center-block"></asp:Label>
                     <asp:TextBox ID="TbxObservaciones" placeholder="Observaciones" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            

          

            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label ID="LblFechaServicio" runat="server" Text="Fecha de Servicio" CssClass="label control-label alert-info center-block"></asp:Label>
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class='col-md-3'>
                                    <div class="form-group">
                                        <div class='input-group date' id='myDate'>
                                            <asp:TextBox ID="TbxFechaServicio" placeholder="Fecha de Servicio" CssClass="form-control" runat="server"></asp:TextBox>
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
                    <asp:Button ID="BtnGuardarServicio" runat="server" Text="guardar servicio" OnClick="BtnGuardarServicio_Click" CssClass="btn btn-success"/>
                    <asp:Button ID="BtnListarServicios" runat="server" Text="ver servicios" OnClick="BtnListarServicios_Click" CssClass="btn btn-info"/>
                </div>
            </div>

            <div class="form-group">
                <asp:GridView ID="GdvServicios" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
                    <Columns>
                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </div>
</asp:Content>
