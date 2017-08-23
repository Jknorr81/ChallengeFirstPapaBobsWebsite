using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsWebsite
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            double runningTotal = 0;
            //Pizza Size
            if (babyPizzaRadioButton.Checked)
                runningTotal = runningTotal + 10;
            else if (mamaPizzaRadioButton.Checked)
                runningTotal = runningTotal + 13;
            else if (PapaPizzaRadioButton.Checked)
                runningTotal = runningTotal + 16;
            //Crust style
            if (deepDishRadioButton.Checked)
                runningTotal = runningTotal + 2;
            // runningTotal += 2;
            //Extra Toppings
            if (pepperoniCheckBox.Checked)
                runningTotal = runningTotal + 1.5;
            // runningTotal = (pepperoniCheckBox.Checked) ? runningTotal + 1.5 : runningTotal;
            if (onionsCheckBox.Checked)
                runningTotal = runningTotal + .75;
            if (greenPeppersCheckBox.Checked)
                runningTotal = runningTotal + .5;
            if (redPeppersCheckBox.Checked)
                runningTotal = runningTotal + .75;
            if (anchoviesCheckBox.Checked)
                runningTotal = runningTotal + 2;
            //Special Deal
            if ((pepperoniCheckBox.Checked 
                && greenPeppersCheckBox.Checked 
                && anchoviesCheckBox.Checked)
                || (pepperoniCheckBox.Checked
                && redPeppersCheckBox.Checked 
                && onionsCheckBox.Checked))
                runningTotal = runningTotal - 2;
            //Total Cost
            totalLabel.Text = "$" + runningTotal.ToString();
        }
    }
}