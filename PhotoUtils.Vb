Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.IO
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.Drawing.Imaging

Public NotInheritable Class PhotoUtils

    ' *** Jpeg Format ***
    Private Sub New()
    End Sub
    Private Shared Function GetEncoderInfo(ByVal mimeType As String) As ImageCodecInfo
        Dim j As Integer
        Dim encoders() As ImageCodecInfo = ImageCodecInfo.GetImageEncoders()
        For j = 0 To encoders.Length - 1
            If encoders(j).MimeType = mimeType Then
                Return encoders(j)
            End If
        Next j
        Return Nothing
    End Function

    Public Shared Sub SaveToJpeg(ByVal bitmap As Bitmap, ByVal filePath As String, ByVal qualityPercent As Long)
        Dim imageCodecInfo As ImageCodecInfo = GetEncoderInfo("image/jpeg")
        Dim encoder As Encoder = Encoder.Quality
        Dim encoderParameters As New EncoderParameters(1)
        encoderParameters.Param(0) = New EncoderParameter(encoder, qualityPercent)
        bitmap.Save(filePath, imageCodecInfo, encoderParameters)
    End Sub

    ' *** Thumbnails ***
    Public Shared Function CreateThumbnail(ByVal image As Image, ByVal thumbnailSize As Integer) As Bitmap
        Dim w As Integer
        Dim h As Integer
        If image.Width > image.Height Then
            h = thumbnailSize
            w = CInt(Fix((image.Width * CSng(h)) / CSng(image.Height)))
        Else
            w = thumbnailSize
            h = CInt(Fix((image.Height * CSng(w)) / CSng(image.Width)))
        End If
        Dim newImage As New Bitmap(thumbnailSize, thumbnailSize, PixelFormat.Format24bppRgb)
        Using canvas As Graphics = Graphics.FromImage(newImage)
            canvas.SmoothingMode = SmoothingMode.AntiAlias
            canvas.InterpolationMode = InterpolationMode.HighQualityBicubic
            canvas.PixelOffsetMode = PixelOffsetMode.HighQuality
            canvas.DrawImage(image, New Rectangle(0, 0, w, h))
        End Using
        Return newImage
    End Function

    Public Shared Sub CreateThumbnailFile(ByVal filePath As String, ByVal thumbnailSize As Integer, ByVal thumbnailFilePath As String, ByVal qualityPercent As Long)

        Using stream As New FileStream(filePath, FileMode.Open)
            Using image As System.Drawing.Image = System.Drawing.Image.FromStream(stream)

                If image.Width = thumbnailSize AndAlso image.Height = thumbnailSize Then
                    File.Copy(filePath, thumbnailFilePath, True)
                Else
                    Using bitmap As Bitmap = CreateThumbnail(image, thumbnailSize)
                        SaveToJpeg(bitmap, thumbnailFilePath, qualityPercent)
                    End Using
                End If
            End Using
        End Using
    End Sub

    Public Shared Sub CreateThumbnailFile(ByVal filePath As String, ByVal thumbnailSize As Integer, ByVal thumbnailFilePath As String)
        CreateThumbnailFile(filePath, thumbnailSize, thumbnailFilePath, 90L)
    End Sub
End Class

