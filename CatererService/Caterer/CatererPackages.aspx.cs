using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatererService.Caterer
{
    public partial class CatererPackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (((Button)e.CommandSource).ID.Equals("btnHideDetails"))
                DataList1.SelectedIndex = -1;
            else
                DataList1.SelectedIndex = e.Item.ItemIndex;

            DataList1.DataBind();

            if (e.CommandName == "AddtoCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity" + list.SelectedItem.ToString());

            }
        }
    }
}