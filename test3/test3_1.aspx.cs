using cs2313huangtao_test1.test2;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_1 : System.Web.UI.Page
    {
        DataStudentDataContext db = new DataStudentDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            var result=from r in db.Student
                        select r;
            foreach (var r in result) { Label1.Text += r.Sno+" "+r.Sname+" "+r.Sgender+" "+r.College + "<br>"; }
        }
    }
}