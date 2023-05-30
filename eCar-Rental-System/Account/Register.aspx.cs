using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            AppDbContext context = new AppDbContext();
            Models.User user = new Models.User
            {
                Name = Name_Textbox.Text,
                Email = Email_Textbox.Text,
                MobileNo = Mo_Textbox.Text,
                Address = Address_Textbox.Text,
                Password = Password_Textbox.Text
            };

            context.Users.Add(user);
            context.SaveChanges();

            Session["register_msg"] = "User Registered Successfully !";
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}