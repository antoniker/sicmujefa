<%@ Page Title="" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="Solicitud.aspx.vb" Inherits="Formatos_Solicitud" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <script type="text/javascript">
        function OnGotFocus(s, e) {
            calendar.SetVisible(true);
        }
        function OnClick(s, e) {
            calendar.SetVisible(false);
        }
        function OnSelectionChanged() {
            var date = calendar.GetSelectedDate();
            var dia = date.getDate();
            var mes = date.getMonth() + 1;
            var año = date.getFullYear();
            //tbDate.SetText(date.toDateString());
            if (dia < 10)
            {
                dia = '0' + dia;
            }
                
            if (mes < 10) {
                mes = '0' + mes;
            }
            tbDate.SetText(dia + "-" + mes + "-" + año);
            calendar.SetVisible(false);
        }
    </script>

    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Height="100%" Width="100%">
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
                                        <asp:PlaceHolder ID="ErrorMessage" runat="server" Visible="False">
                                            <p class="text-danger">
                                                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                                            </p>
                                        </asp:PlaceHolder>

                                          <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Programa"  CssClass="col-md-2 control-label">PROGRAMA SOCIAL</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Programa" CssClass="form-control" runat="server">
                                <asp:ListItem>APOYO A MUJERES JEFAS DE FAMILIA</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="RFC"  CssClass="col-md-2 control-label">RFC</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="RFC" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="RFC"
                                CssClass="text-danger" ErrorMessage="El campo de RFC es obligatorio." />
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

                                        <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="EntreCalles"  CssClass="col-md-2 control-label">Entre calles</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="EntreCalles" CssClass="form-control"  />
                           </div>  
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Estado"  CssClass="col-md-2 control-label">Estado:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Estado" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombre_Edo" DataValueField="IdEstado">
                              
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Municipio"  CssClass="col-md-2 control-label">Municipio:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Municipio" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre_Municipio" DataValueField="IdMunicipio" AutoPostBack="True">
                              
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Localidad"  CssClass="col-md-2 control-label">Localidad:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Localidad" CssClass="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="Localidad" DataValueField="Id" AutoPostBack="True">
                              
                            </asp:DropDownList>
                        </div>
                    </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CP"  CssClass="col-md-2 control-label">C.P.</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="CP" CssClass="form-control" runat="server" DataSourceID="SqlDataSource6" DataTextField="CP" DataValueField="CP">
                              
                            </asp:DropDownList>
                        </div>
                    </div>


                    <h3>Lugar de nacimiento:</h3>
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Estado_nacimiento"  CssClass="col-md-2 control-label">Estado:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Estado_nacimiento" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Nombre_Edo" DataValueField="IdEstado">
                              
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Municipio_nacimiento"  CssClass="col-md-2 control-label">Municipio:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Municipio_nacimiento" CssClass="form-control" runat="server" DataSourceID="SqlDataSource5" DataTextField="Nombre_Municipio" DataValueField="IdMunicipio">
                              
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="TelefonoLocal"  CssClass="col-md-2 control-label">teléfono casa</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="TelefonoLocal" CssClass="form-control"   />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TelefonoLocal"
                                CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." />
                           </div>  
                    </div>

                <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="telefono"  CssClass="col-md-2 control-label">Teléfono celular</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="telefono" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="telefono"
                                CssClass="text-danger" ErrorMessage="El campo de teléfono celular es obligatorio." />
                           </div>  
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Correo"  CssClass="col-md-2 control-label">Correo electrónico</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Correo" CssClass="form-control" TextMode ="Email"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Correo"
                                CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." />
                           </div>  
                    </div>
                                                    
                   
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Fecha_nacimiento"  CssClass="col-md-2 control-label">Fecha de nacimiento:</asp:Label>
                           <div class="col-md-10">
                               
 <dx:ASPxTextBox ID="Fecha_nacimiento" runat="server" ClientInstanceName="tbDate" CssClass="form-control" OnTextChanged="tbDate_TextChanged" EnableClientSideAPI="True" AutoPostBack="True" >
                                   <ClientSideEvents GotFocus="OnGotFocus" LostFocus="OnLostFocus" />
                               </dx:ASPxTextBox>                              <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" 
		Text="Cerrar calendario">		
		<ClientSideEvents GotFocus="OnClick" />
	</dx:ASPxButton>
	
                        </div>
                    </div>

                    
<dx:ASPxCalendar ID="calendar" runat="server" ClientInstanceName="calendar" 
		ClientVisible="False" Theme="Metropolis" ClearButtonText="Limpiar" TodayButtonText="Hoy" DayNameFormat="Shortest" ForeColor="Black" ShowWeekNumbers="False">
		<WeekNumberStyle BackColor="#3333FF">
        </WeekNumberStyle>
        <HeaderStyle ForeColor="Black" />
        <FooterStyle ForeColor="#455A64" />
        <FastNavYearStyle>
            <SelectedStyle ForeColor="#00CC66">
            </SelectedStyle>
        </FastNavYearStyle>
		<ClientSideEvents SelectionChanged="OnSelectionChanged" />
	    <FocusedStyle ForeColor="#009999">
        </FocusedStyle>
	</dx:ASPxCalendar>

                 <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Escolaridad"  CssClass="col-md-2 control-label">Escolaridad</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Escolaridad" CssClass="form-control" runat="server">
                                <asp:ListItem>Ninguna</asp:ListItem>
                                <asp:ListItem>Primaria</asp:ListItem>
                                <asp:ListItem>Secundaria</asp:ListItem>
                                <asp:ListItem>Bachillerato</asp:ListItem>
                                 <asp:ListItem>Técnica</asp:ListItem>
                                 <asp:ListItem>Superior</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Grado"  CssClass="col-md-2 control-label">Grado</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Grado" CssClass="form-control" runat="server">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                 <asp:ListItem>4</asp:ListItem>
                                 <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                                      
 <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="EstadoCivil"  CssClass="col-md-2 control-label">Estado civil</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="EstadoCivil" CssClass="form-control" runat="server">
                                <asp:ListItem>Soltera(o)</asp:ListItem>
                                <asp:ListItem>Casada(o)</asp:ListItem>
                                <asp:ListItem>Viuda(o)</asp:ListItem>
                                <asp:ListItem>Unión Libre</asp:ListItem>
                                 <asp:ListItem>Divorciada(o)</asp:ListItem>
                                 <asp:ListItem>Separada(0)</asp:ListItem>
                                 </asp:DropDownList>
                        </div>
                    </div>

                <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Sexo"  CssClass="col-md-2 control-label">Sexo</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Sexo" CssClass="form-control" runat="server">
                                <asp:ListItem>Mujer</asp:ListItem>
                                <asp:ListItem>Hombre</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                    </div>

                 <h4>II.- Acreditción de identidad.</h4>

                <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Ciudadano"  CssClass="col-md-2 control-label">Ciduadano mexicano</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Ciudadano" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="OtroCiudadano"  CssClass="col-md-2 control-label">Otro (especifique)</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="OtroCiudadano" CssClass="form-control"  />
                            
                           </div>  
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Curp"  CssClass="col-md-2 control-label">Curp</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Curp" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Curp"
                                CssClass="text-danger" ErrorMessage="El campo de Curp es obligatorio." />
                           </div>  
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="IFE"  CssClass="col-md-2 control-label">IFE</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="IFE" CssClass="form-control"  />
                            
                           </div>  
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Pasaporte"  CssClass="col-md-2 control-label">Pasaporte</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Pasaporte" CssClass="form-control"  />
                            
                           </div>  
                    </div>


                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Indigena"  CssClass="col-md-2 control-label">¿Es indígena?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Indigena" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Comunidad"  CssClass="col-md-2 control-label">Comunidad de origen</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Comunidad" CssClass="form-control"  />
                            
                           </div>  
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Indigena1"  CssClass="col-md-2 control-label">¿Habla alguna lengua o dialecto indígena?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Indigena1" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Dialecto"  CssClass="col-md-2 control-label">¿Qué dialecto o lengua indígena habla?</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Dialecto" CssClass="form-control"  />
                            
                           </div>  
                    </div>

                                        <br />

                                      



                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [IdEstado], [Nombre_Edo] FROM [Tbl_Cat_Estados]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [IdMunicipio], [Nombre_Municipio] FROM [Tbl_Cat_Municipios] WHERE ([IdEstado] = @IdEstado)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Estado" Name="IdEstado" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                                    </div>
                                </section>
                            </div>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [Id], [Localidad] FROM [Tbl_Cat_Localidades] WHERE (([Codigo_Estado] = @Codigo_Estado) AND ([Codigo_Municipio] = @Codigo_Municipio)) ORDER BY [Localidad]">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Estado" Name="Codigo_Estado" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="Municipio" Name="Codigo_Municipio" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [IdEstado], [Nombre_Edo] FROM [Tbl_Cat_Estados]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [IdMunicipio], [Nombre_Municipio] FROM [Tbl_Cat_Municipios] WHERE ([IdEstado] = @IdEstado)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Estado_Nacimiento" Name="IdEstado" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Mujeres_JefasConnectionString %>" SelectCommand="SELECT [CP] FROM [Tbl_Cat_Localidades] WHERE (([Codigo_Estado] = @Codigo_Estado) AND ([Codigo_Municipio] = @Codigo_Municipio) AND ([Id] = @Id))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Estado" Name="Codigo_Estado" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="Municipio" Name="Codigo_Municipio" PropertyName="SelectedValue" Type="String" />
                                
                                <asp:ControlParameter ControlID="Localidad" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                                
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Familia">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                         <div class="row">
                            <div class="col-md-8">
                                <section id="estructura">
                                    <div class="form-horizontal">
                                        <h4>III.- Estructura familiar.</h4>
                                        <hr />
                                        <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="False">
                                            <p class="text-danger">
                                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                            </p>
                                        </asp:PlaceHolder>

                                          <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Personas"  CssClass="col-md-2 control-label">¿Cuántas personas en total viven y duermen en su vivienda?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Personas" CssClass="form-control" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                          <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Dormitorios"  CssClass="col-md-2 control-label">¿Cuántos dormitorios tiene su vivienda?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Dormitorios" CssClass="form-control" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Nombre_solicitante1"  CssClass="col-md-2 control-label">Nombre(s)</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="Nombre_solicitante1" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Nombre_solicitante1"
                                CssClass="text-danger" ErrorMessage="El campo de nombre es obligatorio." />
                           </div>                    
                    </div>

                                          <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Apellido_paterno1"  CssClass="col-md-2 control-label">Apellido Paterno</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="Apellido_paterno1" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Apellido_paterno1"
                                CssClass="text-danger" ErrorMessage="El campo de apellido paterno es obligatorio." />
                           </div>  
                    </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Apellido_materno1"  CssClass="col-md-2 control-label">Apellido Materno</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Apellido_materno1" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Apellido_materno1"
                                CssClass="text-danger" ErrorMessage="El campo de apellido paterno es obligatorio." />
                           </div>  
                    </div>

                <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Genero"  CssClass="col-md-2 control-label">Género</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Genero" CssClass="form-control" runat="server">
                                <asp:ListItem>Mujer</asp:ListItem>
                                <asp:ListItem>Hombre</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                    </div>

                <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Edad"  CssClass="col-md-2 control-label">Edad</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Edad" CssClass="form-control" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                             <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                 <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>51</asp:ListItem>
                                <asp:ListItem>52</asp:ListItem>
                                <asp:ListItem>53</asp:ListItem>
                                <asp:ListItem>54</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>56</asp:ListItem>
                                <asp:ListItem>57</asp:ListItem>
                                <asp:ListItem>58</asp:ListItem>
                                <asp:ListItem>59</asp:ListItem>
                                 <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>61</asp:ListItem>
                                <asp:ListItem>62</asp:ListItem>
                                <asp:ListItem>63</asp:ListItem>
                                <asp:ListItem>64</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>66</asp:ListItem>
                                <asp:ListItem>67</asp:ListItem>
                                <asp:ListItem>68</asp:ListItem>
                                <asp:ListItem>69</asp:ListItem>
                                 <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>71</asp:ListItem>
                                <asp:ListItem>72</asp:ListItem>
                                <asp:ListItem>73</asp:ListItem>
                                <asp:ListItem>74</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>76</asp:ListItem>
                                <asp:ListItem>77</asp:ListItem>
                                <asp:ListItem>78</asp:ListItem>
                                <asp:ListItem>79</asp:ListItem>
                                 <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>81</asp:ListItem>
                                <asp:ListItem>82</asp:ListItem>
                                <asp:ListItem>83</asp:ListItem>
                                <asp:ListItem>84</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>86</asp:ListItem>
                                <asp:ListItem>87</asp:ListItem>
                                <asp:ListItem>88</asp:ListItem>
                                <asp:ListItem>89</asp:ListItem>
                                 <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>91</asp:ListItem>
                                <asp:ListItem>92</asp:ListItem>
                                <asp:ListItem>93</asp:ListItem>
                                <asp:ListItem>94</asp:ListItem>
                                <asp:ListItem>95</asp:ListItem>
                                <asp:ListItem>96</asp:ListItem>
                                <asp:ListItem>97</asp:ListItem>
                                <asp:ListItem>98</asp:ListItem>
                                <asp:ListItem>99</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                                
                            </asp:DropDownList>
                        </div>
                    </div>


                <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Parentesco"  CssClass="col-md-2 control-label">Parentesco</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Parentesco" CssClass="form-control" runat="server">
                                <asp:ListItem>Jefa(e) de familia</asp:ListItem>
                                <asp:ListItem>Esposa(o)</asp:ListItem>
                                 <asp:ListItem>Hija(o)</asp:ListItem>
                                 <asp:ListItem>Otro parentesco</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                    </div>

                 <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Ocupacion"  CssClass="col-md-2 control-label">Ocupación</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Ocupacion" CssClass="form-control" runat="server">
                                <asp:ListItem>Hogar</asp:ListItem>
                                <asp:ListItem>Estudiante</asp:ListItem>
                                 <asp:ListItem>Desempleado</asp:ListItem>
                                 <asp:ListItem>Jornalero / albañil</asp:ListItem>
                                <asp:ListItem>Empleado / Obrero</asp:ListItem>
                                 <asp:ListItem>Cuenta propia</asp:ListItem>
                                 <asp:ListItem>Jubilado</asp:ListItem>
                                <asp:ListItem>Otra</asp:ListItem>
                                 <asp:ListItem>Ninguna</asp:ListItem>
                                </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Escolaridad1"  CssClass="col-md-2 control-label">Escolaridad</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Escolaridad1" CssClass="form-control" runat="server">
                                <asp:ListItem>Ninguna</asp:ListItem>
                                <asp:ListItem>Primaria</asp:ListItem>
                                 <asp:ListItem>Secundaria</asp:ListItem>
                                 <asp:ListItem>Bachillerato</asp:ListItem>
                                <asp:ListItem>técnica</asp:ListItem>
                                 <asp:ListItem>Superior</asp:ListItem>
                                </asp:DropDownList>
                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Completa"  CssClass="col-md-2 control-label">Termino estudios</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Completa" CssClass="form-control" runat="server">
                                <asp:ListItem>Completa</asp:ListItem>
                                <asp:ListItem>Incompleta</asp:ListItem>
                                
                                </asp:DropDownList>
                        </div>
                    </div>


                    </div>
                   </section>
            </div>
        </div>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Salud">
                <ContentCollection>
                    <dx:ContentControl runat="server">

                         <div class="row">
                            <div class="col-md-8">
                                <section id="salud">
                                    <div class="form-horizontal">
                                        <h4>IV.- Salud.</h4>
                                        <hr />
                                        <asp:PlaceHolder ID="PlaceHolder2" runat="server" Visible="False">
                                            <p class="text-danger">
                                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                            </p>
                                        </asp:PlaceHolder>
                                        <h5>Discapacidad</h5>
                       <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Discapacidad"  CssClass="col-md-2 control-label">Tiene algún tipo de discapacidad</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Discapacidad" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                          <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="TipoDiscapacidad"  CssClass="col-md-2 control-label">Tipo de discapacidad</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="TipoDiscapacidad" CssClass="form-control" runat="server">
                                <asp:ListItem>Sensorial</asp:ListItem>
                                <asp:ListItem>Motríz</asp:ListItem>
                                <asp:ListItem>Intelectual</asp:ListItem>
                                <asp:ListItem>Mental</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <h5>Motivo, Acreditación e instancia oficial que otorga credencial sólo para Programa Jalisco Incluyente</h5>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="MotivoDiscapacidad"  CssClass="col-md-2 control-label">Motivo de la discapacidad</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="MotivoDiscapacidad" CssClass="form-control" runat="server">
                                <asp:ListItem>Porque nació asi</asp:ListItem>
                                <asp:ListItem>Por una enfermedad</asp:ListItem>
                                <asp:ListItem>Por un accidente</asp:ListItem>
                                <asp:ListItem>Por edad avanzada</asp:ListItem>
                                <asp:ListItem>Por otra causa. (Especifique)</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="EspecifiqueMotivo"  CssClass="col-md-2 control-label">Especifique:</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="EspecifiqueMotivo" CssClass="form-control" />
                         </div>                    
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AcreditacionDiscapacidad"  CssClass="col-md-2 control-label">Cuenta con una acreditación por una instancia oficial de la discapacidad que presenta:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="AcreditacionDiscapacidad" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AcreditacionMotivo"  CssClass="col-md-2 control-label">Motivo:</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="AcreditacionMotivo" CssClass="form-control" />
                         </div>                    
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="InstanciaOficial"  CssClass="col-md-2 control-label">Instancia oficial que otorga la credencial:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="InstanciaOficial" CssClass="form-control" runat="server">
                                <asp:ListItem>DIF Estatal</asp:ListItem>
                                <asp:ListItem>DIF Nacional</asp:ListItem>
                                 <asp:ListItem>COEDIS</asp:ListItem>
                                <asp:ListItem>IMSS</asp:ListItem>
                                 <asp:ListItem>CONADIS</asp:ListItem>
                                <asp:ListItem>Otra:</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="InstanciaOtra"  CssClass="col-md-2 control-label">Otra:</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="InstanciaOtra" CssClass="form-control" />
                         </div>                    
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Afiliado"  CssClass="col-md-2 control-label">Actualmente, ¿a qué institución está afiliada(o) o inscrito para recibir servicios de salud:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Afiliado" CssClass="form-control" runat="server">
                                <asp:ListItem>IMSS</asp:ListItem>
                                <asp:ListItem>ISSSTE</asp:ListItem>
                                 <asp:ListItem>Seguro popular</asp:ListItem>
                                <asp:ListItem>PEMEX, Defensa o Marina</asp:ListItem>
                                 <asp:ListItem>Seguro privado</asp:ListItem>
                                <asp:ListItem>Ninguna</asp:ListItem>
                                <asp:ListItem>Otra:</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AfiliadoOtra"  CssClass="col-md-2 control-label">Otra ¿cuál?:</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="AfiliadoOtra" CssClass="form-control" />
                         </div>                    
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ProblemasSalud"  CssClass="col-md-2 control-label">Cuando tiene problemas de salud, ¿en donde se atiende?:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ProblemasSalud" CssClass="form-control" runat="server">
                                <asp:ListItem>Centros de saludos y hospitales (Secretaría de salud)</asp:ListItem>
                                <asp:ListItem>Hospital o instituto (Secretaría de salud)</asp:ListItem>
                                <asp:ListItem>Seguro social o IMSS</asp:ListItem>
                                <asp:ListItem>IMSS - Oportunidades</asp:ListItem>
                                <asp:ListItem>ISSSTE</asp:ListItem>
                                <asp:ListItem>Otro servicio médico público (PEMEX, Defensa, Marina, DIF)</asp:ListItem>
                                 <asp:ListItem>Consultorios y hospitales privados</asp:ListItem>
                                <asp:ListItem>Curandero, hierbero, comadrona</asp:ListItem>
                                 <asp:ListItem>Se automedica</asp:ListItem>
                                <asp:ListItem>Cruz Verde / Cruz Roja</asp:ListItem>
                                <asp:ListItem>Consultorio de farmacias</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Farmacias"  CssClass="col-md-2 control-label">Farmacias ¿cuál(es)?:</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="Farmacias" CssClass="form-control" />
                         </div>                    
                    </div>

                                     
                    </div>
                   </section>
            </div>
        </div>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Ingresos">
                <ContentCollection>
                    <dx:ContentControl runat="server">

                         <div class="row">
                            <div class="col-md-8">
                                <section id="socioeconomico">
                                    <div class="form-horizontal">
                                        <h4>V.- Ingresos / Gastos.</h4>
                                        <hr />
                                        <asp:PlaceHolder ID="PlaceHolder3" runat="server" Visible="False">
                                            <p class="text-danger">
                                                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                                            </p>
                                        </asp:PlaceHolder>
                                        <h5>Discapacidad</h5>
                       <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="OcupacionIngresos"  CssClass="col-md-2 control-label">Ocupación</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="OcupacionIngresos" CssClass="form-control" runat="server">
                                <asp:ListItem>Hogar</asp:ListItem>
                                <asp:ListItem>Desempleado</asp:ListItem>
                                <asp:ListItem>Jornalero / albañil</asp:ListItem>
                                <asp:ListItem>Empleado / obrero</asp:ListItem>
                                <asp:ListItem>Jubilado</asp:ListItem>
                                <asp:ListItem>Estudiante</asp:ListItem>
                                <asp:ListItem>Ninguna</asp:ListItem>
                                <asp:ListItem>Cuenta propia</asp:ListItem>
                                <asp:ListItem>Otra</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="MesTrabajo"  CssClass="col-md-2 control-label">¿Durante el mes pasado trabajó?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="MesTrabajo" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ActualmenteTrabaja"  CssClass="col-md-2 control-label">¿Actualmente trabaja?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ActualmenteTrabaja" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                                          

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="TipoOficio"  CssClass="col-md-2 control-label">¿Cuál es su oficio, puesto o cargo?</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="TipoOficio" CssClass="form-control" />
                         </div>                    
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="IngresoMensualPersonalMA"  CssClass="col-md-2 control-label">Ingreso mensual personal del mes anterior</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="IngresoMensualPersonalMA" CssClass="form-control" />
                         </div>                    
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="IngresoMensualPersonalAA"  CssClass="col-md-2 control-label">Ingreso mensual personal actual</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="IngresoMensualPersonalAA" CssClass="form-control" />
                         </div>                    
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="IngresoMensualPersonalFA"  CssClass="col-md-2 control-label">Ingreso mensual familiar actual</asp:Label>
                           <div class="col-md-10">
                           <asp:TextBox runat="server" ID="IngresoMensualPersonalFA" CssClass="form-control"  />
                         </div>                    
                    </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="RecibeDinero"  CssClass="col-md-2 control-label">En el último año, recibió dinero por:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="RecibeDinero" CssClass="form-control" runat="server">
                                <asp:ListItem>Programa social</asp:ListItem>
                                <asp:ListItem>Ayuda de personas que viven dentro del pais</asp:ListItem>
                                <asp:ListItem>Le envían dinero de otro país (remesas)</asp:ListItem>
                                <asp:ListItem>Jubilación o pensión</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                   

                                     
                    </div>
                   </section>
            </div>
        </div>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Varios">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                         <div class="row">
                            <div class="col-md-8">
                                <section id="varios">
                                    <div class="form-horizontal">
                                        <h4>VI.- Seguridad alimentaria.</h4>
                                        <hr />
                                        <asp:PlaceHolder ID="PlaceHolder4" runat="server" Visible="False">
                                            <p class="text-danger">
                                                <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                                            </p>
                                        </asp:PlaceHolder>
                                        
                                       
                       <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ComioUV"  CssClass="col-md-2 control-label">En los últimos tres meses , por falta  de dinero o recursos, ¿Alguna de las personas de esta vivienda sólo comió una vez al día?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ComioUV" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ComioDD"  CssClass="col-md-2 control-label">En los últimos tres meses , por falta  de dinero o recursos, ¿Alguna de las personas de esta vivienda dejo de comer todo un día?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ComioDD" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <h4>VII.- Condiciones de vivienda.</h4>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ViviendaHabita"  CssClass="col-md-2 control-label">La vivienda que habita es:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ViviendaHabita" CssClass="form-control" runat="server">
                                <asp:ListItem>Casa independiente</asp:ListItem>
                                <asp:ListItem>Cuarto de vecindad</asp:ListItem>
                                <asp:ListItem>Departamento</asp:ListItem>
                                <asp:ListItem>Local mercantil o cuarto de azotea</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ViviendaPropia"  CssClass="col-md-2 control-label">Esta vivienda es:</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ViviendaPropia" CssClass="form-control" runat="server">
                                <asp:ListItem>Propia</asp:ListItem>
                                <asp:ListItem>Rentada</asp:ListItem>
                                 <asp:ListItem>Prestada</asp:ListItem>
                                <asp:ListItem>Intestada o en litigio</asp:ListItem>
                                
                            </asp:DropDownList>
                        </div>
                      </div>

                    <h5>¿De qué material es la mayor parte de la vivienda?</h5>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Pared"  CssClass="col-md-2 control-label">Pared o muros de esta vivienda</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Pared" CssClass="form-control" runat="server">
                                <asp:ListItem>Tierra</asp:ListItem>
                                <asp:ListItem>Cemento / Block</asp:ListItem>
                                <asp:ListItem>Adobe</asp:ListItem>
                                <asp:ListItem>Ladrillo</asp:ListItem>
                                <asp:ListItem>Mosaico</asp:ListItem>
                                <asp:ListItem>Madera</asp:ListItem>
                                <asp:ListItem>Lámina</asp:ListItem>
                                <asp:ListItem>Bóveda / Vigueria</asp:ListItem>
                                <asp:ListItem>Material de desecho / lámina de cartón</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Techo"  CssClass="col-md-2 control-label">Techo de la vivienda</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Techo" CssClass="form-control" runat="server">
                                <asp:ListItem>Tierra</asp:ListItem>
                                <asp:ListItem>Cemento / Block</asp:ListItem>
                                <asp:ListItem>Adobe</asp:ListItem>
                                <asp:ListItem>Ladrillo</asp:ListItem>
                                <asp:ListItem>Mosaico</asp:ListItem>
                                <asp:ListItem>Madera</asp:ListItem>
                                <asp:ListItem>Lámina</asp:ListItem>
                                <asp:ListItem>Bóveda / Vigueria</asp:ListItem>
                                <asp:ListItem>Material de desecho / lámina de cartón</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Piso"  CssClass="col-md-2 control-label">Piso de la vivienda</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Piso" CssClass="form-control" runat="server">
                                <asp:ListItem>Tierra</asp:ListItem>
                                <asp:ListItem>Cemento / Block</asp:ListItem>
                                <asp:ListItem>Adobe</asp:ListItem>
                                <asp:ListItem>Ladrillo</asp:ListItem>
                                <asp:ListItem>Mosaico</asp:ListItem>
                                <asp:ListItem>Madera</asp:ListItem>
                                <asp:ListItem>Lámina</asp:ListItem>
                                <asp:ListItem>Bóveda / Vigueria</asp:ListItem>
                                <asp:ListItem>Material de desecho / lámina de cartón</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                     <h4>VIII.- Equipamiento de la vivienda</h4>                      

                    <h5>En su vivienda cuenta con los siguientes servicios</h5>  
                                         
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="TelefonoFijo"  CssClass="col-md-2 control-label">Teléfono fijo</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="TelefonoFijo" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="TelefonoMovil"  CssClass="col-md-2 control-label">Teléfono móvil o celular</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="TelefonoMovil" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AguaEntubada"  CssClass="col-md-2 control-label">Agua entubada fuera de la vivienda, pero dentro del terreno</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="AguaEntubada" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                   <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Drenaje"  CssClass="col-md-2 control-label">Drenaje</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Drenaje" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="LuzE"  CssClass="col-md-2 control-label">Luz Eléctrica</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="LuzE" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Internet"  CssClass="col-md-2 control-label">Internet</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Internet" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>


                     <h5>En su vivienda cuenta con los siguientes bienes</h5>  
                                         
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="EstufaGE"  CssClass="col-md-2 control-label">Estufa de gas / electricidad</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="EstufaGE" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ReproductorDVD"  CssClass="col-md-2 control-label">Reproductor de DVD</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ReproductorDVD" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Automovil"  CssClass="col-md-2 control-label">Automóvil</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Automovil" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                   <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Camioneta"  CssClass="col-md-2 control-label">Camioneta</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Camioneta" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Refrigerador"  CssClass="col-md-2 control-label">Refrigerador</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Refrigerador" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Lavadora"  CssClass="col-md-2 control-label">Lavadora</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Lavadora" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>

                     
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Television"  CssClass="col-md-2 control-label">Television</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Television" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>
                     
                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Computadora"  CssClass="col-md-2 control-label">Computadora</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Computadora" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>   
                                        
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="HornoME"  CssClass="col-md-2 control-label">Horno de microondas / eléctrico</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="HornoME" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                               
                            </asp:DropDownList>
                        </div>
                      </div>                                    
                         
                        <h4>IX.- Redes de apoyo</h4>                      

                    <h5>Considera que si necesita</h5>  
                                         
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CuidenEnfermedad"  CssClass="col-md-2 control-label">pedirle ayuda a alguién para que la(o) cuiden a usted en una enfermedad, ¿le sería?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="CuidenEnfermedad" CssClass="form-control" runat="server">
                                <asp:ListItem>Fácil</asp:ListItem>
                                <asp:ListItem>Difícil</asp:ListItem>
                                <asp:ListItem>No aplica</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ConseguirTrabajo"  CssClass="col-md-2 control-label">pedir ayuda para conseguir trabajo, ¿le sería?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ConseguirTrabajo" CssClass="form-control" runat="server">
                                <asp:ListItem>Fácil</asp:ListItem>
                                <asp:ListItem>Difícil</asp:ListItem>
                                <asp:ListItem>No aplica</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>
                                        
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CuidenNinos"  CssClass="col-md-2 control-label">pedir ayuda para que cuiden a las(os) niñas(os) en este hogar, ¿le sería?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="CuidenNinos" CssClass="form-control" runat="server">
                                <asp:ListItem>Fácil</asp:ListItem>
                                <asp:ListItem>Difícil</asp:ListItem>
                                <asp:ListItem>No aplica</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AcompanenDoctor"  CssClass="col-md-2 control-label">pedir ayuda para que lo acompañen al doctor, ¿le sería?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="AcompanenDoctor" CssClass="form-control" runat="server">
                                <asp:ListItem>Fácil</asp:ListItem>
                                <asp:ListItem>Difícil</asp:ListItem>
                                <asp:ListItem>No aplica</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="DineroPrestado"  CssClass="col-md-2 control-label">pedir a alguien dinero prestado, ¿le sería?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="DineroPrestado" CssClass="form-control" runat="server">
                                <asp:ListItem>Fácil</asp:ListItem>
                                <asp:ListItem>Difícil</asp:ListItem>
                                <asp:ListItem>No aplica</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>


                    <h4>X.- Uso del tiempo</h4>                      

                    <h5>En el transcurso de una semana, ¿Cuanto tiempo dedica usted a? en horas</h5>  
                                         
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Trabajar"  CssClass="col-md-2 control-label">Trabajar (incluya todo el tiempo dedicado a su trabajo extradoméstico)</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Trabajar" CssClass="form-control" runat="server">
                                 <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                             <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                 <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>51</asp:ListItem>
                                <asp:ListItem>52</asp:ListItem>
                                <asp:ListItem>53</asp:ListItem>
                                <asp:ListItem>54</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>56</asp:ListItem>
                                <asp:ListItem>57</asp:ListItem>
                                <asp:ListItem>58</asp:ListItem>
                                <asp:ListItem>59</asp:ListItem>
                                 <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>61</asp:ListItem>
                                <asp:ListItem>62</asp:ListItem>
                                <asp:ListItem>63</asp:ListItem>
                                <asp:ListItem>64</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>66</asp:ListItem>
                                <asp:ListItem>67</asp:ListItem>
                                <asp:ListItem>68</asp:ListItem>
                                <asp:ListItem>69</asp:ListItem>
                                 <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>71</asp:ListItem>
                                <asp:ListItem>72</asp:ListItem>
                                <asp:ListItem>73</asp:ListItem>
                                <asp:ListItem>74</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>76</asp:ListItem>
                                <asp:ListItem>77</asp:ListItem>
                                <asp:ListItem>78</asp:ListItem>
                                <asp:ListItem>79</asp:ListItem>
                                 <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>81</asp:ListItem>
                                <asp:ListItem>82</asp:ListItem>
                                <asp:ListItem>83</asp:ListItem>
                                <asp:ListItem>84</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>86</asp:ListItem>
                                <asp:ListItem>87</asp:ListItem>
                                <asp:ListItem>88</asp:ListItem>
                                <asp:ListItem>89</asp:ListItem>
                                 <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>91</asp:ListItem>
                                <asp:ListItem>92</asp:ListItem>
                                <asp:ListItem>93</asp:ListItem>
                                <asp:ListItem>94</asp:ListItem>
                                <asp:ListItem>95</asp:ListItem>
                                <asp:ListItem>96</asp:ListItem>
                                <asp:ListItem>97</asp:ListItem>
                                <asp:ListItem>98</asp:ListItem>
                                <asp:ListItem>99</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Estudiar"  CssClass="col-md-2 control-label">Estudiar y hacer actividades relacionadas con el estudio, (ir a la escuela, hacer tareas, asistir a lugares como museos como parte de las tareas escolares, etc)</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Estudiar" CssClass="form-control" runat="server">
                                 <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                             <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                 <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>51</asp:ListItem>
                                <asp:ListItem>52</asp:ListItem>
                                <asp:ListItem>53</asp:ListItem>
                                <asp:ListItem>54</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>56</asp:ListItem>
                                <asp:ListItem>57</asp:ListItem>
                                <asp:ListItem>58</asp:ListItem>
                                <asp:ListItem>59</asp:ListItem>
                                 <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>61</asp:ListItem>
                                <asp:ListItem>62</asp:ListItem>
                                <asp:ListItem>63</asp:ListItem>
                                <asp:ListItem>64</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>66</asp:ListItem>
                                <asp:ListItem>67</asp:ListItem>
                                <asp:ListItem>68</asp:ListItem>
                                <asp:ListItem>69</asp:ListItem>
                                 <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>71</asp:ListItem>
                                <asp:ListItem>72</asp:ListItem>
                                <asp:ListItem>73</asp:ListItem>
                                <asp:ListItem>74</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>76</asp:ListItem>
                                <asp:ListItem>77</asp:ListItem>
                                <asp:ListItem>78</asp:ListItem>
                                <asp:ListItem>79</asp:ListItem>
                                 <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>81</asp:ListItem>
                                <asp:ListItem>82</asp:ListItem>
                                <asp:ListItem>83</asp:ListItem>
                                <asp:ListItem>84</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>86</asp:ListItem>
                                <asp:ListItem>87</asp:ListItem>
                                <asp:ListItem>88</asp:ListItem>
                                <asp:ListItem>89</asp:ListItem>
                                 <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>91</asp:ListItem>
                                <asp:ListItem>92</asp:ListItem>
                                <asp:ListItem>93</asp:ListItem>
                                <asp:ListItem>94</asp:ListItem>
                                <asp:ListItem>95</asp:ListItem>
                                <asp:ListItem>96</asp:ListItem>
                                <asp:ListItem>97</asp:ListItem>
                                <asp:ListItem>98</asp:ListItem>
                                <asp:ListItem>99</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>
                                        
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AtenderNA"  CssClass="col-md-2 control-label">Cuidar, atender sin pago y de manera exclusiva a niños, ancianos, enfermos, personas con algún tipo de discapacidad, (bañar, cambiar, traslados, etc)</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="AtenderNA" CssClass="form-control" runat="server">
                                 <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                             <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                 <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>51</asp:ListItem>
                                <asp:ListItem>52</asp:ListItem>
                                <asp:ListItem>53</asp:ListItem>
                                <asp:ListItem>54</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>56</asp:ListItem>
                                <asp:ListItem>57</asp:ListItem>
                                <asp:ListItem>58</asp:ListItem>
                                <asp:ListItem>59</asp:ListItem>
                                 <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>61</asp:ListItem>
                                <asp:ListItem>62</asp:ListItem>
                                <asp:ListItem>63</asp:ListItem>
                                <asp:ListItem>64</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>66</asp:ListItem>
                                <asp:ListItem>67</asp:ListItem>
                                <asp:ListItem>68</asp:ListItem>
                                <asp:ListItem>69</asp:ListItem>
                                 <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>71</asp:ListItem>
                                <asp:ListItem>72</asp:ListItem>
                                <asp:ListItem>73</asp:ListItem>
                                <asp:ListItem>74</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>76</asp:ListItem>
                                <asp:ListItem>77</asp:ListItem>
                                <asp:ListItem>78</asp:ListItem>
                                <asp:ListItem>79</asp:ListItem>
                                 <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>81</asp:ListItem>
                                <asp:ListItem>82</asp:ListItem>
                                <asp:ListItem>83</asp:ListItem>
                                <asp:ListItem>84</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>86</asp:ListItem>
                                <asp:ListItem>87</asp:ListItem>
                                <asp:ListItem>88</asp:ListItem>
                                <asp:ListItem>89</asp:ListItem>
                                 <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>91</asp:ListItem>
                                <asp:ListItem>92</asp:ListItem>
                                <asp:ListItem>93</asp:ListItem>
                                <asp:ListItem>94</asp:ListItem>
                                <asp:ListItem>95</asp:ListItem>
                                <asp:ListItem>96</asp:ListItem>
                                <asp:ListItem>97</asp:ListItem>
                                <asp:ListItem>98</asp:ListItem>
                                <asp:ListItem>99</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Quehacer"  CssClass="col-md-2 control-label">Realizar el quehacer de su hogar, (lavar, planchar, cocinar, lavar trastes, ropa, barrer, cuidar animales, etc)</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Quehacer" CssClass="form-control" runat="server">
                                 <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                             <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                 <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>51</asp:ListItem>
                                <asp:ListItem>52</asp:ListItem>
                                <asp:ListItem>53</asp:ListItem>
                                <asp:ListItem>54</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>56</asp:ListItem>
                                <asp:ListItem>57</asp:ListItem>
                                <asp:ListItem>58</asp:ListItem>
                                <asp:ListItem>59</asp:ListItem>
                                 <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>61</asp:ListItem>
                                <asp:ListItem>62</asp:ListItem>
                                <asp:ListItem>63</asp:ListItem>
                                <asp:ListItem>64</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>66</asp:ListItem>
                                <asp:ListItem>67</asp:ListItem>
                                <asp:ListItem>68</asp:ListItem>
                                <asp:ListItem>69</asp:ListItem>
                                 <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>71</asp:ListItem>
                                <asp:ListItem>72</asp:ListItem>
                                <asp:ListItem>73</asp:ListItem>
                                <asp:ListItem>74</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>76</asp:ListItem>
                                <asp:ListItem>77</asp:ListItem>
                                <asp:ListItem>78</asp:ListItem>
                                <asp:ListItem>79</asp:ListItem>
                                 <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>81</asp:ListItem>
                                <asp:ListItem>82</asp:ListItem>
                                <asp:ListItem>83</asp:ListItem>
                                <asp:ListItem>84</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>86</asp:ListItem>
                                <asp:ListItem>87</asp:ListItem>
                                <asp:ListItem>88</asp:ListItem>
                                <asp:ListItem>89</asp:ListItem>
                                 <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>91</asp:ListItem>
                                <asp:ListItem>92</asp:ListItem>
                                <asp:ListItem>93</asp:ListItem>
                                <asp:ListItem>94</asp:ListItem>
                                <asp:ListItem>95</asp:ListItem>
                                <asp:ListItem>96</asp:ListItem>
                                <asp:ListItem>97</asp:ListItem>
                                <asp:ListItem>98</asp:ListItem>
                                <asp:ListItem>99</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Diversion"  CssClass="col-md-2 control-label">Cuánto tiempo le quedo para realizar actividades que a usted le gustan, (hacer deportes, ir al cine, leer, salir con amigos, escuchar música, ver televisión, descansar, etc)</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Diversion" CssClass="form-control" runat="server">
                                 <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                             <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                 <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>51</asp:ListItem>
                                <asp:ListItem>52</asp:ListItem>
                                <asp:ListItem>53</asp:ListItem>
                                <asp:ListItem>54</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>56</asp:ListItem>
                                <asp:ListItem>57</asp:ListItem>
                                <asp:ListItem>58</asp:ListItem>
                                <asp:ListItem>59</asp:ListItem>
                                 <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>61</asp:ListItem>
                                <asp:ListItem>62</asp:ListItem>
                                <asp:ListItem>63</asp:ListItem>
                                <asp:ListItem>64</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>66</asp:ListItem>
                                <asp:ListItem>67</asp:ListItem>
                                <asp:ListItem>68</asp:ListItem>
                                <asp:ListItem>69</asp:ListItem>
                                 <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>71</asp:ListItem>
                                <asp:ListItem>72</asp:ListItem>
                                <asp:ListItem>73</asp:ListItem>
                                <asp:ListItem>74</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>76</asp:ListItem>
                                <asp:ListItem>77</asp:ListItem>
                                <asp:ListItem>78</asp:ListItem>
                                <asp:ListItem>79</asp:ListItem>
                                 <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>81</asp:ListItem>
                                <asp:ListItem>82</asp:ListItem>
                                <asp:ListItem>83</asp:ListItem>
                                <asp:ListItem>84</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>86</asp:ListItem>
                                <asp:ListItem>87</asp:ListItem>
                                <asp:ListItem>88</asp:ListItem>
                                <asp:ListItem>89</asp:ListItem>
                                 <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>91</asp:ListItem>
                                <asp:ListItem>92</asp:ListItem>
                                <asp:ListItem>93</asp:ListItem>
                                <asp:ListItem>94</asp:ListItem>
                                <asp:ListItem>95</asp:ListItem>
                                <asp:ListItem>96</asp:ListItem>
                                <asp:ListItem>97</asp:ListItem>
                                <asp:ListItem>98</asp:ListItem>
                                <asp:ListItem>99</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                                               
                     <h4>XI.- Concentrado en apoyos gubernamentales</h4>                      

                      <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ProgramaEstatal"  CssClass="col-md-2 control-label">¿Recibe usted u otro integrante de su hogar apoyo de algún otro programa estatal?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ProgramaEstatal" CssClass="form-control" runat="server">
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                                
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Cuantos"  CssClass="col-md-2 control-label">¿Cuántos?</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="Cuantos" CssClass="form-control" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                 <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                             <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                 <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>51</asp:ListItem>
                                <asp:ListItem>52</asp:ListItem>
                                <asp:ListItem>53</asp:ListItem>
                                <asp:ListItem>54</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                                <asp:ListItem>56</asp:ListItem>
                                <asp:ListItem>57</asp:ListItem>
                                <asp:ListItem>58</asp:ListItem>
                                <asp:ListItem>59</asp:ListItem>
                                 <asp:ListItem>60</asp:ListItem>
                                <asp:ListItem>61</asp:ListItem>
                                <asp:ListItem>62</asp:ListItem>
                                <asp:ListItem>63</asp:ListItem>
                                <asp:ListItem>64</asp:ListItem>
                                <asp:ListItem>65</asp:ListItem>
                                <asp:ListItem>66</asp:ListItem>
                                <asp:ListItem>67</asp:ListItem>
                                <asp:ListItem>68</asp:ListItem>
                                <asp:ListItem>69</asp:ListItem>
                                 <asp:ListItem>70</asp:ListItem>
                                <asp:ListItem>71</asp:ListItem>
                                <asp:ListItem>72</asp:ListItem>
                                <asp:ListItem>73</asp:ListItem>
                                <asp:ListItem>74</asp:ListItem>
                                <asp:ListItem>75</asp:ListItem>
                                <asp:ListItem>76</asp:ListItem>
                                <asp:ListItem>77</asp:ListItem>
                                <asp:ListItem>78</asp:ListItem>
                                <asp:ListItem>79</asp:ListItem>
                                 <asp:ListItem>80</asp:ListItem>
                                <asp:ListItem>81</asp:ListItem>
                                <asp:ListItem>82</asp:ListItem>
                                <asp:ListItem>83</asp:ListItem>
                                <asp:ListItem>84</asp:ListItem>
                                <asp:ListItem>85</asp:ListItem>
                                <asp:ListItem>86</asp:ListItem>
                                <asp:ListItem>87</asp:ListItem>
                                <asp:ListItem>88</asp:ListItem>
                                <asp:ListItem>89</asp:ListItem>
                                 <asp:ListItem>90</asp:ListItem>
                                <asp:ListItem>91</asp:ListItem>
                                <asp:ListItem>92</asp:ListItem>
                                <asp:ListItem>93</asp:ListItem>
                                <asp:ListItem>94</asp:ListItem>
                                <asp:ListItem>95</asp:ListItem>
                                <asp:ListItem>96</asp:ListItem>
                                <asp:ListItem>97</asp:ListItem>
                                <asp:ListItem>98</asp:ListItem>
                                <asp:ListItem>99</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>
                                    <h5>¿Cuáles?</h5>    
                   <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Cuales1"  CssClass="col-md-2 control-label">1.-</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Cuales1" CssClass="form-control"  />
                               </div> 
                            <asp:Label runat="server" AssociatedControlID="Cuales2"  CssClass="col-md-2 control-label">2.-</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Cuales2" CssClass="form-control"  />
                               </div> 
                                <asp:Label runat="server" AssociatedControlID="Cuales3"  CssClass="col-md-2 control-label">3.-</asp:Label>
                           <div class="col-md-10">
                             <asp:TextBox runat="server" ID="Cuales3" CssClass="form-control"  />
                                </div>       
                          <asp:Label runat="server" AssociatedControlID="Cuales4"  CssClass="col-md-2 control-label">4.-</asp:Label>
                           <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Cuales4" CssClass="form-control"  />
                         </div>  
                    </div>

                                                                                                                                              
                    </div>
                   </section>
            </div>
        </div>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>

</asp:Content>

