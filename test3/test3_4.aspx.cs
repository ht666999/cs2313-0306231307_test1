using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_4 : System.Web.UI.Page
    {
        DataStudentDataContext db = new DataStudentDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var result=from r in db.Student
                       select r;
            GridView1.DataSource = result;
            GridView1.DataBind();
        }
    }
}