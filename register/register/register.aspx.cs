using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace register
{
    public partial class register : System.Web.UI.Page
    {
        protected void OutputUserCount() //显示当前站点在线人数
        {
            show.Text = "站点在线人数：" + Application["UserCount"].ToString() + "<br />本页面的访问量：" + Application["StatCount2"].ToString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session[Session["ip"].ToString()+"2"].ToString() != "1")
            {
            //锁定变量
            Application.Lock();
            //页面访问量加一
            Application["StatCount2"] = int.Parse(Application["StatCount2"].ToString()) + 1;
            //解锁
            Application.UnLock();
            Session[Session["ip"].ToString()+"2"] = "1";
            }
           // if (!Page.IsPostBack)
           // {
                OutputUserCount();
           // }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}