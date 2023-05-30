using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.User
{
    public partial class Add_Request : System.Web.UI.Page
    {
        protected Car car;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] != null)
                {
                    Session["page_msg"] = "Please Login to Add-Request !";
                    Response.Redirect("~/Account/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/User/Search-Car");
                }
                int id = int.Parse(Request.QueryString["id"].ToString());
                AppDbContext context = new AppDbContext();
                car = context.Cars.Find(id);
                Name_Label.Text = car.Name;
                FuelType_Label.Text = car.FuelType;
                Rate_Label.Text = car.Rate.ToString();
                Seat_Label.Text = car.No_Seat.ToString();
            }

        }

        protected void Request_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            string email = Session["user"].ToString();

            AppDbContext context = new AppDbContext();
            var car = context.Cars.FirstOrDefault(c => c.Id == id);
            var user = context.Users.FirstOrDefault(u => u.Email == email);

            Models.Request req = new Models.Request()
            {
                StartDate = Convert.ToDateTime(StartDate_Textbox.Text),
                EndDate = Convert.ToDateTime(EndDate_Textbox.Text),
                Status = "Pending"
            };

            req.car = car;
            req.user = user;
            context.Requests.Add(req);
            context.SaveChanges();

            Session["req_msg"] = "Request is Added !";
            Response.Redirect("~/User/My-Request.aspx");

        }
    }
}