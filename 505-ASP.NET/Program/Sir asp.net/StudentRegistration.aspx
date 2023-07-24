<%@ Page Language="VB" AutoEventWireup="false"  CodeFile="StudentRegistration.aspx.vb"
    Inherits="StudentRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>
    
    <script type="text/javascript" language="javascript">
        function chkdllcity(source, args) {
            var ddl = document.getElementById('ddlCity');
            var value = ddl.selectedIndex;
            if (value == 0) {
                args.IsValid = false;
            }
            else {args.IsValid = true; }

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1">
        <tr><td colspan="2" align="center"><strong>Registration Form</strong></td></tr>
            <tr>
                <td>
                    Student Name:
                </td>
                <td>
                    <asp:TextBox ID="txtStudentName" runat="server" SkinID="txtOne" 
                        ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Student Name." ControlToValidate="txtStudentName" 
                        ForeColor="Red" ValidationGroup="abc">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                    <asp:RadioButton ID="rbMale" Text="Male" runat="server" />
                    &nbsp;<asp:RadioButton ID="rebFemale" Text="Female" runat="server" 
                  />
                </td>
            </tr>
            <tr>
                <td>
                    City:</td>
                <td>
                    <asp:DropDownList ID="ddlCity" runat="server">
                        <asp:ListItem>--Select City--</asp:ListItem>
                        <asp:ListItem Value="100">Surat</asp:ListItem>
                        <asp:ListItem Value="101">Vapi</asp:ListItem>
                        <asp:ListItem Value="102">Valsad</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ErrorMessage="Please, select City." ClientValidationFunction="chkdllcity" 
                        ControlToValidate="ddlCity" ForeColor="#CC3300" ValidationGroup="abc">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                   Student Hobbies:</td>
                <td>
                    <asp:CheckBox ID="chkMusic" runat="server" Text="Music" /><asp:CheckBox ID="CheckBox2" Text="Sports" runat="server" /><asp:CheckBox
                        ID="CheckBox3" Text="Reading" runat="server" />  
                </td>
            </tr>
            <tr>
                <td>
                    Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" SkinID="txtTwo"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter Email Id." ForeColor="Red" 
                        ValidationGroup="abc">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter valid email id." 
                        ForeColor="#FF3300" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="abc">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Mobile No:</td>
                <td>
                    <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Address:</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                        ErrorMessage="Password and Confirm password must be equal." ForeColor="#CC0000" 
                        ValidationGroup="abc">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Age:</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtAge" 
                        ErrorMessage="Age should be between 18 to 50 years only." ForeColor="#FF3300" 
                        MaximumValue="50" MinimumValue="18" Type="Integer" ValidationGroup="abc">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="abc" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" />
                    <br />
                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="abc" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
