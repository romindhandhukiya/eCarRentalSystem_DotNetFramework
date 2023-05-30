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
    public partial class Edit_Car : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["isLogin"] == null || Session["admin"] == null)
                {
                    Session["page_msg"] = "Please Login as Admin to Edit the Car !";
                    Response.Redirect("~/Account/Login.aspx");
                }
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("~/Admin/Manage-Car");
                }
                else
                {
                    int id = int.Parse(Request.QueryString["id"].ToString());
                    AppDbContext context = new AppDbContext();
                    Car car = context.Cars.Find(id);
                    Name_Textbox.Text = car.Name;
                    Seat_Textbox.Text = car.No_Seat.ToString();
                    Rate_Textbox.Text = car.Rate.ToString();
                    FuelType_Dropdown.SelectedValue = car.FuelType;
                }
            }
        }

        protected void EditCar_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                AppDbContext context = new AppDbContext();
                var car = context.Cars.First(c => c.Id == id);

                car.Name = Name_Textbox.Text;
                car.No_Seat = int.Parse(Seat_Textbox.Text);
                car.Rate = int.Parse(Rate_Textbox.Text);
                car.FuelType = FuelType_Dropdown.SelectedValue;

                if (Image_Upload.HasFile)
                {
                    File.Delete(Server.MapPath("~" + car.ImageUrl));

                    string img_path = "/images/" + Guid.NewGuid().ToString() + "_" + Image_Upload.PostedFile.FileName;
                    Image_Upload.SaveAs(Server.MapPath("~" + img_path));
                    car.ImageUrl = img_path;
                }

                context.SaveChanges();

                Session["car_msg"] = "Car is Updated !";
                Response.Redirect("~/Admin/Manage-Car.aspx");
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Manage-Car.aspx");
        }
    }
}