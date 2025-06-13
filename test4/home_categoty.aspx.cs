using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class home_categoty : System.Web.UI.Page
    {
        string leftname, rightname;
        
        bananadataDataContext db=new bananadataDataContext();
        List<Products> products = new List<Products>();
        public void Add_click(object sender, EventArgs e) 
        {
            Button clickedButton = (Button)sender;
            int index = int.Parse(clickedButton.CommandArgument); // 获取商品索引
            //try
            //{
                if (Session["userphone"] != null)
                {
                    string nameid = Session["userphone"].ToString();
                    Response.Redirect("buycar.aspx?phone=" + nameid + "&pid=" + products[index].CategoryID);
                }
                else 
                {
                    Response.Redirect("buycar.aspx?phone=12345678910&pid=" + products[index].CategoryID);

                }
             //}
            //catch (Exception ex) 
            //{
            //    Response.Redirect("login.aspx");
            //}

                
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = (from i in db.Products
                          where i.CategoryID == 1
                          select i).Distinct().ToList();
            products=result;
            for (int i = 0; i < result.Count; i++)
            {
                
                System.Web.UI.HtmlControls.HtmlGenericControl container = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                container.Attributes["class"] = "image-button-container";

                Image imbtn = new Image();
                imbtn.ID = i.ToString();
                imbtn.CssClass = "productimage";
                imbtn.ImageUrl = result[i].ImageURL;

                Button addbtn = new Button();
                addbtn.ID ="btn"+ i.ToString();
                addbtn.Text = "添加至购物车";
                addbtn.CommandArgument=imbtn.ID;
                addbtn.CssClass = "selectbutton";
                addbtn.Click += Add_click;

                string str=result[i].ProductName+"\n内存："+result[i].Memory+"\n存储："+result[i].Storage+"\n颜色："+result[i].Color+"\n价格："+result[i].Price;
                TextBox textBox = new TextBox();
                textBox.TextMode=TextBoxMode.MultiLine;
                textBox.Text = str;
                textBox.Rows = 5;
                textBox.ReadOnly = true;
                textBox.CssClass = "textbox";

                container.Controls.Add(imbtn);
                container.Controls.Add(textBox);
                container.Controls.Add(addbtn);                
                Panel1.Controls.Add(container);
            }
           

        }
        
    }
}