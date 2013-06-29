<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="register.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>注册</title>
</head>
<body>
    <form id="form1" runat="server">

    <div><center>
    <font size="5" color="blue">注册页面</font></center>
    </div>
    <asp:Table ID="Table" runat="server" CellPadding="5" GridLines="horizontal" HorizontalAlign="Center">
    <asp:TableRow>
        
    <asp:TableCell><asp:Label ID="name" runat="server" Text="姓名"></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="tb_name" runat="server"></asp:TextBox></asp:TableCell>
    <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="姓名不能为空" ControlToValidate="tb_name" ForeColor="red" Display="Dynamic">
        </asp:RequiredFieldValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><asp:Label ID="password" runat="server" Text="密码"></asp:Label></asp:TableCell>
     <asp:TableCell><asp:TextBox ID="tb_pw" TextMode="password" runat="server"></asp:TextBox></asp:TableCell>
     <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="密码不能为空" ControlToValidate="tb_pw" ForeColor="red" Display="Dynamic">
        </asp:RequiredFieldValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><asp:Label ID="passwordconfirm" runat="server" Text="确认密码" ></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="tb_pwc" TextMode="password" runat="server"></asp:TextBox></asp:TableCell>
    <asp:TableCell><asp:CompareValidator runat="server" ControlToCompare="tb_pw" ControlToValidate="tb_pwc" Display="Dynamic" 
    ErrorMessage="二次密码输入不一致" ForeColor="red">
        </asp:CompareValidator></asp:TableCell>

    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><asp:Label ID="address" runat="server" Text="联系地址"></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="tb_address" runat="server"></asp:TextBox></asp:TableCell>
    <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="地址不能为空" ControlToValidate="tb_address" ForeColor="red" Display="Dynamic">
        </asp:RequiredFieldValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><asp:Label ID="birthday" runat="server" Text="出生日期" Columns="2"></asp:Label></asp:TableCell>
    <asp:TableCell>
    <asp:TextBox ID="tb_year" runat="server" Columns="2" ></asp:TextBox>      
    <asp:Label ID="Label1" runat="server" Text="-"></asp:Label>
    <asp:TextBox ID="tb_month" runat="server" Columns="1" ></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="-"></asp:Label>
    <asp:TextBox ID="tb_day" runat="server" Columns="1"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server"  ControlToValidate="tb_year" Display="Dynamic" ForeColor="red" ErrorMessage="输入年份要小于2013" MaximumValue="2013" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="输入月份范围1-12" ForeColor="Red" ControlToValidate="tb_month"  MaximumValue="12" MinimumValue="1" Display="Dynamic" Type="Integer"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="输入日期范围1-31" ForeColor="Red" ControlToValidate="tb_day" Display="Dynamic"  MaximumValue="31" MinimumValue="1" Type="Integer"></asp:RangeValidator>
    </asp:TableCell>
    <asp:TableCell><asp:Label ID="warn5" runat="server" Text=""></asp:Label></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><asp:Label ID="email" runat="server" Text="邮箱"></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="tb_email" runat="server"></asp:TextBox></asp:TableCell>
    <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="请输入正确邮箱" ForeColor="Red" ControlToValidate="tb_email" 
            Display="Dynamic" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><asp:Label ID="postnum" runat="server" Text="邮编"></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="tb_pn" runat="server"></asp:TextBox></asp:TableCell>
     <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ErrorMessage="请输入正确邮编" ForeColor="Red" Display="Dynamic"  ControlToValidate="tb_pn"
            ValidationExpression="\d{6}"></asp:RegularExpressionValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><asp:Label ID="tel" runat="server" Text="联系电话"></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="tb_tel" runat="server"></asp:TextBox></asp:TableCell>
     <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ErrorMessage="请输入正确联系电话" ForeColor="Red" Display="Dynamic" 
            ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}" ControlToValidate="tb_tel"></asp:RegularExpressionValidator></asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    <center>
    <asp:Button ID="Button1" runat="server"  Text="注册" OnClick="Button1_Click"/>
    </center>
    </form>
</body>
</html>
