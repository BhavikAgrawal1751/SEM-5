
Partial Class StuReg
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        'lblMsg.Text = txtStudentName.Text
        'Dim str As String = ""
        'If rebFemale.Checked = True Then
        '    str = "FeMale"
        'Else
        '    str = "Male"
        'End If
        'lblMsg.Text = str.ToString

        'lblMsg.Text = rbSemList.SelectedValue.ToString() + "(" + rbSemList.SelectedItem.Text + ")"

        Dim strHobbies As String = ""
        'If chkMusic.Checked = True Then
        '    strHobbies = strHobbies + " " + chkMusic.Text
        'End If
        'If chkSports.Checked = True Then
        '    strHobbies = strHobbies + " " + chkSports.Text
        'End If
        'If chkReading.Checked = True Then
        '    strHobbies = strHobbies + " " + chkReading.Text
        'End If
        'lblMsg.Text = strHobbies
        'Dim i As Integer = 0

        'For i = 0 To CheckBoxList1.Items.Count - 1
        '    If (CheckBoxList1.Items(i).Selected = True) Then
        '        strHobbies = strHobbies + " " + CheckBoxList1.Items(i).Text.ToString() + "(" + CheckBoxList1.Items(i).Value.ToString() + ")"
        '    End If
        'Next
        'lblMsg.Text = strHobbies

        'lblMsg.Text = ddlCity.SelectedItem.Text.ToString + " " + ddlCity.SelectedValue.ToString()
        lblMsg.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy hh:mm:ss tt")



    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Calendar1.SelectedDate = System.DateTime.Now

    End Sub
End Class
