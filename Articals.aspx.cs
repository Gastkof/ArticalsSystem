using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArticalsSystem
{
    public partial class Articals : System.Web.UI.Page
    {

        static SqlConnection sqlConnection = new SqlConnection();

        static SqlCommand command = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {


            sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["academiaADBConnection"].ConnectionString;

            command.Connection = sqlConnection;

            command.CommandType = System.Data.CommandType.Text;

            command.CommandText = "SELECT * FROM  Articals";
            sqlConnection.Open();

            SqlDataAdapter reader = new SqlDataAdapter("SELECT * FROM  Articals", sqlConnection);
            DataTable dbtl = new DataTable();
            reader.Fill(dbtl);
            DataArticalg1.DataSource = dbtl;
            DataArticalg1.DataBind();

           
            SqlDataAdapter reader1 = new SqlDataAdapter("SELECT * FROM  Magazine", sqlConnection);
            DataTable dbtl2 = new DataTable();
            reader1.Fill(dbtl2);
            magazinegrid.DataSource = dbtl2;
            magazinegrid.DataBind();
            sqlConnection.Close();


        }

        protected void ArticalBackbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertArticals.aspx");

        }
    }
}