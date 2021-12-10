<%@ Page Title="Parts" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="PartsList.aspx.cs" Inherits="WebApplication.PartsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <h2>All Parts</h2>
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
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/ViewPart.aspx?id={0}" DataTextField="Id" HeaderText="Part ID" HeaderStyle-HorizontalAlign="Left" />
                        <asp:BoundField DataField="Description" HeaderText="Description" HeaderStyle-HorizontalAlign="Left" />
                        <asp:HyperLinkField DataNavigateUrlFields="Groupid" DataNavigateUrlFormatString="~/ProductGroupParts.aspx?productGroup={0}" DataTextField="Groupid" HeaderText="Product Group" HeaderStyle-HorizontalAlign="Left" />
                        <asp:BoundField DataField="Supplierid" HeaderText="Supplier ID" HeaderStyle-HorizontalAlign="Left" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
