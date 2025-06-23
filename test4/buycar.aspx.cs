using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class buycar : System.Web.UI.Page
    {
        bananadataDataContext db=new bananadataDataContext();
        //
        static int uid;
        static int pid;
        private void zd()
        {
            
            var usercar = from i in db.Cart
                          where i.UserID == uid & i.flag == 1
                          select i;

            var result = from i in db.Products
                         join j in usercar
                         on i.ProductID equals j.ProductID
                         select new
                         {

                             i.ProductID,
                             产品名称= i.ProductName,
                             ImageURL= i.ImageURL,
                             价格=i.Price,
                             数量=j.Quantity,

                             总金额=i.Price * j.Quantity,
                         };

            GridView2.DataSource = result;
            GridView2.DataBind();
        }
        private void BindGridView()
        {
            
            uid=int.Parse(Request.QueryString["uid"].ToString());

            var usercar = from i in db.Cart
                          where i.UserID == uid & i.flag == 0
                          select i;
           
            var result = from i in db.Products
                         join j in usercar
                         on i.ProductID equals j.ProductID
                         select new
                         {
                             
                             j.CartID,
                             i.ProductName,
                             i.Price,
                             j.Quantity,
                             ImageURL=i.ImageURL,
                             sum = i.Price*j.Quantity,                           
                         };

            GridView1.DataSource = result;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                
                BindGridView();
                zd();
            }
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var result = (from i in db.Cart
                          where i.CartID == id
                          select i).First();
            switch (e.CommandName)
            {
                case "Increase": 
                    {
                        var sum=(from i in db.Products
                                where i.ProductID == result.ProductID
                                select i).First();
                        if (sum.Quantity > 0)
                        { 
                            result.Quantity += 1; break;
                        }
                        else 
                        {
                            Response.Write("库存不足"); 
                            break;
                        }
                    }
                case "Decrease":
                    {
                        if (result.Quantity > 1)
                        {
                            result.Quantity -= 1;
                            break;
                        }
                        db.Cart.DeleteOnSubmit(result); break;

                    }
                case "de": { db.Cart.DeleteOnSubmit(result); break; }

            }

            db.SubmitChanges();
            BindGridView();
            zd();
        }
        protected void btnIncrease_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            var usercar = (from i in db.Cart
                           where i.UserID == uid & i.flag == 0
                           select i);

            var kucun = from i in db.Products
                        join j in usercar on i.ProductID equals j.ProductID
                        select new 
                        {
                            id = i.ProductID,
                            kc = i.Quantity,
                            sl = j.Quantity,
                        };
            bool flag = true;
            foreach (var i in kucun)
            {
                if (i.kc < i.sl) flag = false;
            }
            if (flag)
            {

                foreach (var i in usercar)
                {
                    i.flag = 1;
                    var p = (from j in db.Products
                             where j.ProductID == i.ProductID
                             select j).First();
                    p.Quantity -= i.Quantity;
                }
            }
            else { Response.Write("库存不足！"); }
                db.SubmitChanges();
            BindGridView();           
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            TextBox1.Visible=true;
            Button3.Visible=true;
            pid=int.Parse(e.CommandArgument.ToString());
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string str=TextBox1.Text;
            int id = pid;
            
            pj pj1 = new pj();
            pj1.uid = uid;
            pj1.pid = pid;
            pj1.pj1 = str;
            pj1.date = DateTime.Now;
            db.pj.InsertOnSubmit(pj1);
            db.SubmitChanges();
            TextBox1.Visible=false;
            Button3.Visible = false;
        }
    }
}