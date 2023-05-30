using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Admin
{
    public partial class Action_Request : System.Web.UI.Page
    {
        protected Models.Request req;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] == null)
                {
                    Session["page_msg"] = "Please Login as admin to take an Action on Request !";
                    Response.Redirect("~/Account/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/Admin/Manage-Request");
                }
                int id = int.Parse(Request.QueryString["id"]);
                AppDbContext context = new AppDbContext();
                req = context.Requests.Find(id);

                User_Label.Text = req.user.Name;
                Car_Label.Text = req.car.Name;
                FuelType_Label.Text = req.car.FuelType;
                Rate_Label.Text = req.car.Rate.ToString();
                Seat_Label.Text = req.car.No_Seat.ToString();
                StartDate_Label.Text = req.StartDate.ToString();
                EndDate_Label.Text = req.EndDate.ToString();
            }

        }

        protected void Accept_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            AppDbContext context = new AppDbContext();
            Models.Request pending = context.Requests.Find(id);

            pending.Status = "Accepted";
            context.SaveChanges();

            Session["action_msg"] = "Car Request is Accepted !";
            Response.Redirect("~/Admin/Manage-Request");
        }

        protected void Decline_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            AppDbContext context = new AppDbContext();
            Models.Request pending_req = context.Requests.Find(id);

            pending_req.Status = "Declined";
            context.SaveChanges();

            Session["action_msg"] = "Car Request is Declined !";
            Response.Redirect("~/Admin/Manage-Request");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Manage-Request");
        }
    }
}