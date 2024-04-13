using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PhotoUtils
/// </summary>
public class PhotoUtils
{
    public PhotoUtils()
    {
        //
        // TODO: Add constructor logic here
        //

    }

        // *** Thumbnails ***
    public static Bitmap CreateThumbnail(Image image, int thumbnailSize)
    {
        int w;
        int h;
        if (image.Width > image.Height)
        {
            h = thumbnailSize;
            w = System.Convert.ToInt32(((image.Width * System.Convert.ToSingle(h)) / (double)System.Convert.ToSingle(image.Height)));
        }
        else
        {
            w = thumbnailSize;
            h = System.Convert.ToInt32(((image.Height * System.Convert.ToSingle(w)) / (double)System.Convert.ToSingle(image.Width)));
        }
        Bitmap newImage = new Bitmap(thumbnailSize, thumbnailSize, PixelFormat.Format24bppRgb);
        using (Graphics canvas = Graphics.FromImage(newImage))
        {
            canvas.SmoothingMode = SmoothingMode.AntiAlias;
            canvas.InterpolationMode = InterpolationMode.HighQualityBicubic;
            canvas.PixelOffsetMode = PixelOffsetMode.HighQuality;
            canvas.DrawImage(image, new Rectangle(0, 0, w, h));
        }
        return newImage;
    }


    public static void SaveToJpeg(Bitmap bitmap, string filePath, long qualityPercent)
    {
        ImageCodecInfo imageCodecInfo = GetEncoderInfo("image/jpeg");
        Encoder encoder = Encoder.Quality;
        EncoderParameters encoderParameters = new EncoderParameters(1);
        encoderParameters.Param[0] = new EncoderParameter(encoder, qualityPercent);
        bitmap.Save(filePath, imageCodecInfo, encoderParameters);
    }
    private static ImageCodecInfo GetEncoderInfo(string mimeType)
    {
        int j;
        ImageCodecInfo[] encoders = ImageCodecInfo.GetImageEncoders();
        for (j = 0; j <= encoders.Length - 1; j++)
        {
            if (encoders[j].MimeType == mimeType)
                return encoders[j];
        }
        return null/* TODO Change to default(_) if this is not a reference type */;
    }
}