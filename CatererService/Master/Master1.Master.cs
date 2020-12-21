using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CatererService.Master
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CatererServiceDatabaseConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            string find = "SELECT * FROM Items WHERE (Item like '%'+@item+'%')";
            SqlCommand comm = new SqlCommand(find, con);
            comm.Parameters.Add("@item", SqlDbType.NVarChar).Value = txtSearch.Text;
            con.Open();
            comm.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;
            DataSet ds = new DataSet();
            da.Fill(ds, "Items");
            grdSearch.DataSource = ds;
            grdSearch.DataBind();

            con.Close();
        }
    }
}