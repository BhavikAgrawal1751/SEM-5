Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class WebService
     Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function

    <WebMethod()> _
    Public Function Addition(ByVal a As Integer, ByVal b As Integer) As String
        Return a + b
    End Function
    <WebMethod()> _
    Public Function Subtraction(ByVal a As Integer, ByVal b As Integer) As String
        Return a - b
    End Function

    <WebMethod()> _
    Public Function Multiplication(ByVal a As Integer, ByVal b As Integer) As String
        Return a * b
    End Function


End Class