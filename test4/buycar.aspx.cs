using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class buycar : System.Web.UI.Page
    {
        bananadataDataContext db=new bananadataDataContext();
        //
       
        private void BindGridView()
        {
            //string phone = Request.QueryString["phone"].ToString();
            string pid = Request.QueryString["pid"].ToString();
            string uid=Request.QueryString["uid"].ToString();
            
            var usercar = from i in db.Cart
                          where i.UserID == int.Parse(uid)
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
                
                BindGridView(); 
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id=int.Parse(e.CommandArgument.ToString());
            var result =( from i in db.Cart
                         where i.CartID == id
                         select i).First();
            switch (e.CommandName) 
            {
                case "Increase": { result.Quantity += 1; break; }
                case "Decrease": {
                        if (result.Quantity > 1)
                        {
                            result.Quantity -= 1;
                            break;
                        }
                        db.Cart.DeleteOnSubmit(result);break;

                    }
                case "de": { db.Cart.DeleteOnSubmit(result); break; }
           
            }
            
            db.SubmitChanges();
            BindGridView();
           
        }

        protected void btnIncrease_Click(object sender, EventArgs e)
        {

        }
    }
}