using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test2_8_application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["name"] != null) 
            { Label1.Text = Application["name"].ToString()+"，欢迎您！"; }
            else Label1.Text = "请先登陆";
        }
    }
}