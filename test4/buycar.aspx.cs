using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
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
        string uid;
        private void zd()
        {
            uid = Request.QueryString["uid"].ToString();

            var usercar = from i in db.Cart
                          where i.UserID == int.Parse(uid) & i.flag == 1
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
                             sum =i.Price * j.Quantity,
                         };

            GridView2.DataSource = result;
            GridView2.DataBind();
        }
        private void BindGridView()
        {
            //string phone = Request.QueryString["phone"].ToString();
            //string pid = Request.QueryString["pid"].ToString();
            uid=Request.QueryString["uid"].ToString();

            var usercar = from i in db.Cart
                          where i.UserID == int.Parse(uid) & i.flag == 0
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
                             sum = i.Price*j.Quantity,                           
                         };

            GridView1.DataSource = result;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                zd();
                BindGridView(); 
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
                case "Increase": { result.Quantity += 1; break; }
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
            uid = Request.QueryString["uid"].ToString();
            var usercar = (from i in db.Cart
                           where i.UserID == int.Parse(uid) & i.flag == 0
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
                    p.Quantity-=i.Quantity;  
                }                
            }
            db.SubmitChanges();
            BindGridView();           
        }
    }
}