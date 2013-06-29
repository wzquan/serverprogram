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
        protected void OutputUserCount() //显示当前站点在线人数
        {
            show.Text = "站点在线人数：" + Application["UserCount"].ToString() + "<br />本页面的访问量：" + Application["StatCount"].ToString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Session["ip"].ToString()+"1"].ToString() != "1")
            {
                //锁定变量
                Application.Lock();
                //页面访问量加一
                Application["StatCount"] = int.Parse(Application["StatCount"].ToString()) + 1;
                //解锁
                Application.UnLock();
                Session[Session["ip"].ToString()] = "1";
            }
           // if (!Page.IsPostBack)
           // {
                OutputUserCount();
            //}
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