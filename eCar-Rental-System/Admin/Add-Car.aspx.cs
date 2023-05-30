using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Admin
{
    public partial class Add_Car : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == null || Session["admin"] == null)
            {
                Session["page_msg"] = "Please Login as admin to Add-Car !!";
                Response.Redirect("~/Account/Login.aspx");
            }
        }

        protected void AddCar_Click(object sender, EventArgs e)
        {
            string img_path = "/images/" + Guid.NewGuid().ToString() + "_" + Image_Upload.PostedFile.FileName;
            Image_Upload.SaveAs(Server.MapPath("~" + img_path));

            AppDbContext context = new AppDbContext();
            Car car = new Car
            {
                Name = Name_Textbox.Text,
                No_Seat = int.Parse(Seat_Textbox.Text),
                Rate = int.Parse(Rate_Textbox.Text),
                FuelType = FuelType_Dropdown.SelectedValue,
                ImageUrl = img_path
            };
            context.Cars.Add(car);
            context.SaveChanges();

            Session["car_msg"] = "Car Added Successfully !";
            Response.Redirect("~/Admin/Manage-Car");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Manage-Car");
        }
    }
}