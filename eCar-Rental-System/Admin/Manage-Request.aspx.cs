using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Admin
{
    public partial class Manage_Request : System.Web.UI.Page
    {
        protected List<Request> AllRequests;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] == null)
            {
                Session["page_msg"] = "Please Login as admin to Manage Requests !";
                Response.Redirect("~/Account/Login.aspx");
            }
            if (Session["action_msg"] != null)
            {
                msg_label.Text = Session["action_msg"].ToString();
                Session["action_msg"] = null;
            }
            AppDbContext context = new AppDbContext();
            AllRequests = context.Requests.Where(r => r.Status == "Pending").ToList();
        }
    }
}