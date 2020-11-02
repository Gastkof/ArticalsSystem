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
    public partial class Researchers : System.Web.UI.Page
    {

        static SqlConnection sqlConnection = new SqlConnection();

        static SqlCommand command = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (sqlConnection.State == ConnectionState.Closed)
            {
                sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["academiaADBConnection"].ConnectionString;
            }


            command.Connection = sqlConnection;

            command.CommandType = System.Data.CommandType.Text;
            sqlConnection.Open();

            command.CommandText = "SELECT * FROM  Researchers";


            SqlDataAdapter reader = new SqlDataAdapter("SELECT * FROM  Researchers", sqlConnection);
            DataTable dbtl = new DataTable();
            reader.Fill(dbtl);
            RearchersTable.DataSource = dbtl;
            RearchersTable.DataBind();
            sqlConnection.Close();
        }

        protected void BackBtnR_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertNewResearcher.aspx");
        }
    }
}