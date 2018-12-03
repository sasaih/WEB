using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        double ttotal=0;
        double nno1 = Convert.ToDouble(no1.SelectedValue);  
        double nno2 = Convert.ToDouble(no2.Text);
        double nno3 = Convert.ToDouble(no3.Text);
        double ccost1 = Convert.ToDouble(cost1.Text);
        double ccost2 = Convert.ToDouble(cost2.Text);
        double ccost3 = Convert.ToDouble(cost3.Text);
        


        if (C1.Checked)
            ttotal += nno1 * ccost1 ;

        if (C2.Checked)
            ttotal += nno2 * ccost2;

        if (C3.Checked)
            ttotal += nno3 * ccost3;

                
        

        if (R1.SelectedValue == "1")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "3")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "5")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "7")
            L1.Text = R1.SelectedItem.Text;

        if (R1.SelectedValue == "10")
            L1.Text = R1.SelectedItem.Text;

         
        tt1.Text = "";

        if (LB.Items[0].Selected)
            tt1.Text = tt1.Text + "\r\n" +   LB.Items[0].Text ;
        
        if (LB.Items[1].Selected)
               tt1.Text = tt1.Text + "\r\n"  +  LB.Items[1].Text;

        if (LB.Items[2].Selected)
            tt1.Text = tt1.Text + "\r\n" + LB.Items[2].Text;

        if (LB.Items[3].Selected)
            tt1.Text = tt1.Text + "\r\n" + LB.Items[3].Text;

        if (CB.Items[0].Selected)
        {
            tb.Text = tb.Text + "\r\n" + CB.Items[0].Text;
            ttotal += 10;
        }
        if (CB.Items[1].Selected)
        {
            tb.Text = tb.Text + "\r\n" + CB.Items[1].Text;
            ttotal += 20;
        }
        if (CB.Items[2].Selected)
        {
            tb.Text = tb.Text + "\r\n" + CB.Items[2].Text;
            ttotal += 30;
        }
        total.Text = Convert.ToString(ttotal);
    }

    

    protected void C1_CheckedChanged(object sender, EventArgs e)
    {
        double nno1 = Convert.ToDouble(no1.SelectedValue);
        double lliltt1 = 0;
        double ccost1 = Convert.ToDouble(cost1.Text);

        lliltt1 += nno1 * ccost1;

        liltt1.Text = Convert.ToString(lliltt1);

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }


    protected void tbt_TextChanged(object sender, EventArgs e)
    {
        tbt2.Text = tbt.Text;
    }



    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        
    }



    protected void C2_CheckedChanged(object sender, EventArgs e)
    {
        double nno2 = Convert.ToDouble(no2.Text);
        double lliltt2 = 0;
        double ccost2 = Convert.ToDouble(cost2.Text);

        lliltt2 += nno2 * ccost2;

        liltt2.Text = Convert.ToString(lliltt2);

    }
    protected void C3_CheckedChanged(object sender, EventArgs e)
    {
        double nno3 = Convert.ToDouble(no3.Text);
        double lliltt3 = 0;
        double ccost3 = Convert.ToDouble(cost3.Text);

        lliltt3 += nno3 * ccost3;

        liltt3.Text = Convert.ToString(lliltt3);
    }

    
}