using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1
{
    public partial class test1_13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Label2.Text = "鲜花投票0次，鸡蛋投票0次。";
            Application["鲜花"] = 0;
            Application["鸡蛋"] = 0;
            Label2.ForeColor = Color.Red;
            ImageMap1.Click += new ImageMapEventHandler(ImageMap1_Click);
        }
        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            string str = e.PostBackValue;
            Application[str] = (int)Application[str] + 1;
            Label1.Text = "您选择了：" + str;
            Label2.Text = "鲜花投票" + Application["鲜花"] + "次,鸡蛋投票" + Application["鸡蛋"] + "次";
        }
    }
}