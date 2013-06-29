using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace register
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        private int usertype(string userid)
        {
            if (userid == "admin")
            {
                return 1;
            }
            else if (userid == "user")
            {
                return 2;
            }
            else
                return 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = name.Text.ToString();
            string pwd = password.Text.ToString();
            Session["UserType"] = usertype(userid);
            switch (Session["UserType"].ToString())
            {
                case "1":
                    Response.Write("<script>alert('你是管理员，是合法用户！')</script>");
                    break;
                case "2":
                    Response.Write("<script>alert('你是用户，是合法用户！')</script>");
                    break;
                default:
                    Response.Write("<script>alert('你不是合法用户！')</script>");
                    break;
            }
        }

    }
}