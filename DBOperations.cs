using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Tutor_Website
{
    public class DBOperations
    {
        static SqlConnection con = new SqlConnection("DATA SOURCE=GOVINDSUPERCOMP;INITIAL CATALOG=Tutor;Integrated Security=True;");
        SqlCommand com = new SqlCommand();
        public List<ITutor> selectTutor(string type, string sub, string std, string loc, string lm)
        {
            
            List<ITutor> tutorlist = new List<ITutor>();
            
            SqlDataReader reader;
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "spfindtutor";
                if(type=="Any")
                    com.Parameters.Add(new SqlParameter("@type", DBNull.Value));
                else
                    com.Parameters.Add(new SqlParameter("@type", type));
                if(std== "Any")
                    com.Parameters.Add(new SqlParameter("@std", DBNull.Value));
                else
                    com.Parameters.Add(new SqlParameter("@std",std));
                if(sub== "Any")
                    com.Parameters.Add(new SqlParameter("@sub", DBNull.Value));
                else
                    com.Parameters.Add(new SqlParameter("@sub", sub));
                if(loc== "Any")
                    com.Parameters.Add(new SqlParameter("@loc", DBNull.Value));
                else
                    com.Parameters.Add(new SqlParameter("@loc", loc));
                if(lm== "Any")
                    com.Parameters.Add(new SqlParameter("@lm", DBNull.Value));
                else
                    com.Parameters.Add(new SqlParameter("@lm", lm));
                reader = com.ExecuteReader();
                
                
                    while (reader.Read())
                    {
                        ITutor t = new Tutor();
                        t.id = Convert.ToInt16(reader["tid"]);
                        t.name = reader["name"].ToString();
                        t.age = Convert.ToInt16(reader["age"]);
                        t.exp = Convert.ToInt16(reader["experience"]);
                        t.g = Convert.ToChar(reader["gender"]);
                        t.fee = Convert.ToInt16(reader["fee"]);
                        t.alma = reader["almamater"].ToString();
                        t.loc = reader["locname"].ToString();
                        t.std = reader["stdname"].ToString();
                        t.sub = reader["subname"].ToString();
                        t.type = reader["typename"].ToString();
                        t.rating = Convert.ToDouble(reader["rating"]);
                        t.lm = reader["lmname"].ToString();
                        t.tlat = Convert.ToDouble(reader["tlat"]);
                        t.tlong = Convert.ToDouble(reader["tlong"]);
                        t.lmlat = Convert.ToDouble(reader["lat"]);
                        t.lmlong = Convert.ToDouble(reader["long"]);
                        tutorlist.Add(t);
                    }
                
                if(reader==null)
                {
                    tutorlist = new List<ITutor>() ;
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
        public int beTutordetails(ITutor t,string t1, string t2, string t3,string pass)
        {
            int reqnum=0;
            try
            {
                con.Open();
                com.Connection = con;
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "spInsertintoApptutor";
                com.Parameters.Add(new SqlParameter("@name", t.name));
                com.Parameters.Add(new SqlParameter("@age", t.age));
                com.Parameters.Add(new SqlParameter("@gender", t.g));
                com.Parameters.Add(new SqlParameter("@exp", t.exp));
                com.Parameters.Add(new SqlParameter("@almamater", t.alma));
                com.Parameters.Add(new SqlParameter("@fee", t.fee));
                com.Parameters.Add(new SqlParameter("@eid", t.eid));
                com.Parameters.Add(new SqlParameter("@mob", t.mob));
                com.Parameters.Add(new SqlParameter("@pass",pass));
                if (t1 == null)
                {
                    com.Parameters.Add(new SqlParameter("@teachingstr1", DBNull.Value));
                }
                else
                {
                    com.Parameters.Add(new SqlParameter("@teachingstr1", t1));
                }
                if (t2 == null)
                {
                    com.Parameters.Add(new SqlParameter("@teachingstr2", DBNull.Value));
                }
                else
                {
                    com.Parameters.Add(new SqlParameter("@teachingstr2", t2));
                }
                if (t3 == null)
                {
                    com.Parameters.Add(new SqlParameter("@teachingstr3", DBNull.Value));
                }
                else
                {
                    com.Parameters.Add(new SqlParameter("@teachingstr3", t1));
                }
                com.Parameters.Add(new SqlParameter("@lat", t.tlat));
                com.Parameters.Add(new SqlParameter("@lon", t.tlong));
                com.Parameters.Add(new SqlParameter("@type", t.type));
                com.Parameters.Add(new SqlParameter("@reqnum", 0));
                com.Parameters["@reqnum"].Direction = ParameterDirection.Output;
                com.ExecuteNonQuery();
                return Convert.ToInt16(com.Parameters["@reqnum"].Value);
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
            }
            finally
            {
                con.Close();
            }
            return reqnum;
        }
        public void requestsession(int tid,string eid,string timing,string tdays,string stdate,string sub,string std,string loc,string lm,string type)
        {
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "InsertintoSession";
            com.Parameters.AddWithValue("@eid", eid);
            com.Parameters.AddWithValue("@stuid", 0);
            com.Parameters.AddWithValue("@tid", tid);
            com.Parameters.AddWithValue("@time", timing);
            com.Parameters.AddWithValue("@date", stdate);
            com.Parameters.AddWithValue("@days", tdays);
            com.Parameters.AddWithValue("@sub", sub);
            com.Parameters.AddWithValue("@std", std);
            com.Parameters.AddWithValue("@loc", loc);
            com.Parameters.AddWithValue("@lm", lm);
            com.Parameters.AddWithValue("@type", type);
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
        public List<ITeachingSes> FillPersonalTutorDL(string eid)
        {
            com.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader;
            List<ITeachingSes> tl = new List<ITeachingSes>();
            
            com.CommandText = "spTutorPersonal";
            com.Parameters.AddWithValue("@eid", eid);
            com.Parameters.AddWithValue("@tid", 0);
            try
            {
                con.Open();
                com.Connection = con;
                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    ITeachingSes t = new TeachingSes();
                    t.stname = reader["name"].ToString();
                    t.time = reader["time"].ToString();
                    t.stdate = reader["date"].ToString();
                    t.days = reader["days"].ToString();
                    t.sub = reader["sub"].ToString();
                    t.std = reader["std"].ToString();
                    t.loc = reader["loc"].ToString();
                    t.lm = reader["lm"].ToString();
                    t.type = reader["type"].ToString();
                    t.stg = Convert.ToChar(reader["gender"].ToString());
                    t.tid = Convert.ToInt16(reader["tid"].ToString());
                    t.stuid = Convert.ToInt16(reader["stuid"].ToString());
                    t.stuage = Convert.ToInt16(reader["age"].ToString());
                    tl.Add(t);
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
            return tl;
        }
        public string select(string table,string col,string id,int matchdata)
        {
            com.CommandText = "SELECT @col=" + col + " FROM " + table + " WHERE " + id + "=" + matchdata;
            com.Connection = con;
            com.Parameters.AddWithValue("@col", DBNull.Value);
            com.Parameters["@col"].Direction = ParameterDirection.Output;
            com.Parameters["@col"].Size = 30;
            try
            {
                con.Open();
                com.ExecuteReader();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Some exception occured:{0}", ex.Message);
            }
            finally
            {
                con.Close();
            }
            return com.Parameters["@col"].Value.ToString();
        }
        public void updateses(int tid,int stuid,string st,string remark)
        {
            com.CommandText = "UPDATE [sessions] SET [reqstatus]=@status,[remark]=@remark WHERE [tid]=@tid AND [stuid]=@stuid";
            com.Parameters.AddWithValue("@tid", tid);
            com.Parameters.AddWithValue("@stuid", stuid);
            com.Parameters.AddWithValue("@status", st);
            if (st.Equals("Rejected"))
            {
                com.Parameters.AddWithValue("@remark", remark);
            }
            else
            {
                com.Parameters.AddWithValue("@remark", DBNull.Value);
            }
            com.Connection = con;
            try
            {
                con.Open();
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
        public List<ITeachingSes> FillPersonalStudentDL(string eid)
        {
            com.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader;
            List<ITeachingSes> tl = new List<ITeachingSes>();

            com.CommandText = "spStudentPersonal";
            com.Parameters.AddWithValue("@eid", eid);
            com.Parameters.AddWithValue("@stuid", 0);
            com.Parameters["@stuid"].Direction = ParameterDirection.Output;
            try
            {
                con.Open();
                com.Connection = con;
                reader = com.ExecuteReader();
                while (reader.Read())
                {
                    ITeachingSes t = new TeachingSes();
                    t.tuname = reader["name"].ToString();
                    t.time = reader["time"].ToString();
                    t.stdate = reader["date"].ToString();
                    t.status = reader["reqstatus"].ToString();
                    t.days = reader["days"].ToString();
                    t.sub = reader["sub"].ToString();
                    t.std = reader["std"].ToString();
                    t.loc = reader["loc"].ToString();
                    t.lm = reader["lm"].ToString();
                    t.type = reader["type"].ToString();
                    t.stg = Convert.ToChar(reader["gender"].ToString());
                    t.tid = Convert.ToInt16(reader["tid"].ToString());
                    t.stuid = Convert.ToInt16(reader["stuid"].ToString());
                    t.stuage = Convert.ToInt16(reader["age"].ToString());
                    tl.Add(t);
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
            return tl;
        }
        public void deletefromses(int tid,int stuid)
        {
            com.CommandText = "DELETE FROM Sessions WHERE tid=@tid AND stuid=@stuid";
            com.Parameters.AddWithValue("@tid", tid);
            com.Parameters.AddWithValue("@stuid", stuid);
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
    }   
}
