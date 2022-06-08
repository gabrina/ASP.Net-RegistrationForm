using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NetExample
{
    public partial class UploadMultiplFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadMultipleFiles(object sender, EventArgs e)
        {
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                var count = 0;
                foreach (HttpPostedFile UploadFile in FileUpload1.PostedFiles)
                {
                    string fileName = System.IO.Path.GetFileName(UploadFile.FileName);
                    string SaveLocation = Server.MapPath("Upload") + "\\" + fileName;

                    try
                    {
                        UploadFile.SaveAs(SaveLocation);
                        count++;
                    }

                    catch (Exception ex)
                    {
                        Status.Text = "Error: " + ex.Message;
                    }
                }
                if (count > 0) Status.Text = count + " files has been uploaded";
            }
            else Status.Text = "Please selct a file to upload.";
        }
    }
}