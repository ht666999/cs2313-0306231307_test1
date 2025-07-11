﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buycar.aspx.cs" Inherits="cs2313huangtao_test1.test4.buycar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <link href="/StyleSheet1.css" rel="stylesheet" type="text/css" />

    <table class="auto-style1">
        <tr>
            <td style="height: 233px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" >
                    <Columns>                        
                        <asp:ImageField DataImageUrlField="ImageURL" DataImageUrlFormatString="{0}" HeaderText="图像">
                            <ControlStyle Height="50px" Width="50px"  />
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductName" HeaderText="商品名称" />
                        <asp:BoundField DataField="Price" HeaderText="单价" DataFormatString="{0:F2}" />
                        <asp:BoundField DataField="Quantity" HeaderText="数量" />
                        <asp:BoundField DataField="sum" HeaderText="总金额" DataFormatString="{0:F2}" />
                        <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
                <asp:Button 
                    
                    ID="btnIncrease" runat="server" 
                    Text="+1" 
                    CommandName="Increase" 
                    CommandArgument='<%#Eval("CartId")%>'
                    CssClass="btn-style"  />
                <asp:Button
                    ID="btn" runat="server"
                    Text="-1"
                    CommandName="Decrease"
                    CommandArgument='<%#Eval("CartId") %>'
                    CssClass="btn-style"/>
                <asp:Button
                    ID="Button1" runat="server"
                    Text="删除"
                    CommandName="de"
                    CommandArgument='<%#Eval("CartId") %>'
                    CssClass="btn-style"/>
            </ItemTemplate>
        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td style="height: 233px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="结账" CssClass="btn-style" OnClick="Button2_Click" />
                <asp:GridView ID="GridView2" runat="server" OnRowCommand="GridView2_RowCommand" AutoGenerateColumns="False">
                    <Columns>
                        <asp:ImageField DataImageUrlField="ImageURL"  DataImageUrlFormatString="{0}" HeaderText="图像">
                            <ControlStyle Height="50px" Width="50px"  />
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductName" HeaderText="商品名称" />
                        <asp:BoundField DataField="Price" HeaderText="单价" DataFormatString="{0:F2}" />
                        <asp:BoundField DataField="Quantity" HeaderText="数量" />
                        <asp:BoundField DataField="sum" HeaderText="总金额" DataFormatString="{0:F2}" />
                        <asp:Boundfield DataField="date" HeaderText="购买时间" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:button
                                    id="pjbtn" runat="server"
                                    Text="评价"
                                    CommandName="pj"
                                    CommandArgument='<%#Eval("ProductID") %>'
                                    CssClass="auto-style1"
                                    />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="发送评价" Visible="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
