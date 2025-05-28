using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static cs2313huangtao_test1.test3.test3_8;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_13xiugai : System.Web.UI.Page
    {
        DataStudentDataContext db =new DataStudentDataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"].ToString();
                Label1.Text = id;
                var result = (from i in db.Student
                              where id == i.Sno
                              select i).First();
                TextBox1.Text = result.Sname;
                TextBox2.Text = result.Sgender;
                TextBox3.Text = result.College;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {           
            string id = Request.QueryString["id"].ToString();
            var result = (from i in db.Student
                          where id == i.Sno
                          select i).First();
            result.Sname = TextBox1.Text;
            result.Sgender = TextBox2.Text;
            result.College = TextBox3.Text;           
            db.SubmitChanges();
        }
    }
}