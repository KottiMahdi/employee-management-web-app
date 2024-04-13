<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultRessources.aspx.cs" Inherits="DefaultRessources" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <script type="text/javascript">

            function RowChangedSociete() {
                gridSociete.GetRowValues(gridSociete.GetFocusedRowIndex(), 'ID_Entreprise', SelectItem);
            }

            function SelectItem(values) {
                GridRessouerce.PerformCallback(values);
            }



        </script>
        <script type="text/javascript">

            function GridMenuDetaiSerItemClick(e) {
                if (e.item == null) return;
                var name = e.item.name;
                if (name == "AddEntr") window.parent.AddEntreprise();
                if (name == "AddContact") AddContact();
                if (name == "DetailEntr") showDetailEntr();



                if (name == "DeletEntre") showDeletEntre();
                if (name == "ModEntr") showModEntr();

            }



            function GridMenuDetaiEvenmItemClick(e) {
                if (e.item == null) return;
                var name = e.item.name;

                if (name == "DetailEven") showDetailEven();
                if (name == "ModifEven") showModifEven();

            }


            

            function GridMenuAjoutEvenmItemClick(e) {
                if (e.item == null) return;
                var name = e.item.name;

                if (name == "AddEven") AddEven();
               


            }

            function AddEven() {

                GridRessouerce.GetRowValues(GridRessouerce.GetFocusedRowIndex(), 'ID_Contact', SelectAddEvenement);

            }

            function SelectAddEvenement(Values) {

                window.parent.Ajouter_Evenement(Values)

            }

            function ModifEven() {

                GridRessouerce.GetRowValues(GridRessouerce.GetFocusedRowIndex(), 'ID_Contact', SelectModifEvenement);

            }

            function SelectModifEvenement(Values) {

                window.parent.Modifier_Evenement(Values)

            }
            function DetailEven() {

                GridRessouerce.GetRowValues(GridRessouerce.GetFocusedRowIndex(), 'ID_Evenement', SelectDetailEvenement);

            }

            function SelectDetailEvenement(Values) {

                window.parent.DetailEvenement(Values)

            }

            function CallbackInsert() {

                window.parent.AddEntreprise();
            }
            function AddContact() {

                gridSociete.GetRowValues(gridSociete.GetFocusedRowIndex(), 'ID_Entreprise', SelectAddContac);

            }

            function SelectAddContac(Values) {

                window.parent.AddContact(Values)

            }


            function AddEntr() {

                gridSociete.GetRowValues(gridSociete.GetFocusedRowIndex(), 'ID_Entreprise', SelectAddEntreprise);

            }

            function SelectAddEntreprise(Values) {

                window.parent.AjoutEntreprise(Values)

            }

            function showModEntr() {

                gridSociete.GetRowValues(gridSociete.GetFocusedRowIndex(), 'ID_Entreprise', SelectShowUpdateEntreprise);
            }
            function SelectShowUpdateEntreprise(value) {

                window.parent.ModifierEntreprise(value);

            }


            function showDeletEntre() {


                gridSociete.GetRowValues(gridSociete.GetFocusedRowIndex(), 'Nom', SelectshowSuppEntre);

            }
            function SelectshowSuppEntre(value) {


                txterror.SetText("Souhaitez-vous réellement supprimer " + value + " ? ");
                PopupAlerts.Show();
            }


            function EndcallbacSupprimer(s, e) {



                var choix = s.cp_Exist;

                if (choix == "Supp") {
                    txterrorSuc.SetText("Supprimer avec succès");
                    PopupAlertsSuc.Show();
                }
                if (choix == "Exist") {
                    txterrorVali.SetText("Attention vous êtes sur le point de supprimer l'intégralité de la fiche entreprise.");
                    PopupValider.Show();




                }






            }

            function showDetailEntr() {

                gridSociete.GetRowValues(gridSociete.GetFocusedRowIndex(), 'ID_Entreprise', SelectShowItemEntr);

            }

            function SelectShowItemEntr(value) {

                window.parent.DetailEntreprise(value);


            }


            function CallEven() {
                gridEven.PerformCallback();
            }

        </script>


        <dx:ASPxPopupMenu ID="ASPxPopupDetailEvenementMenu" runat="server" ClientInstanceName="ASPxPopupDetailEvenementMenu" CssPostfix="Glass" Theme="Glass">
            <Items>


                <dx:MenuItem Name="DetailEven" Text="Detail Evenement">
                    <Image Height="16px" Url="~/Image/details-40.png" Width="16px">
                     </Image>
                </dx:MenuItem>
                 <dx:MenuItem Name="ModEntr" Text="Modifier Evenement">
                   <Image Height="16px" Url="~/Image/Add.png" Width="16px">
                  </Image>
              </dx:MenuItem>
            </Items>
            <SubMenuStyle GutterWidth="0px" />
            <ClientSideEvents ItemClick="function(s, e) {GridMenuDetaiEvenmItemClick(e);}" />
        </dx:ASPxPopupMenu>


        <dx:ASPxPopupMenu ID="ASPxPopupDetailEvenMenu" runat="server" ClientInstanceName="ASPxPopupDetailEvenMenu" CssPostfix="Glass" Theme="Glass">
            <Items>


                <dx:MenuItem Name="AddEven" Text="Ajouter Evenement">
                    <Image Height="16px" Url="~/Image/action.png" Width="16px">
                    </Image>
                </dx:MenuItem>
            </Items>
            <SubMenuStyle GutterWidth="0px" />
            <ClientSideEvents ItemClick="function(s, e) {GridMenuAjoutEvenmItemClick(e);}" />
        </dx:ASPxPopupMenu>
        <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" Theme="Glass" Width="100%" Height="100%"
            FullscreenMode="True"
            ShowCollapseBackwardButton="True" ShowCollapseForwardButton="True">
            <Panes>
                <dx:SplitterPane Size="25%">

                    <Panes>
                        <dx:SplitterPane>
                            <ContentCollection>
                                <dx:SplitterContentControl runat="server">

                                    <dx:ASPxPopupMenu ID="ASPxPopupDetailSErMenu" runat="server" ClientInstanceName="ASPxPopupDetailSErMenu" CssPostfix="Glass" Theme="Glass">
                                        <Items>

                                            <dx:MenuItem Name="DetailEntr" Text="Entreprise">
                                                <Image Height="16px" Url="~/Image/action.png" Width="16px"></Image>


                                                <Items>
                                                    <dx:MenuItem Name="DetailEntr" Text="Détails Entreprise">
                                                        <Image Height="16px" Url="~/Image/details-40.png" Width="16px">
                                                        </Image>
                                                    </dx:MenuItem>
                                                    <dx:MenuItem Name="AddEntr" Text="Ajouter Entreprise">
                                                        <Image Height="16px" Url="~/Image/Add.png" Width="16px">
                                                        </Image>
                                                    </dx:MenuItem>
                                                    <dx:MenuItem Name="ModEntr" Text="Modifier Entreprise">
                                                        <Image Height="16px" Url="~/Image/Add.png" Width="16px">
                                                        </Image>
                                                    </dx:MenuItem>
                                                    <dx:MenuItem Name="DeletEntre" Text="Supprimer Entreprise">
                                                        <Image Height="16px" Url="~/Image/Delete_32x32.png" Width="16px">
                                                        </Image>
                                                    </dx:MenuItem>
                                                </Items>



                                            </dx:MenuItem>
                                            <dx:MenuItem Name="AddContact" Text="Ajouter Contact">
                                                <Image Height="16px" Url="~/Image/action.png" Width="16px">
                                                </Image>
                                            </dx:MenuItem>
                                        </Items>
                                        <SubMenuStyle GutterWidth="0px" />
                                        <ClientSideEvents ItemClick="function(s, e) {GridMenuDetaiSerItemClick(e);}" />
                                    </dx:ASPxPopupMenu>

                                    <dx:ASPxGridView ID="gridSociete" ClientInstanceName="gridSociete" runat="server" AutoGenerateColumns="False"
                                        DataSourceID="SqlDataSocieteDetail" OnCustomCallback="gridSociete_CustomCallback" Theme="Glass" Width='100%' KeyFieldName="ID_Entreprise">
                                        <ClientSideEvents Init="function(s, e) { 
                      var popup = window.parent; 
                      popup.window['gridSociete'] = gridSociete;}"
                                            FocusedRowChanged="RowChangedSociete" ContextMenu="function(s, e) {
                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent);
   
                          if(e.objectType == 'row'){
                           gridSociete.SetFocusedRowIndex(e.index);
                           ASPxPopupDetailSErMenu.ShowAtPos(x,y); 
                                                          }
                            }" />
                                        <SettingsSearchPanel Visible="True" />
                                        <SettingsBehavior AllowFocusedRow="true" />
                                        <Toolbars>
                                            <dx:GridViewToolbar>
                                                <SettingsAdaptivity Enabled="true" EnableCollapseToSideMenu="true" EnableCollapseRootItemsToIcons="true" />

                                                <Items>
                                                    <dx:GridViewToolbarItem Alignment="Right" Command="New">
                                                        <Template>
                                                            <dx:ASPxButton HorizontalAlign="Center" runat="server" Text=" " RenderMode="Link" AutoPostBack="false">
                                                                <Image Url="Image/add_large.png" Width="25px"></Image>
                                                                <ClientSideEvents Click="CallbackInsert" />
                                                            </dx:ASPxButton>

                                                        </Template>
                                                    </dx:GridViewToolbarItem>

                                                </Items>
                                            </dx:GridViewToolbar>
                                        </Toolbars>
                                        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />

                                        <Columns>

                                            <dx:GridViewDataTextColumn Visible="false" FieldName="ID_Entreprise" ReadOnly="True" VisibleIndex="1" ShowInCustomizationForm="True"
                                                Caption="Entr">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="Nom" VisibleIndex="2" ShowInCustomizationForm="True" Caption="Entr">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>

                                        <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" />
                                    </dx:ASPxGridView>

                                    <asp:SqlDataSource ID="SqlDataSocieteDetail" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                                        SelectCommand="GetEntreprise" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


                                </dx:SplitterContentControl>
                            </ContentCollection>
                        </dx:SplitterPane>
                    </Panes>


                    <ContentCollection>
                        <dx:SplitterContentControl runat="server"></dx:SplitterContentControl>
                    </ContentCollection>


                </dx:SplitterPane>
                <dx:SplitterPane>

                    <Panes>
                        <dx:SplitterPane Size="41%">
                            <Panes>
                                <dx:SplitterPane>
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                            <dx:ASPxGridView ID="GridRessouerce" runat="server" AutoGenerateColumns="False" ClientInstanceName="GridRessouerce"
                                                DataSourceID="SqlDataContact" KeyFieldName="ID_Contact" OnLoad="GridRessouerce_Load" OnCustomCallback="GridRessouerce_CustomCallback" Theme="Glass" Width="100%">
                                                <ClientSideEvents FocusedRowChanged="CallEven" Init="function(s, e) { 
                      var popup = window.parent; 
                      popup.window['GridRessouerce'] = GridRessouerce;}"
                                                    ContextMenu="function(s, e) {
                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent);
   
                          if(e.objectType == 'row'){
                           GridRessouerce.SetFocusedRowIndex(e.index);
                           ASPxPopupDetailEvenMenu.ShowAtPos(x,y); 
                                                          }
                            }" />




                                                <Columns>

                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="false" VisibleIndex="0" Width="30px">
                                                    </dx:GridViewCommandColumn>

                                                    <dx:GridViewDataTextColumn FieldName="ID_Contact" ReadOnly="True" VisibleIndex="1" Visible="False">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Nom" VisibleIndex="3">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Prenom" VisibleIndex="4">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Telephone" Width="70px" VisibleIndex="5">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Mobile" Width="70px" VisibleIndex="6">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="E_mail" VisibleIndex="7">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Suivi_par" VisibleIndex="10">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataComboBoxColumn Caption="Civ" Width="50px" FieldName="ID_Civ" VisibleIndex="2" ShowInCustomizationForm="True">
                                                        <PropertiesComboBox DataSourceID="Civilite" TextField="Civilite" ValueField="ID_Civ">
                                                        </PropertiesComboBox>
                                                    </dx:GridViewDataComboBoxColumn>
                                                    <dx:GridViewDataComboBoxColumn Caption="Fonction" FieldName="ID_Fonction" VisibleIndex="8" ShowInCustomizationForm="True">
                                                        <PropertiesComboBox DataSourceID="Fonction" TextField="Fonction" ValueField="ID_Fonction">
                                                        </PropertiesComboBox>
                                                    </dx:GridViewDataComboBoxColumn>
                                                    <dx:GridViewDataComboBoxColumn FieldName="ID_Entreprise" Visible="false" VisibleIndex="9" ShowInCustomizationForm="True">
                                                        <PropertiesComboBox DataSourceID="SqlEntreprise" ValueField="ID_Entreprise" TextField="Nom">
                                                        </PropertiesComboBox>
                                                    </dx:GridViewDataComboBoxColumn>
                                                </Columns>
                                                <SettingsBehavior AllowFocusedRow="true" />
                                                <SettingsEditing Mode="Batch">
                                                </SettingsEditing>
                                                <Settings ShowFilterRow="True" VerticalScrollableHeight="250" VerticalScrollBarMode="Visible" />
                                                <SettingsCommandButton>
                                                    <NewButton>
                                                        <Image Url="Image/add_large.png" Width="20px">
                                                        </Image>
                                                    </NewButton>
                                                    <UpdateButton>
                                                        <Image ToolTip="Save changes and close Edit Form" Url="Image/save.gif">
                                                        </Image>
                                                    </UpdateButton>
                                                    <CancelButton ButtonType="Image" RenderMode="Image">
                                                        <Image ToolTip="Close Edit Form without saving changes" Url="Image/cancel.gif">
                                                        </Image>
                                                    </CancelButton>
                                                    <DeleteButton>
                                                        <Image Url="Image/Delete_32x32.png" Width="20px">
                                                        </Image>
                                                    </DeleteButton>
                                                </SettingsCommandButton>
                                                <SettingsSearchPanel Visible="True" />
                                            </dx:ASPxGridView>
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                            </Panes>

                            <ContentCollection>
                                <dx:SplitterContentControl runat="server"></dx:SplitterContentControl>
                            </ContentCollection>

                        </dx:SplitterPane>
                        <dx:SplitterPane>
                            <Panes>
                                <dx:SplitterPane>
                                    <ContentCollection>
                                        <dx:SplitterContentControl runat="server">
                                    
                                            <dx:ASPxGridView ID="gridEven" runat="server" AutoGenerateColumns="False" ClientInstanceName="gridEven"   KeyFieldName="ID_Evenement"
                                                DataSourceID="SqlDataEvenement" OnCustomCallback="gridEven_CustomCallback" Theme="Glass" Width="100%">
                                              
                                               <ClientSideEvents  Init="function(s, e) { 
                      var popup = window.parent; 
                      popup.window['gridEven'] = gridEven;}"
                                                ContextMenu="function(s, e) {
                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent);
   
                          if(e.objectType == 'row'){
                           gridEven.SetFocusedRowIndex(e.index);
                           ASPxPopupDetailEvenementMenu.ShowAtPos(x,y); 
                                                          }
                            }" />
                                                
                                                 <Columns>

                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="false" VisibleIndex="0" Width="30px">
                                                    </dx:GridViewCommandColumn>

                                                    <dx:GridViewDataTextColumn FieldName="ID_Evenement" ReadOnly="True" VisibleIndex="1" Visible="False">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>


                                                   <dx:GridViewDataTextColumn FieldName="Objet" VisibleIndex="4">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="DateDebut" VisibleIndex="5">
                                                    </dx:GridViewDataTextColumn>
                                                   <dx:GridViewDataTextColumn FieldName="Heure" VisibleIndex="6">
                                                    </dx:GridViewDataTextColumn>
                                                   <dx:GridViewDataTextColumn FieldName="DateFin" VisibleIndex="7">
                                                    </dx:GridViewDataTextColumn>
                                                   <dx:GridViewDataTextColumn FieldName="HeureFin" VisibleIndex="8">
                                                    </dx:GridViewDataTextColumn>
                                                   <dx:GridViewDataTextColumn FieldName="Lieu" VisibleIndex="9">
                                                    </dx:GridViewDataTextColumn>
                                                   <dx:GridViewDataTextColumn FieldName="DescriptionEv" VisibleIndex="10">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataComboBoxColumn FieldName="ID_TypeEv" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Type">
                                                        <PropertiesComboBox DataSourceID="sqlGetType" TextField="TypeEv" ValueField="ID_Type">
                                                        </PropertiesComboBox>
                                                    </dx:GridViewDataComboBoxColumn>
                                                      <dx:GridViewDataTextColumn FieldName="DescriptionEv" VisibleIndex="10">
                                                    </dx:GridViewDataTextColumn>
                                                      <dx:GridViewDataTextColumn FieldName="Attribue_a" VisibleIndex="10">
                                                    </dx:GridViewDataTextColumn>




                                                    
                                                </Columns>
                                                <SettingsCommandButton>
                                                    <NewButton>
                                                        <Image Url="Image/add_large.png" Width="20px">
                                                        </Image>
                                                    </NewButton>
                                                    <UpdateButton>
                                                        <Image ToolTip="Save changes and close Edit Form" Url="Image/save.gif">
                                                        </Image>
                                                    </UpdateButton>
                                                    <CancelButton ButtonType="Image" RenderMode="Image">
                                                        <Image ToolTip="Close Edit Form without saving changes" Url="Image/cancel.gif">
                                                        </Image>
                                                    </CancelButton>
                                                    <DeleteButton>
                                                        <Image Url="Image/Delete_32x32.png" Width="20px">
                                                        </Image>
                                                    </DeleteButton>
                                                </SettingsCommandButton>
                                                <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" />
                                                <SettingsBehavior AllowFocusedRow="True" />
                                                <SettingsSearchPanel Visible="True" />
                                                <SettingsExport EnableClientSideExportAPI="True" ExcelExportMode="DataAware">
                                                </SettingsExport>
                                                
                                            </dx:ASPxGridView>
                                    
                                        </dx:SplitterContentControl>
                                    </ContentCollection>
                                </dx:SplitterPane>
                            </Panes>


                            <ContentCollection>
                                <dx:SplitterContentControl runat="server"></dx:SplitterContentControl>
                            </ContentCollection>


                        </dx:SplitterPane>
                    </Panes>
                    <ContentCollection>
                        <dx:SplitterContentControl runat="server"></dx:SplitterContentControl>
                    </ContentCollection>

                </dx:SplitterPane>
            </Panes>
        </dx:ASPxSplitter>


        <div>
            <asp:SqlDataSource ID="SqlDataContact" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                SelectCommand="GetContact" SelectCommandType="StoredProcedure" DeleteCommand="DeleteContact" DeleteCommandType="StoredProcedure" InsertCommand="Insert_Contact" InsertCommandType="StoredProcedure" UpdateCommand="UpdateContact" UpdateCommandType="StoredProcedure">


                <DeleteParameters>
                    <asp:Parameter Name="ID_Contact" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID_Civ" Type="Int32" />
                    <asp:Parameter Name="Nom" Type="String" />
                    <asp:Parameter Name="Prenom" Type="String" />
                    <asp:Parameter Name="Telephone" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="E_mail" Type="String" />
                    <asp:Parameter Name="ID_Fonction" Type="Int32" />
                    <asp:Parameter Name="ID_Entreprise" Type="Int32" />
                    <asp:Parameter Name="Suivi_par" Type="String" />
                </InsertParameters>


                <SelectParameters>
                    <asp:Parameter Name="ID_Entreprise" />
                </SelectParameters>




                <UpdateParameters>
                    <asp:Parameter Name="ID_Contact" Type="Int32" />
                    <asp:Parameter Name="ID_Civ" Type="Int32" />
                    <asp:Parameter Name="Nom" Type="String" />
                    <asp:Parameter Name="Prenom" Type="String" />
                    <asp:Parameter Name="Telephone" Type="Int32" />
                    <asp:Parameter Name="Mobile" Type="Int32" />
                    <asp:Parameter Name="E_mail" Type="String" />
                    <asp:Parameter Name="ID_Fonction" Type="Int32" />
                    <asp:Parameter Name="ID_Entreprise" Type="Int32" />
                    <asp:Parameter Name="Suivi_par" Type="String" />
                </UpdateParameters>




            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataEvenement" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                SelectCommand="GetDetailEvenement" SelectCommandType="StoredProcedure" DeleteCommand="DeleteNomenclature_Evenement" DeleteCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="ID_Evenement" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:Parameter Name="ID_Contact" />
                </SelectParameters>

            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataFonction" runat="server"
                ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                SelectCommand="GetFonctions" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSociete" runat="server"
                ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                SelectCommand="GetSociete" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Civilite" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                SelectCommand="GetCiv" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Fonction" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                SelectCommand="GetFonction" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlEntreprise" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>"
                SelectCommand="GetEntreprise" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
        <dx:ASPxPopupControl ID="PopupAlertsSuc" ClientInstanceName="PopupAlertsSuc" AutoUpdatePosition="false"
            runat="server" Theme="Glass" Width="350px" HeaderText="Information"
            Modal="True"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="TopSides">
            <HeaderImage Url="~/Image/Session.jpg" Width="25">
            </HeaderImage>

            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl3" runat="server">




                    <table style="width: 100%">
                        <tr style="text-align: center">

                            <td style="text-align: center">
                                <dx:ASPxLabel ID="txterrorSuc" runat="server" Font-Bold="true" ClientInstanceName="txterrorSuc" ForeColor="Red"></dx:ASPxLabel>
                                <br />
                                <br />
                            </td>

                        </tr>

                        <tr>

                            <td style="text-align: center">
                                <dx:ASPxButton ID="ASPxButton5" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                  
                                                   gridSociete.PerformCallback(); 
                                                   GridRessouerce.PerformCallback();
                                                   PopupAlertsSuc.Hide();  	
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>

            </ContentCollection>
        </dx:ASPxPopupControl>

        <dx:ASPxPopupControl ID="PopupAlerts" ClientInstanceName="PopupAlerts" AutoUpdatePosition="false"
            runat="server" Theme="Glass" Width="350px" HeaderText="Information"
            Modal="True"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="TopSides">
            <HeaderImage Url="~/Image/Session.jpg" Width="25">
            </HeaderImage>

            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server">




                    <table style="width: 100%">
                        <tr style="text-align: center">

                            <td style="text-align: center" colspan="3">
                                <dx:ASPxLabel ID="txterror" runat="server" Font-Bold="true" ClientInstanceName="txterror" ForeColor="Red"></dx:ASPxLabel>
                                <br />
                                <br />
                            </td>

                        </tr>

                        <tr>
                            <td style="text-align: right">
                                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Valider" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                 callbacSupprimer.PerformCallback('supprimer');
                                                   	 gridSociete.PerformCallback(); 
                                                   GridRessouerce.PerformCallback();
                                                   PopupAlerts.Hide(); 
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                            <td style="width: 10px"></td>
                            <td style="text-align: left">
                                <dx:ASPxButton ID="ASPxButton14" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                   	 gridSociete.PerformCallback(); 
                                                   GridRessouerce.PerformCallback();
                                                   PopupAlerts.Hide();  	
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>

            </ContentCollection>
        </dx:ASPxPopupControl>

        <dx:ASPxPopupControl ID="PopupValider" ClientInstanceName="PopupValider" AutoUpdatePosition="false"
            runat="server" Theme="Glass" Width="350px" HeaderText="Information"
            Modal="True"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="TopSides">
            <HeaderImage Url="~/Image/Session.jpg" Width="25">
            </HeaderImage>

            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">




                    <table style="width: 100%">
                        <tr style="text-align: center">

                            <td style="text-align: center" colspan="3">
                                <dx:ASPxLabel ID="txterrorVali" runat="server" Font-Bold="true" ClientInstanceName="txterrorVali" ForeColor="Red"></dx:ASPxLabel>
                                <br />
                                <br />
                            </td>

                        </tr>

                        <tr>
                            <td style="text-align: right">
                                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Valider" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                 callbacSupprimer.PerformCallback('valider');
                                                   		 gridSociete.PerformCallback(); 
                                                   GridRessouerce.PerformCallback();
                                                   PopupValider.Hide();  
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                            <td style="width: 10px"></td>
                            <td style="text-align: left">
                                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                  	 gridSociete.PerformCallback(); 
                                                   GridRessouerce.PerformCallback();
                                                   PopupValider.Hide();  
                                                   	
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>

            </ContentCollection>
        </dx:ASPxPopupControl>


        <dx:ASPxCallback ID="callbacSupprimer" ClientInstanceName="callbacSupprimer" OnCallback="callbacSupprimer_Callback" runat="server">
            <ClientSideEvents EndCallback="function(s, e) {
                                                                              EndcallbacSupprimer(s,e); 
                                                                    }
                                                                    
                                                                    " />
        </dx:ASPxCallback>
        <br />
        <asp:SqlDataSource ID="DeleteEven" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>" SelectCommand="DeleteNomenclature_Evenement" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="ID_Evenement" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="sqlGetType" runat="server" ConnectionString="<%$ ConnectionStrings:RessourceConnectionString %>" SelectCommand="GetType" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    </form>
</body>
</html>
