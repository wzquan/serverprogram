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
            if (!Page.IsPostBack) { OutputUserCount(); }
        }
        protected void OutputUserCount() //显示当前站点在线人数
        {
            Response.Write("站点在线人数：");
            Response.Write(Application["UserCount"].ToString());
            Response.Write("  人。");

            Response.Write("本页面的访问量：");
            Response.Write(Application["StatCount"].ToString());
            Response.Write("   。");

        }
    }
}