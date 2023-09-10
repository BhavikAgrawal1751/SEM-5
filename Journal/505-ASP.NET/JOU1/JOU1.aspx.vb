
Partial Class JOU1
    Inherits System.Web.UI.Page
    Private Property strHobbies As Object
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'TextBox
        Label1.Text = TextBox1.Text
        'Calendar
        Label2.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy")
        'RadioButton()
        If (RadioButton1.Checked = True) Then
            Label3.Text = "Boy"
        ElseIf (RadioButton2.Checked = True) Then
            Label3.Text = "Girl"
        Else
            Label3.Text = "No selected Gender"
        End If
        'RadioButtonList
        Label4.Text = RadioButtonList1.SelectedItem.Text.ToString()
        Label4.Text = RadioButtonList1.SelectedIndex.ToString()
        Label4.Text = RadioButtonList1.SelectedValue.ToString()
        'CheckBox
        Dim strHobbies As String = " "
        If CheckBox1.Checked = True Then
            strHobbies = strHobbies + "Reading"
        ElseIf CheckBox2.Checked = True Then
            strHobbies = strHobbies + "Sports"
        ElseIf CheckBox3.Checked = True Then
            strHobbies = strHobbies + "Music"
        End If
        Label5.Text = strHobbies 'CheckBoxList
        Label6.Text = CheckBoxList1.Items.Count
        Label6.Text = CheckBoxList1.SelectedItem.Text.ToString() 'DropDownList
        Label7.Text = DropDownList1.SelectedItem.Text.ToString() 'ListBox
        Dim strActivity As String
End Class
