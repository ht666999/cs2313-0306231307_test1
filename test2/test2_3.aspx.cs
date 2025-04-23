using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "我喜欢ASP.NET!";
            string str1 = "<br>";
            Response.Write("<span style='font-size:20px;'>" + str + "</span>" + str1);
            Response.Write("<span style='font-size:40px;'>" + str + "</span>" + str1);
            Response.Write("<span style='font-size:60px;'>" + str + "</span>" + str1);
        }
    }
}