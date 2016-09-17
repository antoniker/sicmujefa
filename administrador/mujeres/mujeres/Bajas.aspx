<%@ Page Title="" Language="VB" MasterPageFile="~/Main.master" AutoEventWireup="false" CodeFile="Bajas.aspx.vb" Inherits="Bajas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h4>Dictaminación de solicitudes</h4>
    <h5>Elige la solicitud a modificar</h5>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <SettingsSearchPanel Visible="True" />
        <SettingsText CommandDelete="Eliminar" CommandEdit="Editar" />
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="True" ShowEditButton="True">
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
            <dx:GridViewDataTextColumn FieldName="Telefono_Casa" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono_Celular" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Correo_Electronico" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <br />
    <br />

    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CuidenEnfermedad"  CssClass="col-md-2 control-label">Nombre del entrevistador</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="CuidenEnfermedad" CssClass="form-control" runat="server">
                                <asp:ListItem>Juan Perez Perez</asp:ListItem>
                              <%--  <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>--%>
                            </asp:DropDownList>
                        </div>
                      </div>

     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CuidenEnfermedad"  CssClass="col-md-2 control-label">Clave del entrevistador</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CuidenEnfermedad"  CssClass="col-md-2 control-label">Dependencia de origen</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                <asp:ListItem>Dependencia 01</asp:ListItem>
                                <asp:ListItem>Dependencia 02</asp:ListItem>
                                <asp:ListItem>Dependencia 03</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RFC], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Domicilio], [Numero_Exterior], [Telefono_Casa], [Telefono_Celular], [Correo_Electronico] FROM [Tbl_Datos_Generales]"></asp:SqlDataSource>

</asp:Content>

