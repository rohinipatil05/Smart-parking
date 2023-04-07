using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Database_Helpers;

public partial class home : System.Web.UI.Page
{
    public List<items> product_list = new List<items>();

    helper db = new helper();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


}