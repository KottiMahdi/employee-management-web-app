﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjoutEntreprise.aspx.cs" Inherits="AjoutEntreprise" %>
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
             function CliAjoutEntreprise() {

                callbacAjouter.PerformCallback();
            }




            function EndCallBAjout(s, e) {


                var Choix = s.cp_Insert;
                 alert(1)
                if (Choix == "Ajouter") {
                    alert()
                    txterror.SetText('Ajouter avec succès');
                    PopupAlerts.Show();
                }

                else {
                    txterror.SetText('Errore');
                    PopupAlerts.Show();
                    
                }

            }

        </script>
        <div>
             <dx:ASPxFormLayout runat="server" Width="100%" ID="formLayout" Theme="Glass">
                        <Items>
                            <dx:LayoutGroup Caption="Ajouter une entreprise" ColCount="2" >
                              
                                <Items>
                                    <%--<dx:LayoutItem Caption="Entreprise">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="TxtEntreprise" runat="server">
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>--%>
                                    <dx:LayoutItem Caption="Nom">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="TxtNom" runat="server" Width="170px">
                                        </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Ville">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtVille" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Téléphone">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtTelephone" >
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Pays">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtPays" >
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Fax">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtFax" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Site_internet">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtSite_internet" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Adresse">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtAdresse" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Groupe">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxComboBox ID="cmbGroupe" runat="server" DataSourceID="sqlGroupe" TextField="Groupe" ValueField="ID_Groupe">
                                                </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Adresse_2">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtAdresse_2" >
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Etat">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxComboBox ID="cmbEtat" runat="server" DataSourceID="sqlEtat" TextField="Etat" ValueField="ID_Etat" >
                                                </dx:ASPxComboBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Code_postal">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox runat="server" ID="TxtCode_postal" >
                                                    <ValidationSettings RequiredField-IsRequired="true" Display="Dynamic" >
<RequiredField IsRequired="True"></RequiredField>
                                                    </ValidationSettings>
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
                                                            <dx:ASPxButton ID="ASPxButton1" ClientVisible="true" Width="90px" AutoPostBack="false" runat="server" Text="Valider">
                                                                <ClientSideEvents Click="CliAjoutEntreprise" />
                                                            </dx:ASPxButton>
                                                            </td>
                                                        <td style="width:100px" >
                                                            <dx:ASPxButton ID="ASPxButton" Width="90px" runat="server" AutoPostBack="false" Text="Fermer">
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
            
           
             <%--<dx:LayoutItem Caption="Entreprise">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="TxtEntreprise" runat="server">
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>--%>
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
                                                  window.parent.gridSociete.PerformCallback();
                                                   PopupAlerts.Hide();  	
                                                   }"></ClientSideEvents>
                            </dx:ASPxButton>
                        </td>
                    </tr>
                </table>
            </dx:PopupControlContentControl>

        </ContentCollection>
    </dx:ASPxPopupControl>

         <asp:SqlDataSource ID="sqlEtat" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>" SelectCommand="GetEtat" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

         <br />

         <asp:SqlDataSource ID="sqlGroupe" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>" SelectCommand="GetGroupeEntreprise" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    </form>
</body>
</html>
