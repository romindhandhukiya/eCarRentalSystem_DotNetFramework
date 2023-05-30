using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eCar_Rental_System.Models;

namespace eCar_Rental_System.User
{
    public partial class My_Request : System.Web.UI.Page
    {
        protected List<Models.Request> requests;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] != null)
            {
                Session["page_msg"] = "Please Login to access My-Request !";
                Response.Redirect("~/Account/Login.aspx");
            }
            if (Session["req_msg"] != null)
            {
                msg_label.Text = Session["req_msg"].ToString();
                Session["req_msg"] = null;
            }
            string user = Session["user"].ToString();
            AppDbContext context = new AppDbContext();
            requests = context.Requests.Where(r => r.user.Email == user).ToList();
        }
    }
}