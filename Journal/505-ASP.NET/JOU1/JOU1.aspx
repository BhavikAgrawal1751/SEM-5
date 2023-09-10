<%@ Page Language="VB" AutoEventWireup="false" CodeFile="JOU1.aspx.vb" Inherits="JOU1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title></title>
<style type="text/css">
.style1
{
height: 31px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div>
<table border="3">
<tr><td colspan="3">
<h2 align="center"><b>Controls</b></h2>
</td></tr>
<tr><td>
TextBox:<br /> (Name)
</td>
<td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
<td class="style1">
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td>
Calendar:<br /> (Date of Birth)</td>
<td><asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4"
DayNameFormat="Shortest" Height="180px"
Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Width="200px">
<DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
<NextPrevStyle VerticalAlign="Bottom" />
<OtherMonthDayStyle ForeColor="#808080" />
<SelectedDayStyle BackColor="#666666" Font-Bold="True"ForeColor="White" />

<SelectorStyle BackColor="#CCCCCC" />
<TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
<TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
<WeekendDayStyle BackColor="#FFFFCC" />
</asp:Calendar>
</td><td class="style1">
<asp:Label ID="Label2" runat="server"
Text="Label"></asp:Label>
</td></tr>
<tr><td>
Radio Button:<br /> (Departments)</td>
<td><asp:RadioButton ID="RadioButton1" runat="server" GroupName="rb" Text="Boy"
ValidationGroup="abc" />
<asp:RadioButton ID="RadioButton2" runat="server" GroupName="rb" Text="Girl"
ValidationGroup="abc" />
</td><td class="style1">
<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td>
Radio Button List:<br /> (Semester)</td>
<td><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
<asp:ListItem Value="1001">Sem 1</asp:ListItem>
<asp:ListItem Value="1002">Sem 2</asp:ListItem>
<asp:ListItem Value="1003">Sem 3</asp:ListItem>
<asp:ListItem Value="1004">Sem 4</asp:ListItem>
<asp:ListItem Value="1005">Sem 5</asp:ListItem>
<asp:ListItem Value="1006">Sem 6</asp:ListItem>
</asp:RadioButtonList>
</td><td class="style1">
<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td>
Check Box:<br /> (Hobbies)</td>
<td><asp:CheckBox ID="CheckBox1" runat="server" Text="Reading" />
<asp:CheckBox ID="CheckBox2" runat="server" Text="Sports" />
<asp:CheckBox ID="CheckBox3" runat="server" Text="Music" />
</td><td class="style1">
<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td>
Check Box List:<br /> (Sports Speciallity)
</td>
5
<td><asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2">
<asp:ListItem Value="5001">Vollyball</asp:ListItem>
<asp:ListItem Value="5002">Hockey</asp:ListItem>
<asp:ListItem Value="5003">Football</asp:ListItem>
<asp:ListItem Value="5004">Chess</asp:ListItem>
<asp:ListItem Value="5005">Football</asp:ListItem>
<asp:ListItem Value="5006">Khokho</asp:ListItem>
</asp:CheckBoxList>
</td><td class="style1">
<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td>
Drop Down List:<br /> (Music Speciallity)
</td><td>
<asp:DropDownList ID="DropDownList1" runat="server">
<asp:ListItem Value="101">Flute</asp:ListItem>
<asp:ListItem Value="102">Harmonium</asp:ListItem>
<asp:ListItem Value="103">Guitar</asp:ListItem>
<asp:ListItem Value="104">Harmonium</asp:ListItem>
</asp:DropDownList>
</td><td class="style1">
<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td>
List Box:<br /> (Activity Selection)</td>
<td><asp:ListBox ID="ListBox1" runat="server" Height="76px">
<asp:ListItem Value="301">--Saptdhara--</asp:ListItem>
<asp:ListItem Value="302">--NCC--</asp:ListItem>
<asp:ListItem Value="303">--PT--</asp:ListItem>
</asp:ListBox>
</td><td class="style1">
<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td>
File Upload:<br /> (ID Card)</td>
<td>
<asp:FileUpload ID="FileUpload1" runat="server" /> <br />
</td><td class="style1">
<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
</td></tr>
<tr><td class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Height="40px"
Text="Submit" Width="117px" ValidationGroup="abc" />
</td>
6
</tr>
</table>
</div>
</form>
</body>
</html>
