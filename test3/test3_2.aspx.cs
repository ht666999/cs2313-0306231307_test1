using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test : System.Web.UI.Page
    {

        DataStudentDataContext db =new DataStudentDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var result =from r in db.Student                        
                        select r;
            foreach (var s in result) { DropDownList1.Items.Add(s.Sname); }
            DropDownList1_SelectedIndexChanged(this, EventArgs.Empty);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var result = (from r in db.Student
                         where r.Sname == DropDownList1.SelectedValue
                         select r).First();

            Label1.Text = "你选择的学生学号是："+result.Sno+"姓名是："+result.Sname;
        }
    }
}