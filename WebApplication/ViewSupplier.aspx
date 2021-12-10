<%@ Page Title="View Supplier" Language="C#" MasterPageFile="~/LoggedIn.Master" AutoEventWireup="true" CodeBehind="ViewSupplier.aspx.cs" Inherits="WebApplication.ViewSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td colspan="2">
                <h2>Supplier Detail</h2>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="label1" runat="server" Text="Supplier ID" />
            </td>
            <td>
                <asp:TextBox ID="txtSupplierId" runat="server" MaxLength="20" Columns="22" ReadOnly="true" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="label2" runat="server" Text="Name" />
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" MaxLength="50" Columns="52" />
                <asp:RequiredFieldValidator ID="valName" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="label3" runat="server" Text="Address" />

            </td>
            <td>
                <asp:TextBox ID="txtAddress1" runat="server" MaxLength="50" Columns="52" />
                <asp:RequiredFieldValidator ID="valAddress1" runat="server" ControlToValidate="txtAddress1" ErrorMessage="*" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:TextBox ID="txtAddress2" runat="server" MaxLength="50" Columns="52" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:TextBox ID="txtAddress3" runat="server" MaxLength="50" Columns="52" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="label4" runat="server" Text="City" />
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" MaxLength="30" Columns="32" />
                <asp:RequiredFieldValidator ID="valCity" runat="server" ControlToValidate="txtCity" ErrorMessage="*" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="label5" runat="server" Text="Postal Code" />
            </td>
            <td>
                <asp:TextBox ID="txtPostalCode" runat="server" MaxLength="10" Columns="12" />
                <asp:RequiredFieldValidator ID="valPostalCode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="*" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="label6" runat="server" Text="Web Address" />
            </td>
            <td>
                <asp:TextBox ID="txtWebAddress" runat="server" MaxLength="78" Columns="80" />
                <asp:RequiredFieldValidator ID="valWebAddress" runat="server" ControlToValidate="txtWebAddress" ErrorMessage="*" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save (not implemented)" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="false" />
            </td>
        </tr>
    </table>
</asp:Content>
