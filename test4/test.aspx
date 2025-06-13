<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="cs2313huangtao_test1.test4.test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="/StyleSheet1.css" rel="stylesheet" type="text/css" />

    <p>
        <asp:Image ID="Image1" runat="server" />
    </p>
    <div style="text-align:center">
    <video width="1080" height="740"  controls autoplay loop muted>
    <source src="../KSimage/xlarge.mp4" type="video/mp4">
        </video>
    </div>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <asp:Panel ID="Panel1" runat="server" >
    </asp:Panel>
</asp:Content>
