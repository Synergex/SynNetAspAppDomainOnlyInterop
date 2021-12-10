<%@ Page Title="Product Groups" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="ProductGroups.aspx.cs" Inherits="WebApplication.ProductGroups" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <h2>All Product Groups</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" GridLines="None">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Group_id" DataNavigateUrlFormatString="~/ProductGroupParts.aspx?productGroup={0}" DataTextField="Group_id" HeaderText="Product Group" HeaderStyle-HorizontalAlign="Left" />
                        <asp:BoundField DataField="Description" HeaderText="Description" HeaderStyle-HorizontalAlign="Left" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
