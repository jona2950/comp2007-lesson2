using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_lesson2_5_11_2015
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public int x = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //add code

            //only increment x if page is NOT being reloaded
            if (!IsPostBack) { 
                x++;
                lblX.Text = x.ToString();

            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //get the current count of x from the label 
            x = Convert.ToInt32(lblX.Text);
            x++;

            //increment the label value by 1
            lblX.Text = x.ToString();

            //copy value from textbox to the label
            lblFirstName.Text = txtFirstName.Text;

            //copy value from textbox to literal
            ltlFirstName.Text = txtFirstName.Text;

            //remove text from textbox
            txtFirstName.Text = " ";            
        }

        protected void btnSelections_Click(object sender, EventArgs e)
        {
            //show the selected country in a literal control
            ltlFirstName.Text = ddlCountry.SelectedValue + " " + ddlCountry.SelectedItem.Text;

            //first clear the literal function for toppings
            ltlToppings.Text = " ";

            //evaluate checkboxlist by looping through the topping list
            foreach (ListItem item in cblToppings.Items)
            {
                if(item.Selected)
                {
                    ltlToppings.Text += item.Text + " ";
                }
            }
        }
    }
}