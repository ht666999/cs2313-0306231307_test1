using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?name=categoty=2");
        }

        protected void Unnamed1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=1");
        }

        protected void Unnamed2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=2");
        }

        protected void Unnamed3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=4");
        }

        protected void Unnamed4_DataBinding(object sender, EventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=3");
        }

        protected void Unnamed5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=3");
        }

        protected void Unnamed7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=4");
        }

        protected void Unnamed8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=1");
        }

        protected void Unnamed9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=3");
        }

        protected void Unnamed4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home_categoty.aspx?categoty=3");
        }
    }
}