<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Parametrages.aspx.cs" Inherits="Parametrages" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .custom-nav-bar {
            width: 100%;
            padding: 0 !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" Theme="Aqua" Width="100%" Height="100%" 
                FullscreenMode="True"
                ShowCollapseBackwardButton="True" ShowCollapseForwardButton="True">
                <Panes>
                    <dx:SplitterPane Size="25%">

                        <Panes>
                            <dx:SplitterPane>
                                <ContentCollection>
                                    <dx:SplitterContentControl runat="server">

                                        <dx:ASPxNavBar ID="nbMain" runat="server" AllowSelectItem="true" EnableAnimation="true" Width="100%"
                                             Target="ContentURL" CssClass="custom-nav-bar" Theme="Aqua">
                                            <Groups>
                                                <dx:NavBarGroup HeaderImage-Url="~/Image/icons8-parameters-25.png" Text="Les tables de l'utilisation">
                                                    <Items>
                                                        <dx:NavBarItem Text="Fonction" NavigateUrl="~/Fonction.aspx"  Selected="true" >
                                                            <Image Url="~/Image/icons8-next-page-20.png"></Image>
                                                        </dx:NavBarItem>
                                                        <dx:NavBarItem Text="Niveau" NavigateUrl="~/Niveau.aspx"  Selected="true"  >
                                                            <Image Url="~/Image/icons8-next-page-20.png"></Image>
                                                        </dx:NavBarItem>
                                                        <dx:NavBarItem Text="Etat" NavigateUrl="~/Etats.aspx"  Selected="true" >
                                                            <Image Url="~/Image/icons8-next-page-20.png"></Image>
                                                        </dx:NavBarItem>
                                                        <dx:NavBarItem Text="Discipline"  NavigateUrl="~/ParametrageDiscipline.aspx" >
                                                            <Image Url="~/Image/icons8-next-page-20.png"></Image>
                                                        </dx:NavBarItem>
                                                         <dx:NavBarItem Text="Societer" NavigateUrl="~/Societer.aspx"  Selected="true" >
                                                            <Image Url="~/Image/icons8-next-page-20.png"></Image>
                                                        </dx:NavBarItem>
                                                        <dx:NavBarItem Text="Relation" NavigateUrl="~/Relations.aspx"  Selected="true"  >
                                                            <Image Url="~/Image/icons8-next-page-20.png"></Image>
                                                        </dx:NavBarItem>

                                                    </Items>
                                                </dx:NavBarGroup>
                                                <dx:NavBarGroup HeaderImage-Url="~/Image/icons8-parameters-25.png" Text="Les tables de l'autentification">

                                                    <Items>
                                                       <dx:NavBarItem Text="Utilisateur" NavigateUrl="~/Utilisateur1.aspx"   Selected="true"  >
                                                            <Image Url="~/Image/icons8-next-page-20.png"></Image>
                                                        </dx:NavBarItem>
                                                    </Items>
                                                </dx:NavBarGroup>
                                            </Groups>
                                        </dx:ASPxNavBar>

                                    </dx:SplitterContentControl>
                                </ContentCollection>
                            </dx:SplitterPane>
                        </Panes>
                        
                    </dx:SplitterPane>


                    <dx:SplitterPane Size="75%" Name="ContentURL" ContentUrlIFrameName="ContentURL"     ContentUrl="~/Fonction.aspx"   >

                        <ContentCollection>
                            <dx:SplitterContentControl runat="server" ></dx:SplitterContentControl>
                        </ContentCollection>
                    </dx:SplitterPane>


                </Panes>


            </dx:ASPxSplitter>


        </div>
    </form>
</body>
</html>
