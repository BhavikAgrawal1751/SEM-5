Imports System.Data.Sql
Imports System.Data.OleDb
Imports System.Data
Partial Class LoginPage_
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim con As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\50\App_Data\trydbStudents.mdb;Persist Security Info=True")
        Dim cmd As New OleDbCommand
        Dim dt As New DataTable
        Dim rdr As IDataReader
        Dim strQuery As String = "Select * from student_info where SEmail='" + txtUserName.Text + "' AND SPassword= '" + txtPassword.Text + "'"
        cmd = New OleDbCommand(strQuery, con)
        con.Open()
        rdr = cmd.ExecuteReader
        dt.Load(rdr)
        con.Close()
        If (dt.Rows.Count > 0) Then
            Session("uname") = dt.Rows(0)("SName").ToString()
            Session.Timeout = 30
            Response.Redirect("Dashboard.aspx")
        Else
            lblMsg.ForeColor = Drawing.Color.Red
            lblMsg.Text = "User Name/Password Incorrect"
        End If
      
    End Sub
End Class
