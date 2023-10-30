Imports System.Data.Sql
Imports System.Data.OleDb
Imports System.Data
Partial Class StudentRegistration
    Inherits System.Web.UI.Page

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        'Me.Theme = "BlackTheme"
        DisplayData()
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        'Dim con As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\50\App_Data\dbStudents.accdb;Persist Security Info=True")
        Dim con As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\50\App_Data\trydbStudents.mdb;Persist Security Info=True")
        Dim cmd As New OleDbCommand
        Dim strQuery As String
        Dim strGender As String = ""
        If (rbMale.Checked = True) Then
            strGender = "Male"
        Else
            strGender = "FeMale"
        End If
        strQuery = "Insert into student_info(SName, SGender, SCity, SEmail) values ('" + txtStudentName.Text + "','" + strGender.ToString() + "','" + ddlCity.SelectedItem.Text.ToString() + "','" + txtEmail.Text + "')"
        cmd = New OleDbCommand(strQuery, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        lblMsg.Text = "Record inserted successfully"
        lblMsg.ForeColor = Drawing.Color.Green
        txtStudentName.Text = ""
        txtEmail.Text = ""
        ddlCity.SelectedIndex = 0
        rbMale.Checked = False
        rebFemale.Checked = False
        DisplayData()



    End Sub
    Sub DisplayData()
        Dim con As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\50\App_Data\trydbStudents.mdb;Persist Security Info=True")
        Dim cmd As New OleDbCommand
        Dim dt As New DataTable
        Dim rdr As IDataReader
        Dim strQuery As String = "Select * from student_info order by SID Desc"
        cmd = New OleDbCommand(strQuery, con)
        con.Open()
        rdr = cmd.ExecuteReader
        dt.Load(rdr)
        con.Close()
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim strSID As String = GridView1.DataKeys(e.RowIndex)("SID").ToString()

        Dim con As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\50\App_Data\trydbStudents.mdb;Persist Security Info=True")
        Dim cmd As New OleDbCommand
        Dim strQuery As String
        strQuery = "Delete from student_info Where SID=" + strSID.ToString()
        cmd = New OleDbCommand(strQuery, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        lblMsg.Text = "Record deleted successfully"
        lblMsg.ForeColor = Drawing.Color.Green

        DisplayData()

    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        Dim con As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\50\App_Data\trydbStudents.mdb;Persist Security Info=True")
        Dim cmd As New OleDbCommand
        Dim dt As New DataTable
        Dim rdr As IDataReader
        Dim strQuery As String = "Select * from student_info where SName like '%" + txtSearch.Text + "%' OR SCity like '%" + txtSearch.Text + "%' OR SEmail like '%" + txtSearch.Text + "%' "
        cmd = New OleDbCommand(strQuery, con)
        con.Open()
        rdr = cmd.ExecuteReader
        dt.Load(rdr)
        con.Close()
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView1.SelectedIndexChanging
        lblMsg.Text = ""
        btnSubmit.Visible = False
        btnUpdate.Visible = True
        Dim sid As String = GridView1.DataKeys(e.NewSelectedIndex)("SID").ToString()
        ViewState("sid") = sid
        Dim con As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\50\App_Data\trydbStudents.mdb;Persist Security Info=True")
        Dim cmd As New OleDbCommand
        Dim dt As New DataTable
        Dim rdr As IDataReader
        Dim strQuery As String = "Select * from student_info where SID=" + sid
        cmd = New OleDbCommand(strQuery, con)
        con.Open()
        rdr = cmd.ExecuteReader
        dt.Load(rdr)
        con.Close()
        If (dt.Rows.Count > 0) Then
            txtStudentName.Text = dt.Rows(0)("SName").ToString()
            Dim strGender As String = dt.Rows(0)("SGender").ToString()
            If (strGender = "Male") Then
                rbMale.Checked = True
                rebFemale.Checked = False
            Else
                rebFemale.Checked = True
                rbMale.Checked = False
            End If

            'it will change the value of ddlCity[0]
            ddlCity.SelectedItem.Text = dt.Rows(0)("SCity").ToString()
            'Solution : For that you can change it to old value(--Select City--) on update button 

            txtEmail.Text = dt.Rows(0)("SEmail").ToString()
        End If

    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        'Dim sid As String = GridView1.DataKeys(e.NewSelectedIndex)("SID").ToString()

        Dim con As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\50\App_Data\trydbStudents.mdb;Persist Security Info=True")
        Dim cmd As New OleDbCommand
        Dim strQuery As String
        Dim strGender As String = ""
        If (rbMale.Checked = True) Then
            strGender = "Male"
        Else
            strGender = "FeMale"
        End If
        strQuery = "Update student_info set SName='" + txtStudentName.Text + "', SGender='" + strGender.ToString() + "', SCity='" + ddlCity.SelectedItem.Text + "', SEmail='" + txtEmail.Text + "' Where SID=" + ViewState("sid").ToString()
        cmd = New OleDbCommand(strQuery, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        lblMsg.Text = "Record updated successfully"
        lblMsg.ForeColor = Drawing.Color.Green

        txtStudentName.Text = ""
        txtEmail.Text = ""
        ddlCity.SelectedIndex = 0
        rbMale.Checked = False
        rebFemale.Checked = False

        'Change the value of ddlCity[0] to old value (--Select City--)
        ddlCity.SelectedItem.Text = "--Select City--"

        btnSubmit.Visible = True
        btnUpdate.Visible = False
        DisplayData()

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
End Class







