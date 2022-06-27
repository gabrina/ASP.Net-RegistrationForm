using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NetExample
{
    public partial class CookieExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //-------------- Creating Cookie --------------------------//  
            // Creating HttpCookie instance by specifying name "student"  
            HttpCookie cokie = new HttpCookie("student");
            // Assigning value to the created cookie  
            cokie.Value = "Rahul Kumar";
            // Adding Cookie to the response instance  
            Response.Cookies.Add(cokie);
            //--------------- Fetching Cookie -------------------------//  
            var co_val = Response.Cookies["student"].Value;
            Label1.Text = co_val;
        }
    }
}