<%@ Page Title="Suppliers" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="WebApplication.Suppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <h2>All Suppliers</h2>
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
                        <asp:HyperLinkField DataNavigateUrlFields="Supplier_id" DataNavigateUrlFormatString="~/ViewSupplier.aspx?id={0}" DataTextField="Supplier_id" HeaderText="Supplier ID" HeaderStyle-HorizontalAlign="Left" />
                        <asp:BoundField DataField="Name" HeaderText="Supplier Name" HeaderStyle-HorizontalAlign="Left" />
                        <asp:BoundField DataField="Web_address" HeaderText="Web Address" HeaderStyle-HorizontalAlign="Left" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
