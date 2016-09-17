Public Class RootMaster
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ASPxLabel2.Text = Date.Now.Year.ToString() + Server.HtmlDecode(" &copy; Copyright by [company name]")
    End Sub

End Class