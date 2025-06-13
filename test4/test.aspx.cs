using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1.test4
{
    public partial class test : System.Web.UI.Page
    {
        bananadataDataContext db=new bananadataDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = (from i in db.Products
                         where i.CategoryID == 1
                         select i).ToList();

            for (int i = 0; i < result.Count; i++)
            {
                // 创建一个容器 div 来包裹图片和按钮
                System.Web.UI.HtmlControls.HtmlGenericControl container = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                container.Attributes["class"] = "image-button-container";

                Image imbtn = new Image();
                imbtn.ID = i.ToString();
                imbtn.CssClass = "productimage";
                imbtn.ImageUrl = result[i].ImageURL;

                Button addbtn = new Button();
                addbtn.Text = "添加至购物车";
                addbtn.CssClass = "selectbutton";

                // 将图片和按钮添加到容器中
                container.Controls.Add(imbtn);
                container.Controls.Add(addbtn);

                // 将容器添加到 Panel1
                Panel1.Controls.Add(container);
            }

        }
    }
}