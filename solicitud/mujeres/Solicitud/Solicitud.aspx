<%@ Page Title="Formato de solicitud" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Solicitud.aspx.vb" Inherits="mujeres.Solicitud" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
  <script type="text/javascript">
        function OnGotFocus(s, e) {
            calendar.SetVisible(true);
        }
        function OnClick(s, e) {
            calendar.SetVisible(false);
        }
        function OnSelectionChanged() {
            var date = calendar.GetSelectedDate();
            tbDate.SetText(date.toDateString());
            calendar.SetVisible(false);
        }
    </script>

     <h2><%: Title %>.</h2>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" Height="100px" Width="100%" ActiveTabIndex="0">
        <TabPages>
            <dx:TabPage Text="Datos Generales">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                     
                         <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>I.- Datos Generales del Solicitante.</h4>
                    <hr />
                      <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>

                    <%-----inicio de solicitud--------------%>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Programa"  CssClass="col-md-2 control-label">PROGRAMA SOCIAL</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Programa" CssClass="form-control" runat="server">
                                <asp:ListItem>APOYO A MUJERES JEFAS DE FAMILIA</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Nombre_solicitante"  CssClass="col-md-2 control-label">Nombre(s)</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="Nombre_solicitante" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Nombre_solicitante"
                                CssClass="text-danger" ErrorMessage="El campo de nombre es obligatorio." />
                           </div>                    
                    </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Apellido_paterno"  CssClass="col-md-2 control-label">Apellido Paterno</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="Apellido_paterno" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Apellido_paterno"
                                CssClass="text-danger" ErrorMessage="El campo de apellido paterno es obligatorio." />
                           </div>  
                    </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Apellido_materno"  CssClass="col-md-2 control-label">Apellido Materno</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Apellido_materno" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Apellido_materno"
                                CssClass="text-danger" ErrorMessage="El campo de apellido paterno es obligatorio." />
                           </div>  
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Domicilio"  CssClass="col-md-2 control-label">Domicilio</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Domicilio" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Domicilio"
                                CssClass="text-danger" ErrorMessage="El campo de domicilio es obligatorio." />
                           </div>  
                    </div>
                 
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="N_exterior"  CssClass="col-md-2 control-label">Número Exterior</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="N_exterior" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="N_exterior"
                                CssClass="text-danger" ErrorMessage="El campo de # exterior es obligatorio." />
                           </div>  
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="N_interior"  CssClass="col-md-2 control-label">Número Interior</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="N_interior" CssClass="form-control"  />
                           
                           </div>  
                    </div>

                    <h3>Lugar de nacimiento:</h3>
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Estado_nacimiento"  CssClass="col-md-2 control-label">Estado:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Estado_nacimiento" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombre_Edo" DataValueField="IdEstado">
                              
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Municipio_nacimiento"  CssClass="col-md-2 control-label">Municipio:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Municipio_nacimiento" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre_Municipio" DataValueField="IdMunicipio">
                              
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Fecha_nacimiento"  CssClass="col-md-2 control-label">Fecha de Nacimiento:</asp:Label>
                           <div class="col-md-10">
                               <dx:ASPxTextBox ID="Fecha_nacimiento" runat="server" ClientInstanceName="tbDate" CssClass="form-control" OnTextChanged="tbDate_TextChanged" EnableClientSideAPI="True" >
                                   <ClientSideEvents GotFocus="OnGotFocus" LostFocus="OnLostFocus" />
                               </dx:ASPxTextBox>
                               <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" 
		Text="Cerrar calendario">		
		<ClientSideEvents GotFocus="OnClick" />
	</dx:ASPxButton>
	
                        </div>
                    </div>

                    <dx:ASPxCalendar ID="calendar" runat="server" ClientInstanceName="calendar" 
		ClientVisible="False" Theme="Metropolis">
		<ClientSideEvents SelectionChanged="OnSelectionChanged" />
	</dx:ASPxCalendar>

  <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">¿Recordar cuenta?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <%--<asp:Button runat="server" OnClick="LogIn" Text="Iniciar sesión" CssClass="btn btn-default" />--%>
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Registrarse como usuario nuevo</asp:HyperLink>
                </p>
                <p>
                    <%-- Habilite esta opción cuando haya habilitado la confirmación de cuentas para la funcionalidad de restablecimiento de contraseña
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">¿Olvidó su contraseña?</asp:HyperLink>
                    --%>
                </p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [IdEstado], [Nombre_Edo] FROM [Tbl_Cat_Estados]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [IdMunicipio], [Nombre_Municipio] FROM [Tbl_Cat_Municipios] WHERE ([IdEstado] = @IdEstado)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Estado_nacimiento" Name="IdEstado" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </section>
        </div>

      </div>
                
                        </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Salud">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Ingresos/Gastos">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Vivienda">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
   

                  
</asp:Content>
