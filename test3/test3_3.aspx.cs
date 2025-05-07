using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_3 : System.Web.UI.Page
    {
        DataStudentDataContext db = new DataStudentDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1_SelectedIndexChanged(sender, e);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "";
            var result= (from r in db.Student
                        where r.Sname==DropDownList1.SelectedItem.Text
                        select r).First();
            Label1.Text = "你选择的学生姓名是： " + result.Sname + "学号是：" + result.Sno;
        }
    }
}