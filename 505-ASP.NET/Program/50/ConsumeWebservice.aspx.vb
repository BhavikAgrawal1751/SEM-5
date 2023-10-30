Imports System.Web.Services

Partial Class ConsumeWebservice
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim obj As New WebService
        Dim obj1 As New ServiceReference1.CalculatorSoapClient


        Dim str As String
        'str = obj.Addition(TextBox1.Text, TextBox2.Text)
        'str = obj.Multiplication(90, 200)
        str = obj1.Add(TextBox1.Text, TextBox2.Text)
        Label1.Text = str
    End Sub
End Class






