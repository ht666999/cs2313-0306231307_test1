using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.ServerVariables["LOCAL_ADDR"];
            Label2.Text = Request.ServerVariables["REMOTE_ADDR"];
            Label3.Text = Request.Browser["Browser"];
            Label4.Text = Request.Browser["Version"];
            Label5.Text = Request.Browser["Cookies"].ToString();
        }
    }
}