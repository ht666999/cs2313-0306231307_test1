using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class productadd : System.Web.UI.Page
    {
        bananadataDataContext db=new bananadataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Products newproduct = new Products();
            newproduct.ProductID = 1;
            newproduct.ProductName=TextBox1.Text;
            newproduct.ImageURL=TextBox2.Text;
            newproduct.Memory=TextBox3.Text;
            newproduct.Storage=TextBox4.Text;
            newproduct.Color=TextBox5.Text;
            newproduct.Price=int.Parse(TextBox6.Text);
            newproduct.Quantity=int.Parse(TextBox7.Text);
            newproduct.Remark=TextBox8.Text;
            newproduct.CategoryID=int.Parse(TextBox9.Text);
            var result =(from i in db.Products
                        where i.ProductName==newproduct.ProductName
                        && i.ImageURL==newproduct.ImageURL
                        && i.Memory==newproduct.Memory
                        && i.Storage==newproduct.Storage
                        && i.Color==newproduct.Color
                        && i.Price==newproduct.Price
                        && i.CategoryID==newproduct.CategoryID
                        select i).FirstOrDefault();
            if (result == null)
            {
                db.Products.InsertOnSubmit(newproduct);
                db.SubmitChanges();
                var re =from i  in db.Products
                        select i;
                GridView1.DataSource = re;
                GridView1.DataBind();
            }
            else 
            {
                Label1.Text = "该商品已存在";
            }
        }
    }
}