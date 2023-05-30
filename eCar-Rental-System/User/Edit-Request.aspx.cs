using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eCar_Rental_System.Models;

namespace eCar_Rental_System.User
{
    public partial class Edit_Request : System.Web.UI.Page
    {
        protected Models.Request req;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] != null)
                {
                    Session["page_msg"] = "Please Login to access Add-Request page !";
                    Response.Redirect("~/Account/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/User/My-Request");
                }
                else
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    AppDbContext context = new AppDbContext();

                    req = context.Requests.Find(id);
                    Name_Label.Text = req.car.Name;
                    FuelType_Label.Text = req.car.FuelType;
                    Rate_Label.Text = req.car.Rate.ToString();
                    Seat_Label.Text = req.car.No_Seat.ToString();
                }
            }
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                AppDbContext context = new AppDbContext();

                Models.Request edit = context.Requests.Find(id);
                edit.StartDate = Convert.ToDateTime(StartDate_Textbox.Text);
                edit.EndDate = Convert.ToDateTime(EndDate_Textbox.Text);
                context.SaveChanges();

                Session["req_msg"] = "Request is updated !";
                Response.Redirect("~/User/My-Request.aspx");
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/My-Request.aspx");
        }
    }
}