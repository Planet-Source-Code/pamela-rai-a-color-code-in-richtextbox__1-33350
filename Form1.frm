VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4980
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7215
   LinkTopic       =   "Form1"
   ScaleHeight     =   4980
   ScaleWidth      =   7215
   StartUpPosition =   3  'Windows Default
   Begin RichTextLib.RichTextBox Rich1 
      Height          =   4695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   8281
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      DisableNoScroll =   -1  'True
      AutoVerbMenu    =   -1  'True
      TextRTF         =   $"Form1.frx":0000
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Rich1_KeyUp(KeyCode As Integer, Shift As Integer)
setcolors
End Sub

Private Sub Rich1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
setcolors
End Sub


Public Sub setcolors()
commentchar = "'"
longvar = "$"
If KeyCode = 13 Then Exit Sub
LockWindowUpdate Me.hwnd
clearwordcolors Rich1
ColorizeWord Rich1, longvar, &H80& 'This is for vars with no fixed lenght e.g (in perl _
it could be $122434 0r $myvarx or $x ..... Always set this ($) as first word to colorize
ColorizeWord Rich1, commentchar, &H8000& 'This char is for comments like this
'''''''''''''''''''''''''''''''''''''''''''''''''''''''
ColorizeWord Rich1, "or", &H800000
ColorizeWord Rich1, "and", &H800000
ColorizeWord Rich1, "random", &H800000
ColorizeWord Rich1, "append", &H800000
ColorizeWord Rich1, "binary", &H800000
ColorizeWord Rich1, "exit", &H800000
ColorizeWord Rich1, "then", &H800000
ColorizeWord Rich1, "goto", &H800000
ColorizeWord Rich1, "case", &H800000
ColorizeWord Rich1, "select", &H800000
ColorizeWord Rich1, "end", &H800000
ColorizeWord Rich1, "Select Case", &H800000
ColorizeWord Rich1, "End select", &H800000
ColorizeWord Rich1, "for", &H800000
ColorizeWord Rich1, "each", &H800000
ColorizeWord Rich1, "loop", &H800000
ColorizeWord Rich1, "While", &H800000
ColorizeWord Rich1, "Until", &H800000
ColorizeWord Rich1, "for each", &H800000
ColorizeWord Rich1, "Next", &H800000
ColorizeWord Rich1, "True", &H800000
ColorizeWord Rich1, "False", &H800000
ColorizeWord Rich1, "sub", &H800000
ColorizeWord Rich1, "function", &H800000
ColorizeWord Rich1, "Integer", &H800000
ColorizeWord Rich1, "As", &H800000
ColorizeWord Rich1, "Private", &H800000
ColorizeWord Rich1, "Dim", &H800000
ColorizeWord Rich1, "else", &H800000
ColorizeWord Rich1, "else if", &H800000
ColorizeWord Rich1, "Public", &H800000
ColorizeWord Rich1, "Close", &H800000
ColorizeWord Rich1, "Open", &H800000
ColorizeWord Rich1, "End If", &H800000
ColorizeWord Rich1, "If", &H800000
ColorizeWord Rich1, "(", &H800000
ColorizeWord Rich1, ")", &H800000

LockWindowUpdate 0&
Rich1.Enabled = True
If Rich1.Visible = True Then
Rich1.SetFocus
End If
End Sub


