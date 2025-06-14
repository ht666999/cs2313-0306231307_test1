using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class useradd : System.Web.UI.Page
    {
        bananadataDataContext db=new bananadataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            
            if (Session["add"] == "admin")
            {
                Admins newuser = new Admins();
                newuser.PhoneNumber = TextBox2.Text;
                newuser.UserName = TextBox1.Text;
                newuser.UserPassword = TextBox3.Text;
                var result = (from id in db.Admins
                              where id.PhoneNumber == newuser.PhoneNumber
                              select newuser).FirstOrDefault();
                var result1 = (from id in db.Admins
                               where id.PhoneNumber == newuser.PhoneNumber
                               select newuser).FirstOrDefault();
                if (result == null&&result1==null)
                {
                    db.Admins.InsertOnSubmit(newuser);
                    db.SubmitChanges();
                    Label1.Text = "添加成功";
                }
                else Label1.Text = "该账号已存在！";
            }
            else
            {
                Users newuser = new Users();
                newuser.PhoneNumber = TextBox2.Text;
                newuser.UserName = TextBox1.Text;
                newuser.UserPassword = TextBox3.Text;
                var result = (from id in   db.Users 
                              where id.PhoneNumber == newuser.PhoneNumber
                              select newuser).FirstOrDefault();
                var result1 = (from id in db.Admins
                               where id.PhoneNumber == newuser.PhoneNumber
                               select newuser).FirstOrDefault();
                if (result == null&&result1==null)
                {
                    db.Users.InsertOnSubmit(newuser);
                    db.SubmitChanges();
                    Label1.Text = "注册成功！";
                    try { int flag = int.Parse(Request.QueryString["flag"].ToString()); if (flag == 1) { Response.Redirect("login.aspx"); } }
                    catch { Label1.Text = "用户添加成功！"; }
                }
                else Label1.Text = "该用户已存在！";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}