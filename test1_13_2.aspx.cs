using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1
{
    public partial class test1_13_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) Label1.Text="";
            Button btn1=new Button();
            btn1.ID = "btn1";
            btn1.Text = "确定";
            btn1.Click += new EventHandler(btn1_Click);
            PlaceHolder1.Controls.Add(btn1);
        }
        protected void btn1_Click(object sender,EventArgs e) 
        {
            string result = "您选择了：";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++) 
            {
                if (CheckBoxList1.Items[i].Selected) { result += CheckBoxList1.Items[i].Value+" "; }
            }
            Label1.Text = result;
        }
    }
}