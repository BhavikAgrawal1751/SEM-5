<%@ Page Language="VB" AutoEventWireup="false" Theme="Test" CodeFile="ProductReg.aspx.vb" Inherits="ProductReg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" SkinID="txtone"></asp:TextBox><asp:TextBox ID="TextBox2"
            runat="server"></asp:TextBox><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            
        <table>
            <tr>
                <td class="style3">
                    name:&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Style="margin-left: 111px" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    contact no:
                    <asp:TextBox ID="TextBox5" runat="server" Style="margin-left: 89px" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="female" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    city:<asp:DropDownList ID="DropDownList1" runat="server" Style="margin-left: 137px">
                        <asp:ListItem>surat</asp:ListItem>
                        <asp:ListItem>valsad</asp:ListItem>
                        <asp:ListItem>pune</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Height="22px" Style="margin-left: 1px"
                        Width="200px" BackColor="White" BorderColor="#FF3399" BorderStyle="Dotted"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;Address:&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" Style="margin-left: 99px" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Age:<asp:TextBox ID="TextBox8" runat="server" Style="margin-left: 131px" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password:<asp:TextBox ID="TextBox9" runat="server" Style="margin-left: 100px" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Confirm password:<asp:TextBox ID="TextBox10" runat="server" Style="margin-left: 48px;
                        margin-right: 4px" Width="284px"></asp:TextBox>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
