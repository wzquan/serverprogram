<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="register.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录页面</title>
</head>
<body>
    <form id="form1" runat="server">
<p><font size="5" color="blue">主页</font></p>
用户类型：<asp:TextBox ID="name" runat="server"></asp:TextBox><br />
密&nbsp; &nbsp; 码：<asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" />
<p>这个人很懒，什么东西也没留下。请戳这里
 
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">注册</asp:HyperLink>（统计在线人数，网站中的访问量，并完成用户信息合法性判断）
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="show" runat="server"></asp:Label>
    </p>
    </form>
    </body>
</html>
