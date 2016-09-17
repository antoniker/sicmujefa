<%@ Page Title="" Language="VB" MasterPageFile="~/Main.master" AutoEventWireup="false" CodeFile="Capacitaciones.aspx.vb" Inherits="Actividades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

      <h4>Capacitaciones</h4>                      

                    <h5>Selecciona el tipo de capacitación a generar</h5>  
                                         
                     <div class="form-group">
                      </div>

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <SettingsSearchPanel Visible="True" />
        <SettingsText CommandEdit="Editar" CommandNew="+ Nuevo" />
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="RFC" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellido_Paterno" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellido_Materno" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Domicilio" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Numero_Exterior" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Numero_Interior" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono_Casa" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono_Celular" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Correo_Electronico" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
        </Columns>
      </dx:ASPxGridView>
      <br />
      <br />
    <h5>Selecciona la fecha de la actividad</h5>
    <dx:ASPxCalendar ID="ASPxCalendar1" runat="server"></dx:ASPxCalendar>                      
                    <div class="form-group">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RFC], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Domicilio], [Numero_Exterior], [Numero_Interior], [Telefono_Casa], [Telefono_Celular], [Correo_Electronico] FROM [Tbl_Datos_Generales]"></asp:SqlDataSource>
                      </div>

                    <div class="form-group">
                      </div>

    
</asp:Content>

