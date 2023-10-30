
Partial Class Receiver
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Request.QueryString("val") Is Nothing Then
            Label1.Text = Request.QueryString("val").ToString()
        Else
            Label1.Text = "NO value is entered"
        End If


    End Sub
End Class
