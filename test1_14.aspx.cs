using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1
{
    public partial class test1_14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items[0].Selected = true;
                RangeValidator1.ForeColor = Color.Red;
                RequiredFieldValidator1.ForeColor = Color.Red;
                RequiredFieldValidator2.ForeColor = Color.Red;
                RegularExpressionValidator1.ForeColor= Color.Red;
                RegularExpressionValidator2.ForeColor = Color.Red;
                RegularExpressionValidator3.ForeColor = Color.Red;
                CompareValidator1.ForeColor = Color.Red;
                CompareValidator2.ForeColor = Color.Red;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}