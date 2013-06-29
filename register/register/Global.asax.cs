using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace register
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            // 在应用程序启动时运行的代码//初始化变量：UserCount 和 StatCount

            Application.Lock();      //临界变量,使用加锁功能,其他用户不能访问。
            Application["UserCount"] = 0;
            Application.UnLock();     //临界变量被解锁。

            Application.Lock();      //临界变量,使用加锁功能,其他用户不能访问。
            Application["StatCount"] = 0;
            Application.UnLock();     //临界变量被解锁。
            /*
            Application.Lock();      //临界变量,使用加锁功能,其他用户不能访问。
            Application["StatCount_ViewSF"] = 0;
            Application.UnLock();     //临界变量被解锁。
             * */
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // 在新会话启动时运行的代码
            Application.Lock();      //临界变量,使用加锁功能,其他用户不能访问。
            Application["UserCount"] = Int32.Parse(Application["UserCount"].ToString()) + 1;
            Application.UnLock();       //临界变量被解锁。

            //测试某一页的访问量※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※
            String pageurl = Request.Url.ToString();//获取用户访问的页面

            if (pageurl.EndsWith("Default.aspx")) //判断访问的是否是默认页
            {
                //锁定变量
                Application.Lock();
                //页面访问量加一
                Application["StatCount"] = int.Parse(Application["StatCount"].ToString()) + 1;
                //解锁
                Application.UnLock();
            }
            /*
            else if (pageurl.EndsWith("ViewStateForm.aspx")) //判断访问的是否是默认页
            {
                //锁定变量
                Application.Lock();
                //页面访问量加一
                Application["StatCount_ViewSF"] = int.Parse(Application["StatCount_ViewSF"].ToString()) + 1;
                //解锁
                Application.UnLock();
            }*/
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            // 在会话结束时运行的代码。
            // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
            // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer
            // 或 SQLServer，则不会引发该事件。
            Application.Lock();
            Application["UserCount"] = Int32.Parse(Application["UserCount"].ToString()) - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}