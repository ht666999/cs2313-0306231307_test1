using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class login : System.Web.UI.Page
    {
        bananadataDataContext db=new bananadataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "";
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string name=txtUsername.Text;      
            var result =(from i in db.Users
                        where i.PhoneNumber == name
                        select i).FirstOrDefault();
            if (result == null)
            {
                var re = (from i in db.Admins
                         where i.PhoneNumber == name
                         select i).FirstOrDefault();
                if (re == null)
                    Label1.Text = "账号不存在";
                else
                {
                    if (re.UserPassword != txtPassword.Text) { Label1.Text = "密码错误";return; }
                    Session.Contents["name"]=re.UserName;
                    Session.Contents["userphone"] = name;
                    Response.Redirect("admin.aspx");
                }
            }
            else 
            {
                if (result.UserPassword != txtPassword.Text) { Label1.Text = "密码错误"; return; }
                Session.Contents["name"]=result.UserName;
                Session.Contents["userphone"] = name;
                Response.Redirect("home.aspx");
            }              
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}