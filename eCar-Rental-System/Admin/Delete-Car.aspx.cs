using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Admin
{
    public partial class Delete_Car : System.Web.UI.Page
    {
        protected Car car;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] == null)
            {
                Session["page_msg"] = "Please Login as Admin Delete Car !";
                Response.Redirect("~/Account/Login.aspx");
            }
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/Admin/Manage-Car");
            }
            int id = int.Parse(Request.QueryString["id"].ToString());
            AppDbContext context = new AppDbContext();
            car = context.Cars.Find(id);
            Name_Label.Text = car.Name;
            FuelType_Label.Text = car.FuelType;
            Rate_Label.Text = car.Rate.ToString();
            Seat_Label.Text = car.No_Seat.ToString();
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Manage-Car");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            AppDbContext context = new AppDbContext();
            var car = context.Cars.First(c => c.Id == id);
            File.Delete(Server.MapPath("~" + car.ImageUrl));
            context.Cars.Remove(car);
            context.SaveChanges();

            Session["car_msg"] = "Car is Deleted !";
            Response.Redirect("~/Admin/Manage-Car.aspx");
        }
    }
}