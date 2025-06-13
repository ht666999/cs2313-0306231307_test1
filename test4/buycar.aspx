<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buycar.aspx.cs" Inherits="cs2313huangtao_test1.test4.buycar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <link href="/StyleSheet1.css" rel="stylesheet" type="text/css" />

    <table class="auto-style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" >
                    <Columns>
                        <asp:BoundField DataField="ProductName" HeaderText="商品名称" />
                        <asp:BoundField DataField="Price" HeaderText="单价" DataFormatString="{0:F2}" />
                        <asp:BoundField DataField="Quantity" HeaderText="数量" />
                        <asp:BoundField DataField="sum" HeaderText="总金额" DataFormatString="{0:F2}" />
                        <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
                <asp:Button ID="btnIncrease" runat="server" 
                    Text="+1" 
                    CommandName="IncreaseQuantity" 

                    CssClass="btn-style" />
            </ItemTemplate>
        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server">
                </asp:LinqDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
