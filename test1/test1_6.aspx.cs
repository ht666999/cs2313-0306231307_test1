using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cs2313huangtao_test1
{
    public partial class test1_6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DropDownList3.Items.Clear();
                for (int i = 1; i <= DateTime.DaysInMonth(int.Parse(DropDownList1.Text), int.Parse(DropDownList2.Text)); i++)
                {
                    DropDownList3.Items.Add(i.ToString());
                }
                   
                    
                return;
            }
            ListBox1.Items.Add("香蕉");
            ListBox1.Items.Add("苹果");
            ListBox1.Items.Add("梨");
            ListBox1.Items.Add("西瓜");
            for(int i = 2000; i <= DateTime.Now.Year; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for(int i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for(int i = 1; i <= DateTime.DaysInMonth(int.Parse(DropDownList1.Text), int.Parse(DropDownList2.Text));i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
            DropDownList1.Text=DateTime.Now.Year.ToString();
            DropDownList2.Text=DateTime.Now.Month.ToString();
            DropDownList3.Text=DateTime.Now.Day.ToString();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(ListBox1.SelectedIndex==-1)
            ListBox1.Items.Add(TextBox1.Text);
            else
            {
                int index=ListBox1.SelectedIndex;
                ListBox1.Items.Insert(index,TextBox1.Text);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            for(int i = 0;i < ListBox1.Items.Count; i++)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox1.Items.Remove(ListBox1.Items[i]);
                    i--;
                }
                
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text = ListBox1.SelectedValue;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            List<string> list =new List<string>();
            foreach(var item in ListBox1.Items) {
                list.Add(item.ToString());
            }
            Label2.Text = string.Join(",",list);
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Font.Bold = CheckBoxList1.Items[0].Selected;
            Label3.Font.Italic = CheckBoxList1.Items[1].Selected;
            Label3.ForeColor = CheckBoxList1.Items[2].Selected?Color.Red:Color.Black;
        }
    }
}