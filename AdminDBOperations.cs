using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace Tutor_Website
{
    public class AdminDBOperations
    {
        SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
        SqlCommand com = new SqlCommand();
        public int addTutor(ITutor t)
        {
            try
            {
                com.Connection = con;
                con.Open();
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "spInsertintoTutor";
                com.Parameters.AddWithValue("@name", t.name);
                com.Parameters.AddWithValue("@gender",t.g );
                com.Parameters.AddWithValue("@age", t.age);
                com.Parameters.AddWithValue("@alma", t.alma);
                com.Parameters.AddWithValue("@exp", t.exp);
                com.Parameters.AddWithValue("@fee", t.fee);
                com.Parameters.AddWithValue("@rating", 0);
                com.Parameters.AddWithValue("@eid", t.eid);
                com.Parameters.AddWithValue("@mob", t.mob);
                com.Parameters.AddWithValue("@pass", t.pass);
                com.Parameters.AddWithValue("@tid",0);
                com.Parameters["@tid"].Direction = ParameterDirection.Output;
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
            }
            finally
            {
                con.Close();
            }
            return Convert.ToInt16(com.Parameters["@tid"].Value);

        }
        public void addTeaching(ITutor t,string newstd,string newsub,string newloc,string newlm,string newtype)
        {
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "spInsertintoTeaching";
            com.Parameters.AddWithValue("@tid", t.id);
            SetParam(com,"@typename",t.type);
            SetParam(com, "@newtypename", newtype);
            SetParam(com,"@subname", t.sub);
            SetParam(com, "@newsubname", newsub);
            SetParam(com, "@stdname", t.std);
            SetParam(com, "@newstdname", newstd);
            SetParam(com, "@locname", t.loc);
            SetParam(com, "@newlocname", newloc);
            SetParam(com, "@lmname", t.lm);
            SetParam(com, "@newlmname", newlm);
            com.Parameters.AddWithValue("@type", 0);
            com.Parameters.AddWithValue("@subid", 0);
            com.Parameters.AddWithValue("@stdid", 0);
            com.Parameters.AddWithValue("@lmid", 0);
            com.Parameters.AddWithValue("@lmlat", t.lmlat);
            com.Parameters.AddWithValue("@lmlong", t.lmlong);
            com.Parameters.AddWithValue("@ttlat", t.tlat);
            com.Parameters.AddWithValue("@ttlong", t.tlong);
            SetParam(com,"@inlocid", t.pin);
            try
            {
                con.Open();
                com.Connection = con;
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
        public void SetParam(SqlCommand com,string param,string value)
        {
            if (value==null || value.Equals("Not Available"))
            {
                com.Parameters.AddWithValue(param, DBNull.Value);
            }
            else
            {
                com.Parameters.AddWithValue(param, value);
            }
        }

        public void delete(string tablename,string colname,int matchdata)
        {
            com.CommandText = "DELETE FROM " + tablename + " WHERE " + colname + "=" + matchdata;
            try
            {
                con.Open();
                com.Connection = con;
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public ITutor selafromApptutor(int reqnum)
        {
            ITutor t = new Tutor();
            com.CommandText = "SELECT * FROM ApplicantTutor WHERE requestnum=" + reqnum;
            SqlDataReader reader;
            try
            {
                con.Open();
                com.Connection = con;
                reader=com.ExecuteReader();
                while (reader.Read())
                {
                    t.name = reader["name"].ToString();
                    t.age = Convert.ToInt16(reader["age"]);
                    t.exp = Convert.ToInt16(reader["exp"]);
                    t.g = Convert.ToChar(reader["gender"]);
                    t.fee = Convert.ToInt16(reader["fee"]);
                    t.alma = reader["almamater"].ToString();
                    t.eid = reader["eid"].ToString();
                    t.mob = reader["mob"].ToString();
                    t.type = reader["type"].ToString();
                    t.tlat = Convert.ToDouble(reader["lat"]);
                    t.tlong = Convert.ToDouble(reader["lon"]);
                    t.pass = reader["pass"].ToString();
                }     
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
            }
            finally
            {
                con.Close();
            }
            return t;
        }
        public List<ITutor> selectfromApptutor()
        {
            List<ITutor> tutorlist = new List<ITutor>();
            com.CommandText = "SELECT * FROM ApplicantTutor";
            SqlDataReader reader;
            try
            {
                con.Open();
                com.Connection = con;
                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    ITutor t = new Tutor();
                    t.id = Convert.ToInt16(reader["requestnum"]);
                    t.name = reader["name"].ToString();
                    t.age = Convert.ToInt16(reader["age"]);
                    t.exp = Convert.ToInt16(reader["exp"]);
                    t.g = Convert.ToChar(reader["gender"]);
                    t.fee = Convert.ToInt16(reader["fee"]);
                    t.alma = reader["almamater"].ToString();
                    t.eid = reader["eid"].ToString();
                    t.mob = reader["mob"].ToString();
                    t.type = reader["type"].ToString();
                    t.tlat = Convert.ToDouble(reader["lat"]);
                    t.tlong = Convert.ToDouble(reader["lon"]);
                    t.pass = reader["pass"].ToString();
                    t.teachingstr1 = reader["teachingstr1"].ToString();
                    t.teachingstr2 = reader["teachingstr2"].ToString();
                    t.teachingstr3 = reader["teachingstr3"].ToString();
                    tutorlist.Add(t);
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
            }
            finally
            {
                con.Close();
            }
            return tutorlist;
        }
    }
}
