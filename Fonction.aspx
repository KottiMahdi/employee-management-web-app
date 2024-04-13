﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fonction.aspx.cs" Inherits="Fonction" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function GridMenuItemClick(e) {
            if (e.item == null) return;
            var name = e.item.name;
            if (name == "add") AddFonction();
            if (name == "update") EditFonction();
            if (name == "delete") DeleteFonction();
        }
        function AddFonction() {
            GridFonction.AddNewRow();
        }

        function EditFonction() {
             
            var valueRow = GridFonction.GetFocusedRowIndex();
            GridFonction.StartEditRow(valueRow);
        }
        function DeleteFonction() {
            var valueRow = GridFonction.GetFocusedRowIndex();
            GridFonction.DeleteRow(valueRow);
        }

        function DeleteFonction() {
            GridFonction.GetRowValues(GridFonction.GetFocusedRowIndex(), 'Nom_Fonction', SelectshowDeleteFonction);

        }

        function SelectshowDeleteFonction(value) {
            txterror.SetText("Souhaitez-vous réellement supprimer " + value + " ? ");
            PopupAlerts.Show();
        }



        function valider() {
            var valueRow = GridFonction.GetFocusedRowIndex();
            GridFonction.DeleteRow(valueRow);
            PopupAlerts.Hide();

            txterrorSuc.SetText("Supprimer avec succès");
            PopupAlertsSuc.Show();

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxPopupMenu ID="ASPxPopupFonction" runat="server" ClientInstanceName="ASPxPopupFonction" CssPostfix="Glass" Theme="Glass">
            <Items>


                <dx:MenuItem Name="add" Text="Ajouter ">
                    <Image Height="16px"  Url="~/Image/Add.png" Width="16px">
                     </Image>
                </dx:MenuItem>

                 <dx:MenuItem Name="update" Text="Modifier ">
                   <Image Height="16px" Url="~/Image/Pencil-icon.png" Width="16px">
                  </Image>
              </dx:MenuItem>
                <dx:MenuItem Name="delete" Text="Supprimer ">
                   <Image Height="16px" Url="~/Image/Delete_32x32.png" Width="16px">
                  </Image>
              </dx:MenuItem>

            </Items>
            <SubMenuStyle GutterWidth="0px" />
            <ClientSideEvents ItemClick="function(s, e) {GridMenuItemClick(e);}" />
        </dx:ASPxPopupMenu>
        <div>
            <dx:ASPxMenu ID="mnSeuilManagement" runat="server" ClientInstanceName="mnSeuilManagement" AllowSelectItem="True"
        ShowPopOutImages="True" AutoSeparators="RootOnly" Theme="Aqua" ItemAutoWidth="false" SeparatorColor="#7EACB1" Width="100%">
        <ClientSideEvents ItemClick="function(s, e) {GridMenuItemClick(e);}"></ClientSideEvents>
        <Items>
            <dx:MenuItem Name="Seuil" Image-Url="~/Image/icons8-pc-64.png" Image-Height="16px" Text="Systeme de mesure">
                <Items>
                    <dx:MenuItem Name="add" Text="Ajouter">
                        <Image Url="~/Image/Add.png" Width="16px" Height="16px" />
                    </dx:MenuItem>
                    <dx:MenuItem Name="update" Text="Modifier">
                        <Image Url="~/Image/Pencil-icon.png" Width="16px" Height="16px" />
                    </dx:MenuItem>
                    <dx:MenuItem Name="delete" Text="Supprimer">
                        <Image Url="~/Image/Delete_32x32.png" Width="16px" Height="16px" />
                    </dx:MenuItem>
                </Items>
            </dx:MenuItem>
        </Items>
    </dx:ASPxMenu>
            
            <dx:ASPxGridView ID="GridFonction" ClientInstanceName="GridFonction" Width="100%" runat="server" 
                AutoGenerateColumns="False" DataSourceID="SqlFonction" KeyFieldName="ID_Fonction" 
                Theme="Aqua">
                <ClientSideEvents Init="function(s, e) { 
                      var popup = window.parent; 
                      popup.window['GridFonction'] = GridFonction;}"
                                                ContextMenu="function(s, e) {
                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent);
   
                          if(e.objectType == 'row'){
                           GridFonction.SetFocusedRowIndex(e.index);
                           ASPxPopupFonction.ShowAtPos(x,y); 
                                                          }
                            }" />
              
              <Columns>
                    <dx:GridViewDataTextColumn FieldName="ID_Fonction" Visible="false" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Nom_Fonction" Caption="Fonction" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsBehavior AllowFocusedRow="true" />
              </dx:ASPxGridView>

            <asp:SqlDataSource ID="SqlFonction" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeConnectionString %>" SelectCommand="SelectFonction" DeleteCommand="DeleteFonction" DeleteCommandType="StoredProcedure" InsertCommand="InsertFonctions" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommand="UpdateFonction" UpdateCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="ID_Fonction" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nom_Fonction" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID_Fonction" Type="Int32" />
                    <asp:Parameter Name="Nom_Fonction" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
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
                                                     valider();
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
                                                  
                                                   GridFonction.PerformCallback(); 
                                                   PopupAlertsSuc.Hide();  	
                                                   }"></ClientSideEvents>
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>

            </ContentCollection>
        </dx:ASPxPopupControl>
        </div>
    </form>
</body>
</html>
