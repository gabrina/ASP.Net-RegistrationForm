using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NetExample
{
    public partial class WebControls : System.Web.UI.Page
    {
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string tmp = "";
            if (RadioButton1.Checked == true) tmp = "Mr."; else tmp = "Ms.";
            UserInput.Text = "Hi, " + tmp + UserName.Text;
            Label1.Text = "! You Clicked the button";
            Label1.ForeColor = System.Drawing.Color.Red;
            UserInput.ForeColor = System.Drawing.Color.Red;
            ShowDate.Text = "You Birthday is:" + Calendar1.SelectedDate.ToString("D");
            ShowDate.ForeColor = System.Drawing.Color.Blue;
        }
    }
}