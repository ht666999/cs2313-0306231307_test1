using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_7 : System.Web.UI.Page
    {
        public class stugrade 
        {
            public string sid { get; set; }
            public string sname { get; set; }
            public string college { get; set; }
            public string cid {  get; set; }
            public double? grade { get; set; }
            

        }
        DataStudentDataContext db = new DataStudentDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = from i in db.Student select i;
            var result1 = from x in db.SC select x;
            GridView1.DataSource = result;
            GridView1.DataBind();
            GridView2.DataSource = result1;
            GridView2.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var result = from i in db.Student
                         join x in db.SC on i.Sno equals x.Sno
                         select new stugrade
                         {
                             sid = i.Sno,
                             sname = i.Sname,
                             college = i.College,
                             cid = x.Cno,
                             grade = x.Grade.HasValue?x.Grade:0,
                         };
            GridView3.DataSource = result;
            GridView3.DataBind();
        }
    }
}