using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NetExample
{
    public partial class LinkButton : System.Web.UI.Page
    {
        protected void LinkButton1_Click (object sender, EventArgs e)
        {
            Label1.Text = "Welcome to javapoint";
        }
    }
}