<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="SId" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="SId" HeaderText="SId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="SId" />
                <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                <asp:BoundField DataField="SGender" HeaderText="SGender" 
                    SortExpression="SGender" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/trydbStudents.mdb" 
            SelectCommand="SELECT [SId], [SName], [SGender] FROM [student_info] ORDER BY [SName] DESC">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
