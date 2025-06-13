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

        private void BindGridView()
        {
            string phone = Request.QueryString["phone"].ToString();
            string pid = Request.QueryString["pid"].ToString();
            int userid = (from i in db.Users
                          where i.PhoneNumber == phone
                          select i).First().UserId;
            var usercar = from i in db.Cart
                          where i.UserID == userid
                          select i;
            var result = from i in db.Products
                         join j in usercar
                         on i.ProductID equals j.ProductID
                         select new
                         {
                             i.ProductID,
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

        }
    }
}