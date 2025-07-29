Imports System.Security.Principal
Imports System.Web.SessionState

Public Class Global_asax
    Inherits System.Web.HttpApplication

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application is started
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session is started
    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires at the beginning of each request
    End Sub

    Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        ''Fires upon attempting to authenticate the use
        If Not (HttpContext.Current.User Is Nothing) Then
            If HttpContext.Current.User.Identity.IsAuthenticated Then
                If TypeOf HttpContext.Current.User.Identity Is FormsIdentity Then
                    Dim fi As FormsIdentity = CType(HttpContext.Current.User.Identity, FormsIdentity)
                    Dim fat As FormsAuthenticationTicket = fi.Ticket

                    'Dim astrRoles As String() = fat.UserData.Split("|"c)
                    'HttpContext.Current.User = New GenericPrincipal(fi, astrRoles)
                End If
            End If
        End If
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when an error occurs
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session ends
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application ends
    End Sub

End Class