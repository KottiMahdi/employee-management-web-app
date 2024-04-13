﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddContact.aspx.cs" Inherits="AddContact" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <script type="text/javascript">
            function CliAddContact() {

                callbacAjouter.PerformCallback();
            }




            function EndCallBAjout(s, e) {


                var Choix = s.cp_Insert;
           
                if (Choix == "Ajouter") {
                    txterror.SetText('Ajouté avec succès');
                    PopupAlerts.Show();
                }

                else {
                    txterror.SetText('Errore');
                    PopupAlerts.Show();
                    
                }

            }

        </script>


        <div>
           <dx:ASPxFormLayout runat="server" Width="100%"  ID="formLayout" ColumnCount="1" DataSourceID="SqlDataSource1" Theme="Glass" AlignItemCaptionsInAllGroups="True"  > 
                        <Items>

                            <dx:LayoutGroup Caption="Ajouter Entreprise" ColCount="2" >
                                <Items>

                            <dx:LayoutItem    Caption="Civ">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxComboBox ID="cmbCiv" runat="server" TextField="Civilite"  ValueField="ID_Civ" DataSourceID="SqlCivilit">
                                        </dx:ASPxComboBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                           
                            <dx:LayoutItem  Caption="Nom"  >
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxTextBox ID="TxtNom" runat="server" Width="170px">
                                        </dx:ASPxTextBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                            <dx:LayoutItem  Caption="Prenom"  >
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxTextBox ID="TxtPrenom" runat="server" Width="170px">
                                        </dx:ASPxTextBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                            <dx:LayoutItem  Caption="Téléphone"  >
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxTextBox ID="TxtTelephone" runat="server" Number="0">
                                        </dx:ASPxTextBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                            <dx:LayoutItem  Caption="Mobile" >
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxTextBox ID="TxtMobile" runat="server" Number="0">
                                        </dx:ASPxTextBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                            <dx:LayoutItem   Caption="Email">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxTextBox ID="TxtEmails" runat="server" Width="170px">
                                        </dx:ASPxTextBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                            <dx:LayoutItem   Caption="Fonction">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxComboBox ID="cmbFonction" runat="server" DataSourceID="sqlFonction" TextField="Fonction"  ValueField="ID_Fonction">
                                        </dx:ASPxComboBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                            
                            <dx:LayoutItem  Caption="Suivi_par"  >
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer runat="server">
                                        <dx:ASPxTextBox ID="txtsuivi" runat="server" Width="170px">
                                        </dx:ASPxTextBox>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>

                                    </Items>
                            </dx:LayoutGroup>

                            <dx:LayoutGroup  ShowCaption="False"  ColumnSpan="1" >
                              
                                <Items>
                                    <dx:LayoutItem ShowCaption="False">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <table style="width:100% ;text-align:right" >
                                                    <tr>
                                                        <td  style="text-align:right" >
                                                            <dx:ASPxButton ID="ASPxButton1"  Width="90px" runat="server" AutoPostBack="false" Text="Valider">
                                                                  <ClientSideEvents Click="CliAddContact" />
                                                            </dx:ASPxButton>
                                                            </td>
                                                        <td style="width:100px" >
                                                            <dx:ASPxButton ID="ASPxButton" Width="90px" runat="server" Text="Fermer">
                                                                 <ClientSideEvents Click="function(s, e) {
                                                                               parent.window.popupWind.Hide(); 
                                                                    }
                                                                    
                                                                    " />
                                                            </dx:ASPxButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                        </Items>
                            </dx:LayoutGroup>
                        </Items>
                    </dx:ASPxFormLayout>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>" SelectCommand="GetContact" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="ID_Entreprise" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlCivilit" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                 SelectCommand="GetCiv" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="sqlFonction" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                 SelectCommand="GetFonction" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="sqlEntreprise" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                 SelectCommand="GetEntreprise" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </div>

          <dx:ASPxCallback ID="callbacAjouter" ClientInstanceName="callbacAjouter" OnCallback="callbacAjouter_Callback" runat="server">
                <ClientSideEvents EndCallback="function(s, e) {
                                                                              EndCallBAjout(s,e); 
                                                                    }
                                                                    
                                                                    "  />
            </dx:ASPxCallback>

         
        <dx:ASPxPopupControl ID="PopupAlerts" ClientInstanceName="PopupAlerts" AutoUpdatePosition="false"
        runat="server" Theme="Glass" Width="400px" HeaderText="Information"
        Modal="True"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        <HeaderImage Url="~/Image/Session.jpg" Width="25">
        </HeaderImage>

        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server">




                <table width="100%">
                    <tr align="center">

                        <td>
                            <dx:ASPxLabel ID="txterror" runat="server" ClientInstanceName="txterror" ForeColor="Red"></dx:ASPxLabel>
                        </td>

                    </tr>

                    <tr>
                        <td align="right">
                            <dx:ASPxButton ID="ASPxButton14" runat="server" Text="Fermer" Width="100%" AutoPostBack="False"
                                Theme="Glass">
                                <ClientSideEvents Click="function(s, e) {
                                                  window.parent.GridRessouerce.PerformCallback();
                                                   PopupAlerts.Hide();  	
                                                   }"></ClientSideEvents>
                            </dx:ASPxButton>
                        </td>
                    </tr>
                </table>
            </dx:PopupControlContentControl>

        </ContentCollection>
    </dx:ASPxPopupControl>
    </form>
</body>
</html>
