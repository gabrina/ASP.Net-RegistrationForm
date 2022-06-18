using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ASP.NetExample
{
    public partial class WebControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowCourses.Text = "";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Result.Text = "Result";
            Result.ForeColor = System.Drawing.Color.CadetBlue;
            string tmp = "";
            if (RadioButton1.Checked == true) tmp = "Mr."; else tmp = "Ms.";
            UserInput.Text = "Hi, " + tmp + UserName.Text;
            Label1.Text = "! You Clicked the button";
            Label1.ForeColor = System.Drawing.Color.Red;
            UserInput.ForeColor = System.Drawing.Color.Red;
            ShowDate.Text = "You Birthday is:" + Calendar1.SelectedDate.ToString("D");
            ShowDate.ForeColor = System.Drawing.Color.Blue;

            //for check boxes
            var message = "";
            if (CheckBox1.Checked) message = CheckBox1.Text + " ";
            if (CheckBox2.Checked) message += CheckBox2.Text + " ";
            if (CheckBox3.Checked) message += CheckBox3.Text;
            if (message == "") message = "None!";
            ShowCourses.Text = "Your courses are:" + message;
            ShowCourses.ForeColor = System.Drawing.Color.Olive;

            //Action for file upload
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("upload") + "\\" + FileName;
                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    FileUploadStatus.Text = "Your image was successfully uploaded.";
                }

                catch (Exception ex)
                {
                    FileUploadStatus.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                FileUploadStatus.Text = "Please select a file to upload:";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Label4.Text = "Image should be less than 4MB." + "<br />" + "Image should have a white background" + "<br />" + "Image should be clear enough" + " <br /> ";
        }


        protected void DownloadTerms(object sender, EventArgs e)
        {
            string filePath = "C:\\Users\\Neda\\source\\repos\\ASP.Net-RegistrationForm\\ASP.NetExample\\Terms.txt";
            FileInfo file = new FileInfo(filePath);
            if (file.Exists)
            {
                // Clear Rsponse reference  
                Response.Clear();
                // Add header by specifying file name  
                Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                // Add header for content length  
                Response.AddHeader("Content-Length", file.Length.ToString());
                // Specify content type  
                Response.ContentType = "text/plain";
                // Clearing flush  
                Response.Flush();
                // Transimiting file  
                Response.TransmitFile(file.FullName);
                
                Response.End();
                
            }
            else DownloadStatus.Text = "Requested file is not available to download";
        }

        protected System.Web.UI.HtmlControls.HtmlInputFile File1;
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;     
    }
}


    