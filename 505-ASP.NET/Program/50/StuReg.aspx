<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="StuReg.aspx.vb" Inherits="StuReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" language="javascript">
    function chkdllcity(source, args) {
        var ddl = document.getElementById('ddlCity');
        var value = ddl.selectedIndex;
        if (value == 0) {
            args.IsValid = false;
        }
        else { args.IsValid = true; }

    }

    </script>
<div>
        <table border="1">
        <tr><td colspan="2" align="center"><strong>Registration Form</strong></td></tr>
        <tr><td colspan="2" align="center">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td></tr>
            <tr>
                <td>
                    Student Name:
                </td>
                <td>
                    <asp:TextBox ID="txtStudentName" runat="server" SkinID="txtOne"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Student Name." ControlToValidate="txtStudentName" 
                        ForeColor="Red" ValidationGroup="abc">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Subjects:</td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                        <asp:ListItem Value="100">DBMS</asp:ListItem>
                        <asp:ListItem Value="200">RDBMS</asp:ListItem>
                        <asp:ListItem Value="300">C</asp:ListItem>
                        <asp:ListItem Value="400">C++</asp:ListItem>
                        <asp:ListItem Value="500">JAVA</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                    <asp:RadioButton ID="rbMale" Text="Male" runat="server" GroupName="xyz" />
                    &nbsp;<asp:RadioButton ID="rebFemale" Text="Female" runat="server" 
                        Checked="True" GroupName="xyz" 
                  />
                </td>
            </tr>
            <tr>
                <td>
                    Semester:</td>
                <td>
                    <asp:RadioButtonList ID="rbSemList" runat="server" RepeatColumns="3" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="100">Sem-1</asp:ListItem>
                        <asp:ListItem Value="200">Sem-2</asp:ListItem>
                        <asp:ListItem Value="300">Sem-3</asp:ListItem>
                        <asp:ListItem Value="400">Sem-4</asp:ListItem>
                        <asp:ListItem Value="500">Sem-5</asp:ListItem>
                        <asp:ListItem Value="600">Sem-6</asp:ListItem>
                    </asp:RadioButtonList>
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
                    <asp:CheckBox ID="chkMusic" runat="server" Text="Music" />
                    <asp:CheckBox ID="chkSports" Text="Sports" runat="server" />
                    <asp:CheckBox
                        ID="chkReading" Text="Reading" runat="server" />  
                </td>
            </tr>
            <tr>
                <td>
                    Subjects:</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="201">DBMS</asp:ListItem>
                        <asp:ListItem Value="101">Mathematics</asp:ListItem>
                        <asp:ListItem Value="505">Asp.Net</asp:ListItem>
                        <asp:ListItem Value="103">Communication Skills</asp:ListItem>
                        <asp:ListItem Value="503">WFS</asp:ListItem>
                        <asp:ListItem Value="203">Stat</asp:ListItem>
                    </asp:CheckBoxList>
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
                    DOB:</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
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
</asp:Content>

