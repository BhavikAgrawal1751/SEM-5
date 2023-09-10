
Partial Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (Session("uname") Is Nothing) Then
            lblWelcome.Text = "Welcome," + Session("uname").ToString()
        Else
            Response.Redirect("LoginPage.aspx")

        End If
    End Sub

    Protected Sub lnkBtnLogOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkBtnLogOut.Click
        Session.Abandon()
        Response.Redirect("LoginPage.aspx")

    End Sub
End Class
