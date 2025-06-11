using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_12 : System.Web.UI.Page
    {
        DataStudentDataContext db=new DataStudentDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var result = (from i in db.Student
                          where GridView1.SelectedValue.ToString() == i.Sno
                          select i).First();
            Label1.Text=result.Sno+result.Sname+result.Sgender+result.College;
        }
    }
}