using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Account
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] != null)
            {
                Session["isLogin"] = null;
            }
            if (Session["admin"] != null)
            {
                Session["admin"] = null;
            }
            if (Session["user"] != null)
            {
                Session["user"] = null;
            }
            Response.Redirect("~/Account/Login.aspx");

        }
    }
}