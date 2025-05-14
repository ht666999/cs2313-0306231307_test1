using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_8 : System.Web.UI.Page
    {
        DataStudentDataContext db=new DataStudentDataContext();
        public class result 
        {
            public string college { get; set; }
            public string collegecount { get; set; }
            public double? max { get; set; }
            public double? min { get; set; }
            public double? average { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var rs = from i in db.Student
                     join x in db.SC on i.Sno equals x.Sno
                     group x by i.College into groiped
                     select new result
                     {
                         college = groiped.Key,
                         collegecount = groiped.Count().ToString(),
                         max = groiped.Max(x => x.Grade),
                         min = groiped.Min(x => x.Grade),
                         average = groiped.Average(x => x.Grade),
                     };
            GridView1.DataSource = rs;
            GridView1.DataBind();
            
        }
    }
}