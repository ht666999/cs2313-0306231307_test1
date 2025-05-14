using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test3
{
    public partial class test3_5 : System.Web.UI.Page
    {
        DataStudentDataContext db = new DataStudentDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = (from i in db.Student                        
                         select i.College).Distinct();
            foreach (var item in result) { DropDownList1.Items.Add(item); }
            DropDownList2.Items.Add("男");
            DropDownList2.Items.Add("女");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name=TextBox1.Text;
            string college = DropDownList1.SelectedValue;
            if (TextBox1.Text == "")
            {
                var result = from i in db.Student
                              select i;
                GridView1.DataSourceID = "";
                GridView1.DataSource = result;
                GridView1.DataBind();
            }
            else 
            {
                var result = from i in db.Student
                             where i.College == college && i.Sname == name
                             select i;
                GridView1.DataSourceID = "";
                GridView1.DataSource = result;
                GridView1.DataBind();
            }
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var result=(from i in db.Student
                       where i.Sno==TextBox2.Text
                       select i).First();
            result.Sname=TextBox3.Text;
            result.Sgender = TextBox4.Text ;
            result.Sage=short.Parse(TextBox12.Text) ;
            result.College= TextBox5.Text;
            db.SubmitChanges();
            Button1_Click(sender, e);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Student newstudent = new Student();
            newstudent.Sno = TextBox6.Text;
            newstudent.Sname=TextBox7.Text;
            newstudent.Sgender = DropDownList2.SelectedValue;
            newstudent.College = TextBox9.Text;
            newstudent.Sage=short.Parse(TextBox11.Text);
            db.Student.InsertOnSubmit(newstudent);
            db.SubmitChanges();
            Button1_Click(sender, e);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var result = from i in db.Student
                         where i.Sno == TextBox10.Text
                         select i;
            db.Student.DeleteAllOnSubmit(result);
            db.SubmitChanges();
            Button1_Click (sender, e);
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}