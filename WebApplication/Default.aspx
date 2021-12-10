<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo: Using Synergy .NET in an ASP.NET Application</h1>
            <p>
                <b>IMPORTANT:</b> This sample environment is designed to demonstrate how to correctly utilize
                bsuiness logic in a Synergy .NET Interop assembly within an ASP.NET application, assuming the following:
            </p>
            <ul>
                <li>A stateless ASP.NET environment (i.e. &lt;sessionState mode="Off" /&gt;)</li>
                <li>A stateless Synergy .NET environment:
                <ul>
                    <li>No reliance on persistant values in GLOBAL, COMMON or STATIC data between method calls.</li>
                    <li>No open channels persist beyond any single method call.</li>
                    <li>xfServer MAY be used as long as your Synergy code calls XCALL S_SERVER_THREAD_INIT.</li>
                </ul>
                </li>
            </ul>
            <table style="padding: 30px;">
                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox ID="txtLogin" runat="server">user</asp:TextBox></td>
                    <td>The username is user</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server">password</asp:TextBox></td>
                    <td>The password is password</td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        <asp:Label ID="lblErrorText" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>Just click login!</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
