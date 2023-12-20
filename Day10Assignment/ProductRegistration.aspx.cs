using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day10Assignment
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            LblMsg.Visible = false;
        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            LblMsg.Text = "Welcome "+Txtname.Text;
            LblMsg.Text += "<br/>Category" + DropDownCategory.Text;
            LblMsg.Text += "<br/>Price" + TxtPrice.Text;
            LblMsg.Text += "<br/>Description" + DescTextArea.InnerText;
            LblMsg.Text += "<br/>RealeseDate" + RelDateCalendar.SelectedDate.ToShortDateString();
        }
    }
}