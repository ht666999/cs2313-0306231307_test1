using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test2
{
    public partial class test7_session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Contents["name"] == null) Label1.Text = "请先登陆";
            else Label1.Text = Session.Contents["name"].ToString();
        }
    }
}