using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Admin
{
    public partial class Manage_Car : System.Web.UI.Page
    {
        protected List<Car> allCars;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] == null)
            {
                Session["page_msg"] = "Please Login as admin to Manage Car !";
                Response.Redirect("~/Account/Login.aspx");
            }
            if (Session["car_msg"] != null)
            {
                Server_Message.Text = Session["car_msg"].ToString();
                Session["car_msg"] = null;
            }

            AppDbContext context = new AppDbContext();
            this.allCars = context.Cars.ToList();
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            if (Search_Textbox.Text != "")
            {
                var seat = int.Parse(Search_Textbox.Text);
                AppDbContext context = new AppDbContext();
                this.allCars = context.Cars.Where(c => c.No_Seat == seat).ToList();
            }
        }

        protected void AddCar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add-Car.aspx");
        }
    }
}