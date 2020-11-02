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
    public partial class InsertNewResearcher : System.Web.UI.Page
    {
        static SqlConnection sqlConnection = new SqlConnection();

           static  SqlCommand command = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
       
            
                
            sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["academiaADBConnection"].ConnectionString;
                


             command.Connection = sqlConnection;


            command.CommandType = CommandType.Text;






        }
        protected void AddResearcherbtn_Click(object sender, EventArgs e)
        {
            //connection




            command.CommandText = "INSERT INTO  Researchers (ResearcherId,firstName,lastName,email,AcademicRank,AcdemicId)" +
                "vALUES('" + this.IdTextbox.Text + "','" + Fnametextbox.Text + "','" + Lnametextbox.Text + "','" + emailTextbox.Text + "','" + int.Parse(AcadimcRanktextbox.Text) + "'," + AcadimcCode.SelectedValue + ")";

            sqlConnection.Open();

            command.ExecuteNonQuery();

          
                sqlConnection.Close();
                Response.Redirect("Researchers.aspx");

            

        }

        protected void Clearbtn2_Click(object sender, EventArgs e)
        {
            IdTextbox.Text = "";
            Fnametextbox.Text = "";
            Lnametextbox.Text = "";
            emailTextbox.Text = "";
            AcadimcRanktextbox.Text = "";
        }

        //    protected void btQuery1_Click(object sender, EventArgs e)
        //    {
        //   sqlConnection.Open();

        //   command.CommandText = "SELECT * FROM  Researchers";


        //      SqlDataAdapter reader = new SqlDataAdapter("SELECT * FROM  Researchers", sqlConnection);
        //       DataTable dbtl = new DataTable();
        //      reader.Fill(dbtl);
        //    GridViewResearcher.DataSource = dbtl;
        //   GridViewResearcher.DataBind();

        //   SqlDataReader reader= command.ExecuteReader();

        //  String tmp = "";

        //   while (reader.Read())
        //  {
        //      tmp += " " +reader["ResearcherId"].ToString();
        //      tmp += " " + reader["firstName"].ToString();
        //      tmp += " " + reader["lastName"].ToString();
        //      tmp += " " + reader["email"].ToString();
        //     tmp += " " + reader["AcademicRank"].ToString();
        //     tmp += " " + reader["AcdemicId"].ToString();
        //      tmp += "<br/>";

        //   }

        //  this.DataQ1lb.Text = tmp;
        //    if (sqlConnection != null && sqlConnection.State == System.Data.ConnectionState.Open)
        //    {
        //    sqlConnection.Close();
        //  }
        // }


    }
}