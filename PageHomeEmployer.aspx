<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageHomeEmployer.aspx.cs" Inherits="PageHomeEmployer" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style type="text/css">
            .templateTable {
                border-collapse: collapse;
                width: 100%;
            }

                .templateTable td {
                    border: solid 1px #C2D4DA;
                    padding: 6px;
                }

                    .templateTable td.value {
                        font-weight: bold;
                    }

            .imageCell {
                width: 160px;
            }
        </style>
        <style>
            .HeaderTitle {
                text-align: left;
                font-family: Tahoma;
                font-weight: bold;
                font-size: 12px;
            }

            .label_td {
                padding-left: 5px;
                font-family: Tahoma;
                font-size: 12px;
                padding-right: 5px;
                font-weight: bold;
                width: 130px;
                height: 30px;
                border: 1px solid #A3C0E8;
                background-color: #DBEBFF;
            }


            .xPane_header_expanded {
                width: 100%;
                text-align: center;
                font-weight: normal;
                text-align: center;
                border-top: 1px Solid #A3C0E8;
                border-left: 1px Solid #A3C0E8;
                border-right: 1px Solid #A3C0E8;
                color: #283B56;
                background-color: #F7FAFF;
                font: 12px Tahoma;
            }


            .xPane_header_collapsed {
                width: 100%;
                text-align: center;
                font-weight: normal;
                text-align: center;
                border: 1px Solid #A3C0E8;
                color: #283B56;
                background-color: #F7FAFF;
                font: 12px Tahoma;
            }

            .dxgvControl_Aqua1 {
                font-size: x-large;
                font-weight: bold;
                color: #3F66A0;
            }

            a:hover {
                color: #F39128;
                background-color: #F7FAFF;
            }
        </style>

        <style type="text/css">
            .HeaderTitle {
                text-align: center;
                font-family: Tahoma;
                font-weight: bold;
                font-size: 12px;
            }

            .dropZoneExternal > div,
            .dropZoneExternal > img {
                position: center;
            }

            .dropZoneExternal {
                position: relative;
                border: 1px dashed #f17f21 !important;
                cursor: pointer;
            }

            .dropZoneExternal,
            .dragZoneText {
                width: 240px;
                max-width: 150px;
                min-width: 280px;
                height: 200px;
            }

            #dragZone {
                width: 100%;
                display: table;
            }

            #uploadedImage {
                width: 100%;
            }

            .dropZoneText {
                width: 240px;
                height: 150px;
                color: #fff;
                background-color: #888;
            }

            #dropZone {
                top: 0;
                padding: 100px 25px;
            }

            .uploadControlDropZone,
            .hidden {
                display: none;
            }

            .dropZoneText,
            .dragZoneText {
                display: table-cell;
                vertical-align: middle;
                text-align: center;
                font-size: 20pt;
            }

            .dragZoneText {
                color: #808080;
            }

            .dxucInlineDropZoneSys span {
                color: #fff !important;
                font-size: 10pt;
                font-weight: normal !important;
            }

            .validationMessage {
                padding: 0 20px;
                text-align: center;
            }

            .uploadContainer {
                width: 100%;
                max-width: 240px;
                min-width: 220px;
                margin-top: 10px;
            }

            .Note {
                max-width: 500px;
            }

            ul.token-input-list-facebook {
                width: 97%;
            }

            .groupBox {
                /*margin: 5px 0px;*/
                /*border: solid 1px #7EACB1;*/
                width: 97%;
                /*background-color: #F3F4F5;*/
                border: 1px solid #A3C0E8;
                background-color: #ebf3fc;
            }






            .auto-style1 {
                height: 31px;
            }
        </style>
        <style>
            .tooltip {
                position: relative;
                display: inline-block;
                border-bottom: 1px dotted black;
            }

                .tooltip .tooltiptext {
                    visibility: hidden;
                    width: 220px;
                    background-color: #D3E9F0;
                    border: 1px solid #4986A2;
                    padding-left: 2px;
                    color: black;
                    text-align: center;
                    border-radius: 6px;
                    padding: 5px 0;
                    /* Position the tooltip */
                    position: absolute;
                    z-index: 1;
                }

                .tooltip:hover .tooltiptext {
                    visibility: visible;
                }
        </style>
        <style>
            /*.label_td {
                padding-left: 5px;
                font-family: Tahoma;
                font-size: 12px;
                padding-right: 5px;
                font-weight: bold;
                width: 25%;
                border: 1px solid #A3C0E8;
                background-color: #DBEBFF;
            }*/

            .legend {
                padding: 5px;
                font-family: Tahoma;
                font-size: 12px;
                /* padding-right: 5px; */
                font-weight: bold;
                border: 1px solid #A3C0E8;
                margin: 10px;
                width: 50%;
            }

            .dxeRequiredMark_Glass {
                color: rgb(205, 5, 5);
                font-style: normal;
            }

            .dxtcLite_Aqua > .dxtc-content {
                background: #EDF3F4 repeat-x top;
            }

            /* Tooltip container */
            .tooltip {
                padding-left: 5px;
                font-family: Tahoma;
                font-size: 12px;
                padding-right: 5px;
                font-weight: bold;
                width: 96%;
                border: 1px solid #A3C0E8;
                background-color: #DBEBFF;
                position: relative;
                display: inline-block;
            }

            /* Tooltip text */
            .label_td .tooltiptext {
                visibility: hidden;
                width: 20%;
                background-color: #ffffff;
                border: 1px solid #A3C0E8;
                color: #000000;
                padding: 5px 5px;
                border-radius: 6px;
                position: absolute;
                z-index: 1;
                font-weight: normal;
            }

            /* Show the tooltip text when you mouse over the tooltip container */
            .label_td:hover .tooltiptext {
                visibility: visible;
            }
        </style>

        <script type="text/javascript">
            function FocedRowRessource() {
                //var G = GridEmplye.GetFocusedRowIndex();
                //if ( G == '-1') {
                    
                //    GridEmplye.PerformCallback();
                     
                //}
                //else {
                    
                    GridResourceDetail.PerformCallback();
               // }
            }

        </script>
        <script type="text/javascript">
             
            function GridMenuDetaiEvenmItemClick(e)
            {
                 
                var name = e.item.name;
                
                if (name == "AjoutEmp") AddEmp();
                if (name == "ModEmp") ModiEmp();
                if (name == "SuppEntr") SuppEmp();
                    
            }
            

            function AddEmp() {
                
                window.parent.window.parent.Ajouter_Employer();
            }
            function ModiEmp() {

                var Index = GridEmplye.GetFocusedRowIndex();
                if (Index == '-1') {

                    txterrorModif.SetText(" Rien de modifier ");
                    PopupAlertsModif.Show();
                }
                else {


                    GridEmplye.GetRowValues(GridEmplye.GetFocusedRowIndex(), 'ID_Matricule', SelectshowModifEmp);
                }
            }

            function SelectshowModifEmp(values) {
                 
                window.parent.window.parent.Modifier_Employer(values);
                 
            }
           
            function SuppEmp() {
              
                var ID_Index = GridEmplye.GetFocusedRowIndex();
                if (ID_Index == '-1') {
                     
                    txterrorNull.SetText(" Rien de supprimer ");
                    PopupAlertsNull.Show();
                }
                else {
                     
                GridEmplye.GetRowValues(GridEmplye.GetFocusedRowIndex(), 'NomEtPrenom', SelectshowSuppEmp);
                }
            }
             
                
           
            function SelectshowSuppEmp(value) {
                


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
                
            
        </script>

        <dx:ASPxPopupMenu ID="ASPxPopupDetailEmployerMenu" runat="server" ClientInstanceName="ASPxPopupDetailEmployerMenu" CssPostfix="Glass" Theme="Glass">
            <Items>

               
                <dx:MenuItem Name="AjoutEmp" Text="Ajouter ">
                    <Image Height="16px"  Url="~/Image/Add.png" Width="16px">
                     </Image>
                </dx:MenuItem>

                 <dx:MenuItem Name="ModEmp" Text="Modifier ">
                   <Image Height="16px" Url="~/Image/Pencil-icon.png" Width="16px">
                  </Image>
              </dx:MenuItem>
                <dx:MenuItem Name="SuppEntr" Text="Supprimer ">
                   <Image Height="16px" Url="~/Image/Delete_32x32.png" Width="16px">
                  </Image>
              </dx:MenuItem>

            </Items>
            <SubMenuStyle GutterWidth="0px" />
            <ClientSideEvents ItemClick="function(s, e) {GridMenuDetaiEvenmItemClick(e);}" />
        </dx:ASPxPopupMenu>

        <div>
            <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" Theme="Default" Width="100%" Height="100%"
                FullscreenMode="True"
                ShowCollapseBackwardButton="True" ShowCollapseForwardButton="True">
                <Panes>
                    <dx:SplitterPane Size="25%">

                        <Panes>
                            <dx:SplitterPane>
                                <ContentCollection>
                                    <dx:SplitterContentControl runat="server">
                                        <dx:ASPxMenu ID="mnSeuilManagement" runat="server" ClientInstanceName="mnSeuilManagement" AllowSelectItem="True"
        ShowPopOutImages="True" AutoSeparators="RootOnly" Theme="Aqua" ItemAutoWidth="false" SeparatorColor="#7EACB1" Width="100%">
        <ClientSideEvents ItemClick="function(s, e) {GridMenuDetaiEvenmItemClick(e);}"></ClientSideEvents>
        <Items>
            <dx:MenuItem Name="Seuil" Image-Url="~/Image/icons8-pc-64.png" Image-Height="16px" Text="Systeme de mesure">
                <Items>
                    <dx:MenuItem Name="AjoutEmp" Text="Ajouter">
                        <Image Url="~/Image/Add.png" Width="16px" Height="16px" />
                    </dx:MenuItem>
                    <dx:MenuItem Name="ModEmp" Text="Modifier">
                        <Image Url="~/Image/Pencil-icon.png" Width="16px" Height="16px" />
                    </dx:MenuItem>
                    <dx:MenuItem Name="SuppEntr" Text="Supprimer">
                        <Image Url="~/Image/Delete_32x32.png" Width="16px" Height="16px" />
                    </dx:MenuItem>
                </Items>

<Image Height="16px" Url="~/Image/icons8-pc-64.png"></Image>
            </dx:MenuItem>
        </Items>
    </dx:ASPxMenu>
                                        <dx:ASPxGridView ID="GridEmplye" ClientInstanceName="GridEmplye" OnCustomCallback="GridEmplye_CustomCallback"
                                             Theme="Glass" KeyFieldName="ID_Employes" runat="server" AutoGenerateColumns="False"
                                             CellPadding="4"
                                            DataSourceID="SqlEmploy" Width="100%">
                                           
                                            <ClientSideEvents Init="function(s, e) { 
                      var popup = window.parent.window.parent; 
                      popup.window['GridEmplye'] = GridEmplye;}"
                                                 FocusedRowChanged="FocedRowRessource"  
                                                ContextMenu="function(s, e) {
                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent);
   
                          if(e.objectType == 'row'){
                           GridEmplye.SetFocusedRowIndex(e.index);
                           ASPxPopupDetailEmployerMenu.ShowAtPos(x,y); 
                                                          }
                            }" />
                                            <Columns>

                                                <dx:GridViewDataColumn FieldName="Lien" Caption=" " Width="32px" VisibleIndex="0">


                                                    <DataItemTemplate>

                                                        <dx:ASPxImage ID="PositionIcon" runat="server" ImageUrl='<%# Eval("Lien")%>' Width="22px">
                                                            <CaptionSettings ShowColon="false" Position="Right" />
                                                        </dx:ASPxImage>


                                                    </DataItemTemplate>


                                                </dx:GridViewDataColumn>





                                                <dx:GridViewDataTextColumn FieldName="ID_Employes" Visible="false" VisibleIndex="1" />
                                                <dx:GridViewDataTextColumn FieldName="NomEtPrenom" Caption="Nom et prénom" VisibleIndex="2" />

                                                  <dx:GridViewDataTextColumn FieldName="Experience" caption="Experience" VisibleIndex="3" />


                                                
                                                <dx:GridViewDataTextColumn FieldName="ID_Matricule" Visible="false" VisibleIndex="4" />
                                            </Columns>
                                            <SettingsPager PageSize="100"  Visible="true"   >
                                                <PageSizeItemSettings  Visible="true" ShowAllItem="true" ></PageSizeItemSettings>
                                            </SettingsPager>  
                                            <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" />
                                            <SettingsResizing ColumnResizeMode="NextColumn" />
                                            <SettingsBehavior AllowFocusedRow="true" />
                                        </dx:ASPxGridView>

                                        <asp:SqlDataSource ID="SqlEmploy" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
                                            SelectCommand="SelectEmploy" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


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
                                                <dx:ASPxGridView ID="GridResourceDetail" Theme="Aqua" ClientInstanceName="GridResourceDetail"
                                                    OnCustomCallback="GridResourceDetail_CustomCallback"
                                                    KeyFieldName="ID_Employes" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                    DataSourceID="SqlDataResourceDetail" Width="100%" EnableRowsCache="false">
                                                     <ClientSideEvents Init="function(s, e) { 
                      var popup = window.parent.window.parent; 
                      popup.window['GridResourceDetail'] = GridResourceDetail;}"
                                                   FocusedRowChanged="FocedRowRessource"
                                                ContextMenu="function(s, e) {
                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent);
   
                          if(e.objectType == 'row'){
                           GridResourceDetail.SetFocusedRowIndex(e.index);
                           ASPxPopupDetailEmployerMenu.ShowAtPos(x,y); 
                                                          }
                            }" />
                                                    <Columns>
                                                        <dx:GridViewDataTextColumn FieldName="ID_Employes" Visible="false" />
                                                        <dx:GridViewDataTextColumn FieldName="NomEtPrenom" VisibleIndex="1" />
                                                        <dx:GridViewDataTextColumn FieldName="ID_Matricule" Visible="false" />
                                                        <dx:GridViewDataTextColumn FieldName="ImageEmployer" Visible="true" />
                                                    </Columns>

                                                    <Settings ShowColumnHeaders="false" />
                                                    <Templates>
                                                        <DataRow>
                                                            <%--<div style="padding: 5px">
                                                               
                                                                            <dx:ASPxLabel width="100px" ID="ASPxLabel2"   runat="server" Text="Fonction" ForeColor="Maroon" Font-Bold="true" />

                                                                        </td>
                                                                        <td  >
                                                                            <dx:ASPxTextBox width="200px" ID="lblLastName"   runat="server" Border-BorderColor="Transparent" BackColor="LightYellow" Text='<%# Eval("Nom_Fonction") %>' />

                                                                        </td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td >
                                                                            <dx:ASPxLabel ID="ASPxLabel5"  runat="server" Text="Date de naissance" ForeColor="Maroon" Font-Bold="true" />

                                                                        </td>
                                                                        <td >
                                                                            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" width="250px"   Border-BorderColor="Transparent" BackColor="LightYellow" Text='<%# Eval("Dat_nais") %>'>
                                                                                <MaskSettings Mask="MM/dd/yyyy" />
                                                                            </dx:ASPxTextBox>

                                                                        </td>
                                                                        <td >
                                                                            <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Discipline" ForeColor="Maroon" Font-Bold="true" />

                                                                        </td>
                                                                        <td  >
                                                                            <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Border-BorderColor="Transparent"   BackColor="LightYellow" />
                                                                    </tr>


                                                                    <tr>
                                                                        <td >
                                                                            <dx:ASPxLabel   ID="ASPxLabel8"   runat="server"   Text="date de recrutement" ForeColor="Maroon" Font-Bold="true" />

                                                                        </td>
                                                                        <td >
                                                                            <dx:ASPxTextBox ID="ASPxTextBox2"   runat="server"  width="250px" Border-BorderColor="Transparent" BackColor="LightYellow" Text='<%# Eval("Date_recrutement") %>'>
                                                                                <MaskSettings Mask="MM/dd/yyyy" />
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td >
                                                                            <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="Relation" ForeColor="Maroon" Font-Bold="true" />

                                                                        </td>
                                                                        <td >
                                                                            <dx:ASPxTextBox ID="ASPxTextBox4"   runat="server" Border-BorderColor="Transparent" BackColor="LightYellow" Text='<%# Eval("Nom_Relation") %>' />

                                                                        </td>
                                                                    </tr>

                                                                    <tr>

                                                                        <td colspan="5" >
                                                                            <dx:ASPxMemo ID="TxtAdress" Text='<%# Eval("Adresse") %>' Width="100%" BackColor="LightYellow"  Height="50px" runat="server"></dx:ASPxMemo>

                                                                        </td>


                                                                    </tr>
                                                                </table>
                                                            </div>--%>
                                                            <dx:ASPxFormLayout ID="ASPxFormLayout2" runat="server" EnableViewState="false" EncodeHtml="false" ColumnCount="1" RequiredMarkDisplayMode="RequiredOnly" Theme="Aqua" Width="100%">
                                                                <Items>
                                                                    <dx:LayoutGroup Caption="Informations générales" GroupBoxStyle-Caption-Font-Bold="true" Width="100%" ColumnSpan="1">
                                                                        <Items>
                                                                            <dx:LayoutItem Caption=" ">
                                                                                <LayoutItemNestedControlCollection>
                                                                                    <dx:LayoutItemNestedControlContainer>


                                                                                        <table border="0" width="100%">
                                                                                            <tr>
                                                                                                <td colspan="2">
                                                                                                    <dx:ASPxLabel ID="TxtRef" Text='<%# Eval("NomEtPrenom") %>' ClientInstanceName="TxtRef" runat="server" Width="100%" Style="color: maroon; width: 100%; font-family: Segoe UI; font-size: 16pt; font-weight: bold; text-align: center; padding-bottom: 5px;">
                                                                                                    </dx:ASPxLabel>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>

                                                                                                <td style="width: 210px; vertical-align: central;">
                                                                                                    <table border="0" style="border-spacing: 0; border-collapse: collapse;" id="mainContainer">
                                                                                                        <tr>
                                                                                                            <td class="content" style="vertical-align: top; align-content: center;">
                                                                                                                <table style="border-spacing: 0; border-collapse: collapse;">
                                                                                                                    <tr>
                                                                                                                        <td style="padding-right: 20px; vertical-align: top; text-align: center;">
                                                                                                                            <table style="border-spacing: 0; border-collapse: collapse;">

                                                                                                                                <tr>

                                                                                                                                    <td>
                                                                                                                                        <div id="externalDropZone" class="dropZoneExternal">

                                                                                                                                            <dx:ASPxImage ID="CandidatImg" Theme="Aqua" runat="server" Width="280" Height="200" ImageUrl='<%# Eval("ImageEmployer") %>' ClientInstanceName="CandidatImg"></dx:ASPxImage>


                                                                                                                                        </div>


                                                                                                                                    </td>

                                                                                                                                </tr>


                                                                                                                            </table>
                                                                                                                        </td>

                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <table width="100%">
                                                                                                        <tr>
                                                                                                            <td class="label_td">Nom et Prenom</td>
                                                                                                            <td>

                                                                                                                <dx:ASPxTextBox ID="TxtDiscpline" BackColor="LightYellow" Height="31px" ClientInstanceName="TxtDiscpline" Text='<%# Eval("NomEtPrenom") %>' runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>



                                                                                                            </td>
                                                                                                            <td class="label_td">Fonction</td>
                                                                                                            <td>
                                                                                                                <dx:ASPxTextBox ID="TxtFamille" ClientInstanceName="TxtFamille"  BackColor="LightYellow" Height="31px" Text='<%# Eval("Nom_Fonction") %>' runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>
                                                                                                            </td>









                                                                                                        </tr>

                                                                                                        <tr>

                                                                                                            <td class="label_td">Discipline</td>

                                                                                                            <td>
                                                                                                                <dx:ASPxTextBox ID="TxtMagasin" BackColor="LightYellow" Height="31px" ClientInstanceName="TxtMagasin" Text='<%# Eval("Description") %>' runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>
                                                                                                            </td>
                                                                                                            <td class="label_td">Relation</td>
                                                                                                            <td>
                                                                                                                <dx:ASPxTextBox ID="TxtAtelier"  Height="31px" ClientInstanceName="TxtAtelier" Text='<%# Eval("Nom_Relation") %>' BackColor="LightYellow" runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>
                                                                                                            </td>
                                                                                                        </tr>


                                                                                                        <tr>


                                                                                                            <td class="label_td">Date de naissance</td>

                                                                                                            <td>
                                                                                                                <dx:ASPxTextBox ID="TxtStatus" ClientInstanceName="TxtStatus" BackColor="LightYellow" Height="31px" Text='<%# Eval("Dat_nais", "{0:MM/dd/yyyy}")%>' runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>
                                                                                                            </td>


                                                                                                            <td class="label_td">Date de recrutement</td>
                                                                                                            <td>
                                                                                                                <dx:ASPxTextBox ID="TxtZone" ClientInstanceName="TxtZone" BackColor="LightYellow" Height="31px" Text='<%# Eval("Date_recrutement", "{0:MM/dd/yyyy}")%>' runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>
                                                                                                            </td>



                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="label_td">Telephone</td>
                                                                                                            <td>
                                                                                                                <dx:ASPxTextBox ID="ASPxLabel1" ClientInstanceName="TxtAtelier" Text='<%# Eval("Telephone") %>' BackColor="LightYellow"  Height="31px" runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>
                                                                                                            </td>
                                                                                                            <td class="label_td">Email</td>
                                                                                                            <td>
                                                                                                                <dx:ASPxTextBox ID="ASPxLabel2" ClientInstanceName="TxtAtelier" Text='<%# Eval("Email") %>' BackColor="LightYellow"  Height="31px" runat="server" Font-Size="8pt" Theme="Aqua" Font-Names="Arial">
                                                                                                                </dx:ASPxTextBox>
                                                                                                            </td>
                                                                                                           
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="label_td">Adresse</td>
                                                                                                            <td colspan="4">
                                                                                                                <dx:ASPxMemo ID="TxtAdress" Text='<%# Eval("Adresse") %>' Width="97.5%" BackColor="LightYellow" Height="75px" runat="server"></dx:ASPxMemo>

                                                                                                            </td>
                                                                                                        </tr>

                                                                                                    </table>
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
                                                        </DataRow>
                                                    </Templates>
                                                    <SettingsBehavior AllowFocusedRow="false" />
                                                </dx:ASPxGridView>


                                                <asp:SqlDataSource ID="SqlDataResourceDetail" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>"
                                                    SelectCommand="GetEmployeeByMatricule" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter Name="Matricule" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>



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
        </div>
        <dx:ASPxPopupControl ID="PopupAlertsSuc" ClientInstanceName="PopupAlertsSuc" AutoUpdatePosition="false"
            runat="server" Theme="Glass" Width="350px" HeaderText="Information"
            Modal="True"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="TopSides">
            <HeaderImage Url="~/Image/icons8-remove-48.png" Width="25">
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
                                                  
                                                   GridEmplye.PerformCallback(); 
                                                   GridResourceDetail.PerformCallback();
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
            runat="server" Theme="Glass" Width="450px" HeaderText="Supprimer Employee"
            Modal="True"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="TopSides">
            <HeaderImage Url="~/Image/icons8-delete-64.png" Width="25">
            </HeaderImage>

            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">




                    <table style="width: 100%">
                        <tr style="text-align: center">

                            <td style="text-align: center" colspan="3">
                                <dx:ASPxLabel ID="txterror" runat="server" Font-Bold="true" ClientInstanceName="txterror" ForeColor="Red"></dx:ASPxLabel>
                                <br />
                                <br />
                            </td>

                        </tr>

                        <tr>
                            <td style="text-align:right">
                                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Valider" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                 callbacSupprimer.PerformCallback('supprimer');
                                                   	 GridEmplye.PerformCallback(); 
                                                   GridResourceDetail.PerformCallback();
                                                   PopupAlerts.Hide(); 
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                             <td style="width: 10px"></td>
                            <td style="text-align: left">
                                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                  
                                                  
                                                   PopupAlerts.Hide();  	
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>

            </ContentCollection>
        </dx:ASPxPopupControl>
         <dx:ASPxPopupControl ID="PopupAlertsNull" ClientInstanceName="PopupAlertsNull" AutoUpdatePosition="false"
            runat="server" Theme="Glass" Width="450px" HeaderText="Supprimer Employee"
            Modal="True"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="TopSides">
            <HeaderImage Url="~/Image/icons8-delete-64.png" Width="25">
            </HeaderImage>

            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server">




                    <table style="width: 100%">
                        <tr style="text-align: center">

                            <td style="text-align: center" colspan="3">
                                <dx:ASPxLabel ID="txterrorNull" runat="server" Font-Bold="true" ClientInstanceName="txterrorNull" ForeColor="Red"></dx:ASPxLabel>
                                <br />
                                <br />
                            </td>

                        </tr>

                        <tr>
                            
                             <td style="width: 10px"></td>
                            <td style="text-align: center">
                                <dx:ASPxButton ID="ASPxButton4" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                  
                                                  
                                                   PopupAlertsNull.Hide();  	
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>

            </ContentCollection>
        </dx:ASPxPopupControl>
        <dx:ASPxPopupControl ID="PopupAlertsModif" ClientInstanceName="PopupAlertsModif" AutoUpdatePosition="false"
            runat="server" Theme="Glass" Width="450px" HeaderText="Modifier Employee"
            Modal="True"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="TopSides">
            <HeaderImage Url="~/Image/Pencil-icon.png" Width="25">
            </HeaderImage>

            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl4" runat="server">




                    <table style="width: 100%">
                        <tr style="text-align: center">

                            <td style="text-align: center" colspan="3">
                                <dx:ASPxLabel ID="txterrorModif" runat="server" Font-Bold="true" ClientInstanceName="txterrorModif" ForeColor="Red"></dx:ASPxLabel>
                                <br />
                                <br />
                            </td>

                        </tr>

                        <tr>
                            
                             <td style="width: 10px"></td>
                            <td style="text-align: center">
                                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Fermer" Width="80px" AutoPostBack="False"
                                    Theme="Glass">
                                    <ClientSideEvents Click="function(s, e) {
                                                  
                                                  
                                                   PopupAlertsModif.Hide();  	
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
    </form>
</body>
</html>
<tr>
