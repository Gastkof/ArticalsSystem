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
    public partial class Queries : System.Web.UI.Page
    {
        static SqlConnection sqlConnection = new SqlConnection();


        static SqlCommand command = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["academiaADBConnection"].ConnectionString;

            command.Connection = sqlConnection;

            command.CommandType = System.Data.CommandType.Text;



         

            SqlDataAdapter reader = new SqlDataAdapter("SELECT r.firstName+' '+r.lastName as 'Full Name',a.ArticalName  ,a.ArticalPublishDate,m.MagazineName,r.AcademicRank FROM Researchers r join ResearcherArticals ra on ra.ResearcherId = r.ResearcherId join Articals a on a.ArticalId = ra.ArticalId join Magazine m on m.MagazineId = ra.MagazineId", sqlConnection);
            DataTable dbtl = new DataTable();
            reader.Fill(dbtl);
            Query1.DataSource = dbtl;
            Query1.DataBind();


            SqlDataAdapter reader1 = new SqlDataAdapter("SELECT  r.firstName+' '+r.lastName as 'Full Name',a.ArticalName  ,a.ArticalPublishDate,m.MagazineName,r.AcademicRank FROM Researchers r join ResearcherArticals ra on ra.ResearcherId = r.ResearcherId join Articals a on a.ArticalId = ra.ArticalId join Magazine m on m.MagazineId = ra.MagazineId ORDER BY r.AcademicRank", sqlConnection);
            DataTable dbtl2 = new DataTable();
            reader1.Fill(dbtl2);
            Query2.DataSource = dbtl2;
            Query2.DataBind();


            string strQuery = "SELECT  * FROM Researchers ";
            SqlCommand cmd = new SqlCommand(strQuery, sqlConnection);
           SqlDataAdapter d = new SqlDataAdapter(cmd);

            DataSet dataTable = new DataSet();

            d.Fill(dataTable, "Researchers");
            DropDownList1.DataSource = dataTable.Tables["Researchers"];
            if (!IsPostBack)
            {
                DropDownList1.DataTextField = "ResearcherId";
                DropDownList1.DataValueField = "ResearcherId";
                RemoveDuplicateItems(DropDownList1);
            }
                DropDownList1.DataBind();
            

            SqlDataAdapter reader2 = new SqlDataAdapter("SELECT  * FROM  Articals", sqlConnection);
            DataSet dbtl1 = new DataSet();
            reader2.Fill(dbtl1, "Articals");
            ArticalDropdwon.DataSource = dbtl1.Tables["Articals"];
            if (!IsPostBack)
            {
                ArticalDropdwon.DataTextField = "ArticalId";
                ArticalDropdwon.DataValueField = "ArticalId";
                RemoveDuplicateItems(ArticalDropdwon);
            }
                ArticalDropdwon.DataBind();
            
            SqlDataAdapter reader3 = new SqlDataAdapter("SELECT  *  FROM  Magazine", sqlConnection);
            DataSet dbtl3 = new DataSet();
            reader3.Fill(dbtl3, "Magazine");
            mgDropDownList.DataSource = dbtl3.Tables["Magazine"];
            if (!IsPostBack)
            {
                mgDropDownList.DataTextField = "MagazineId";
                mgDropDownList.DataValueField = "MagazineId";
                RemoveDuplicateItems(mgDropDownList);
            }
                mgDropDownList.DataBind();
            
            sqlConnection.Close();
        }

        protected void dataQ1btn_Click(object sender, EventArgs e)
        {



            command.CommandText = "SELECT ra.ResearcherId,ra.ArticalId,a.ArticalPublishDate,m.MagazineName,r.AcademicRank FROM Researchers r join ResearcherArticals ra on ra.ResearcherId = r.ResearcherId join Articals a on a.ArticalId = ra.ArticalId join Magazine m on m.MagazineId = ra.MagazineId";
            sqlConnection.Open();

            SqlDataReader reader = command.ExecuteReader();

            String tmp = "";

            while (reader.Read())
            {
                tmp += " " + reader["ResearcherId"].ToString();
                tmp += " " + reader["ArticalId"].ToString();
                tmp += " " + reader["ArticalPublishDate"].ToString();
                tmp += " " + reader["MagazineName"].ToString();
                tmp += " " + reader["AcademicRank"].ToString();
                tmp += "<br/>";

            }

            this.dataQ1.Text = tmp;
            sqlConnection.Close();

        }

        protected void dataQ2btn_Click(object sender, EventArgs e)
        {
            command.CommandText = "SELECT ra.ResearcherId,ra.ArticalId,a.ArticalPublishDate,m.MagazineName,r.AcademicRank FROM Researchers r join ResearcherArticals ra on ra.ResearcherId = r.ResearcherId join Articals a on a.ArticalId = ra.ArticalId join Magazine m on m.MagazineId = ra.MagazineId ORDER BY r.AcademicRank";
            sqlConnection.Open();

            SqlDataReader reader = command.ExecuteReader();

            String tmp = "";

            while (reader.Read())
            {
                tmp += " " + reader["ResearcherId"].ToString();
                tmp += " " + reader["ArticalId"].ToString();
                tmp += " " + reader["ArticalPublishDate"].ToString();
                tmp += " " + reader["MagazineName"].ToString();
                tmp += " " + reader["AcademicRank"].ToString();
                tmp += "<br/>";

            }
            this.dataQ2.Text = tmp;
            sqlConnection.Close();
        }

        protected void Addbtn2_Click(object sender, EventArgs e)
        {
            command.CommandText = "INSERT INTO  ResearcherArticals (ResearcherId,MagazineId,ArticalId) VALUES('" + DropDownList1.SelectedValue + "','" + mgDropDownList.SelectedValue + "'," + ArticalDropdwon.SelectedValue + ")";
            sqlConnection.Open();

            command.ExecuteNonQuery();

            RemoveDuplicateItems(ArticalDropdwon);
            RemoveDuplicateItems(DropDownList1);
            RemoveDuplicateItems(mgDropDownList);

            sqlConnection.Close();

        }

        protected void Removebtn_Click(object sender, EventArgs e)
        {
            command.CommandText = "DELETE FROM ResearcherArticals WHERE ResearcherId="+ DropDownList1.SelectedValue +"AND +MagazineId="+ mgDropDownList.SelectedValue + "AND ArticalId="+ ArticalDropdwon.SelectedValue;
            sqlConnection.Open();

            command.ExecuteNonQuery();
            RemoveDuplicateItems(ArticalDropdwon);
            RemoveDuplicateItems(DropDownList1);
            RemoveDuplicateItems(mgDropDownList);

            sqlConnection.Close();
        }

      private  void RemoveDuplicateItems(DropDownList ddl)
        {
            for (int i = 0; i < ddl.Items.Count; i++)
            {
                ddl.SelectedIndex = i;
                string str = ddl.SelectedItem.ToString();
                for (int counter = i + 1; counter < ddl.Items.Count; counter++)
                {
                    ddl.SelectedIndex = counter;
                    string compareStr = ddl.SelectedItem.ToString();
                    if (str == compareStr)
                    {
                        ddl.Items.RemoveAt(counter);
                        counter = counter - 1;
                    }
                }
            }
        }

     
    }
    }

