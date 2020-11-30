using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatererService.Pages.Home_page
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCaterer1_Click(object sender, EventArgs e)
        {
            // show - hide panel
            pnlCaterer1.Visible = !pnlCaterer1.Visible;
            btnCaterer1.Text = pnlCaterer1.Visible ? "Hide service" : "Show service";
        }



        protected void btnCaterer2_Click(object sender, EventArgs e)
        {
            // show - hide panel
            pnlCaterer2.Visible = !pnlCaterer2.Visible;
            btnCaterer2.Text = pnlCaterer2.Visible ? "Hide service" : "Show service";
        }

        protected void btnCaterer3_Click(object sender, EventArgs e)
        {
            // show - hide panel
            pnlCaterer3.Visible = !pnlCaterer3.Visible;
            btnCaterer3.Text = pnlCaterer3.Visible ? "Hide service" : "Show service";
        }
    }
}