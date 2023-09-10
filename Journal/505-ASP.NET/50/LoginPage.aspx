<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="LoginPage.aspx.vb" Inherits="LoginPage_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                User Name:
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                password:
            </td>
           <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr><td>
            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td></tr>
    </table>
</asp:Content>
