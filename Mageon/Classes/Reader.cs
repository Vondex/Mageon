using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace CRUD_library
{
    public class Reader
    {
       public int ReaderId { get; set; }
       public string ReaderName { get; set; }
       public string ReaderMiddleName { get; set; }

       public string ReaderFamilyName { get; set; }

       public string ReaderPIN { get; set; }

       public string CityName { get; set; }

       public string Tel { get; set; }


        string connectionString = "Data Source=DESKTOP-BGJ92FC\\SQLEXPRESS;Initial Catalog=LibraryProject;Integrated Security=True;TrustServerCertificate=True";



        public List<Reader> GetReaders()
        {
            List<Reader> readerList = new List<Reader>();
            SqlConnection con = new SqlConnection(connectionString);
            string selectSQL = "SELECT ReaderId, ReaderName, ReaderMiddleName, ReaderFamilyName, ReaderPIN, CityName, Tel FROM GetReaderData";
            con.Open();
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr != null)
            {
                while (dr.Read())
                {
                    Reader reader = new Reader();

                    reader.ReaderId = int.Parse(dr["ReaderId"].ToString());
                    reader.ReaderName = dr["ReaderName"].ToString();
                    reader.ReaderMiddleName = dr["ReaderMiddleName"].ToString();
                    reader.ReaderFamilyName = dr["ReaderFamilyName"].ToString(); ;
                    reader.ReaderPIN = dr["ReaderPIN"].ToString();
                    reader.CityName = dr["CityName"].ToString();
                    reader.Tel = dr["Tel"].ToString();

                    readerList.Add(reader);
                }
            }
            return readerList;
        }

        public void CreateReader(Reader reader)
        {
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("CreateReader", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@ReaderName", reader.ReaderName));
            cmd.Parameters.Add(new SqlParameter("@ReaderMiddleName", reader.ReaderMiddleName));
            cmd.Parameters.Add(new SqlParameter("@ReaderFamilyName", reader.ReaderFamilyName));
            cmd.Parameters.Add(new SqlParameter("@ReaderPIN", reader.ReaderPIN));
            cmd.Parameters.Add(new SqlParameter("@CityName", reader.CityName));
            cmd.Parameters.Add(new SqlParameter("@Tel", reader.Tel));



            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public Reader GetReaderData(int readerId)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string selectSQL = "SELECT ReaderId, ReaderName, ReaderMiddleName, ReaderFamilyName, ReaderPIN, CityName, Tel FROM GetReaderData WHERE ReaderId =" + readerId;
            con.Open();

            SqlCommand cmd = new SqlCommand(selectSQL, con);

            SqlDataReader dr = cmd.ExecuteReader();

            Reader reader = new Reader();

            if (dr != null)
            {
                while (dr.Read())
                {
                    reader.ReaderId = int.Parse(dr["ReaderId"].ToString());
                    reader.ReaderName = dr["ReaderName"].ToString();
                    reader.ReaderMiddleName = dr["ReaderMiddleName"].ToString();
                    reader.ReaderFamilyName = dr["ReaderFamilyName"].ToString(); ;
                    reader.ReaderPIN = dr["ReaderPIN"].ToString();
                    reader.CityName = dr["CityName"].ToString();
                    reader.Tel = dr["Tel"].ToString();
                }
            }
            return reader;
        }

        public void EditReader(Reader _reader)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("UpdateReader", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@ReaderId", _reader.ReaderId));
                    cmd.Parameters.Add(new SqlParameter("@ReaderName", _reader.ReaderName));
                    cmd.Parameters.Add(new SqlParameter("@ReaderMiddleName", _reader.ReaderMiddleName));
                    cmd.Parameters.Add(new SqlParameter("@ReaderFamilyName", _reader.ReaderFamilyName));
                    cmd.Parameters.Add(new SqlParameter("@ReaderPIN", _reader.ReaderPIN));
                    cmd.Parameters.Add(new SqlParameter("@CityName", _reader.CityName));
                    cmd.Parameters.Add(new SqlParameter("@Tel", _reader.Tel));

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void DeleteReader(int readerId)
        {
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("DeleteReader", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@ReaderId", readerId));

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

      
    }

    
}
