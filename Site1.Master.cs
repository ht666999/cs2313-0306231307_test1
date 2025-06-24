using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImgBtn2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("user.aspx");
        }

        protected void ImgBtn3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("buycar.aspx?uid=" + Session["userid"].ToString());
        }

        protected void ImgBtn1_Click(object sender, ImageClickEventArgs e)
        {
            string str=Txt1.Text;
            if (str.Contains("mac")) { Response.Redirect("~/test4/home_categoty.aspx?categoty=1"); }
            if (str.Contains("ph")) { Response.Redirect("~/test4/home_categoty.aspx?categoty=2"); }
            if (str.Contains("wa")) { Response.Redirect("~/test4/home_categoty.aspx?categoty=3"); }
            if (str.Contains("pad")) { Response.Redirect("~/test4/home_categoty.aspx?categoty=4"); }
        }
    }
}