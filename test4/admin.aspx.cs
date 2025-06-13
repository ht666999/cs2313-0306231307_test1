using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static cs2313huangtao_test1.test4.admin;

namespace cs2313huangtao_test1.test4
{
    public partial class admin : System.Web.UI.Page
    {
        bananadataDataContext db=new bananadataDataContext();
        Users newuser;
        
        void Gvvisible() 
        {
            GVuser.Visible=false;
            GVadmin.Visible=false;
            GVcategory.Visible=false;
            GVproduct.Visible=false;
            userbtn.Visible=false;
            Button5.Visible=false;
            Button6.Visible=false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string name;
                if (Session["userphone"] == null) name = "管理员";
                else
                {
                    var result = (from i in db.Admins
                                  where i.PhoneNumber == Session["userphone"].ToString()
                                  select i).First();
                    name = result.UserName;
                }

                Label1.Text = "欢迎管理员：" + name;
                Gvvisible();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Gvvisible();
            GVadmin.Visible = true;
            Button5.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Gvvisible();
            GVuser.Visible = true;
            userbtn.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Gvvisible();
            //GVcategory.SelectedIndex = -1;
            //GVproduct.DataSource = null;
            //GVproduct.DataSourceID = "product";
            GVproduct.DataBind();
            GVcategory.Visible =true;
            GVproduct.Visible=true;
            Button6.Visible =true;
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
                //var result = from i in db.Products
                //             where GVcategory.SelectedValue.ToString() == i.CategoryID.ToString()
                //             select i;
                //GVproduct.DataSourceID = null;
                //GVproduct.DataSource = result;
                //GVproduct.DataBind();
            
        }

        protected void userbtn_Click(object sender, EventArgs e)
        {
            Session["add"] = "user";
            Response.Redirect("useradd.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["add"] = "admin";
            Response.Redirect("useradd.aspx");

        }
    }
}