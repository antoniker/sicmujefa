<%@ Page Title="" Language="VB" MasterPageFile="~/Main.master" AutoEventWireup="false" CodeFile="Estadistica.aspx.vb" Inherits="Estadistica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <h4>Estadísticos</h4>                      

                    <h5>Selecciona el tipo de estadística a obtener</h5>  
                                         
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CuidenEnfermedad"  CssClass="col-md-2 control-label">Apoyos por región</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="CuidenEnfermedad" CssClass="form-control" runat="server">
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ConseguirTrabajo"  CssClass="col-md-2 control-label">Apoyos por municipio</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="ConseguirTrabajo" CssClass="form-control" runat="server">
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>
                                        
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CuidenNinos"  CssClass="col-md-2 control-label">Porcentaje de apoyos de mujeres emprendedoras</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="CuidenNinos" CssClass="form-control" runat="server">
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="AcompanenDoctor"  CssClass="col-md-2 control-label">Negocios por zona</asp:Label>
                           <div class="col-md-10">
                            <asp:DropDownList ID="AcompanenDoctor" CssClass="form-control" runat="server">
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>

    <asp:Image ID="Image1" runat="server" ImageUrl ="grafica.png" /> 

</asp:Content>

