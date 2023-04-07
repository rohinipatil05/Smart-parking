using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data;
using System.Data.SqlClient;

public partial class ParkingArea : System.Web.UI.Page
{
    helper db = new helper();


    bool add_area()
    {
        db.values.Add("area_name", tname.Text);
        db.values.Add("start_time", start_time.Text);
        db.values.Add("end_time", end_time.Text);
        db.values.Add("charge", charge.Text);

        if (db.insert("parking_area", db.values))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    protected void add_btn_Click(object sender, EventArgs e)
    {
        if (add_area())
        {
            msglbl.Text = "Area Added Successfully";
            tname.Text = "";
            start_time.Text = "";
            end_time.Text = "";
        }
        else
        {
            msglbl.Text = "Failed to add New Area";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}