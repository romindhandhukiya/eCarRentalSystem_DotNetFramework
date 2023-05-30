using eCar_Rental_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCar_Rental_System.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["page_msg"] != null){
                    Server_Message.Text = Session["page_msg"].ToString();
                    Session["page_msg"] = null;
                }
                if (Session["register_msg"] != null)
                {
                    Server_Message.Text = Session["register_msg"].ToString();
                    Session["register_msg"] = null;
                }
                if (Session["login_msg"] != null)
                {
                    Server_Message.Text = Session["login_msg"].ToString();
                    Session["login_msg"] = null;
                }
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if(Email_Textbox.Text == "admin@gmail.com" && Password_Textbox.Text == "admin")
            {
                Session["isLogin"] = "LoggedIn";
                Session["admin"] = "Admin";
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                AppDbContext context = new AppDbContext();
                var user = context.Users.FirstOrDefault(u => u.Email == Email_Textbox.Text && u.Password == Password_Textbox.Text);
                if(user != null)
                {
                    Session["isLogin"] = "LoggedIn";
                    Session["user"] = user.Email;
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    Session["login_msg"] = "Invalid Email or Password !";
                    Response.Redirect("~/Account/Login.aspx");
                }
            }
        }
    }
}