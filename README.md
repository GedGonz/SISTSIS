# SISTSIS
<<<<<<< HEAD
Proyecto tsis

public Stream GetStreamFile(string filePath)
{
    using (FileStream fileStream = File.OpenRead(filePath))
    {
        MemoryStream memStream = new MemoryStream();
        memStream.SetLength(fileStream.Length);
        fileStream.Read(memStream.GetBuffer(), 0, (int)fileStream.Length);
 
        return memStream;
    }
}

 //mail.Attachments.Add(new Attachment(pdfpath, "application/pdf"));
    mail.Attachments.Add(new Attachment(GetStreamFile(pdfpath), Path.GetFileName(pdfpath), "application/pdf"));
=======
Proyecto TSIS
>>>>>>> 9dae5b54ad3caaa0ff4dd36b5db45fae349f2403
