Imports System.Data.SqlClient

Partial Class Account_muestra_Default
    Inherits System.Web.UI.Page

    Dim conexion As New SqlConnection
    Dim consulta_usuario, img, titles As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        conexion.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ToString()
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        conexion.Open()
        consulta_usuario = "select Nombre from Tbl_Usuario where USUARIO = '" & CuidenEnfermedad.Text & "' AND PASSWORD = '" & CuidenEnfermedad1.Text & "' "
        Dim cmd As New SqlCommand(consulta_usuario, conexion)
        Dim resulset As SqlDataReader
        resulset = cmd.ExecuteReader
        If resulset.Read Then
            Session("nombre_sesion") = resulset("Nombre")

            Response.Redirect("Dictaminador.aspx")

        Else

            img = "~/Images/stop.png"
            titles = "Atención"
            msg("El nombre de usuario o contraseña son invalidos, verifica e intenta nuevamente.", img, titles)


        End If

    End Sub

    Private Sub msg(ByVal msgs As String, ByVal img As String, ByVal title As String)

        ASPxPopupControl1.Windows(0).Text = msgs
        ASPxPopupControl1.Windows(0).Left = 400
        ASPxPopupControl1.Windows(0).Top = 400
        ASPxPopupControl1.Windows(0).HeaderImage.Url = img
        ASPxPopupControl1.Windows(0).HeaderText = title
        ASPxPopupControl1.Windows(0).ShowOnPageLoad = True

    End Sub
End Class
