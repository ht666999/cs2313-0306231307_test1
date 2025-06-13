<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home_categoty.aspx.cs" Inherits="cs2313huangtao_test1.test4.home_categoty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <table style="width:1400px">     
        <tr>
            <td colspan="4" style="width: 76px">
                    <div style="text-align:center">
                    <video width="1480" height="840"  controls autoplay loop muted>
                    <source src="../KSimage/xlarge.mp4" type="video/mp4">
                    </video>
                    </div>                            
            </td>
        </tr>
        <tr>

            <td style="width: 76px">
                
                <asp:Panel ID="Panel2" runat="server">

                </asp:Panel>
                
                </td>
            </tr>
        <tr>
            <td colspan="9" style="width: 76px">
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
