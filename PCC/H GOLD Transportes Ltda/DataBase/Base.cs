using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Data.SqlClient;
using System.Configuration;

namespace DataBase
{
    public class Base : IBase
    {
        private string connectionString = ConfigurationManager.AppSettings["SqlConnection"];
        public int key
        {
            get
            {
                foreach (PropertyInfo pi in this.GetType().GetProperties(BindingFlags.Public | BindingFlags.Instance))
                {
                    OpcoesBase opcoes = (OpcoesBase)pi.GetCustomAttribute(typeof(OpcoesBase));
                    if (opcoes != null && opcoes.ChavePrimaria)
                    {
                        return Convert.ToInt32(pi.GetValue(this));
                    }
                }
                return 0;
            }
        }

        public List<IBase> Busca()
        {
            throw new NotImplementedException();
        }

        public virtual void Salvar()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                List<string> campos = new List<string>();
                List<string> valores = new List<string>();
                foreach (PropertyInfo pi in this.GetType().GetProperties(BindingFlags.Public | BindingFlags.Instance))
                {
                    OpcoesBase opcoes = (OpcoesBase)pi.GetCustomAttribute(typeof(OpcoesBase));
                    if (opcoes != null && opcoes.UsaBD && !opcoes.ChavePrimaria)
                    {
                        if (this.key == 0)
                        {
                            campos.Add(pi.Name);
                            valores.Add("'" + pi.GetValue(this) + "'");
                        }
                        else
                        {
                            if (!opcoes.ChavePrimaria)
                            {
                                valores.Add(" " + pi.Name + "='" + pi.GetValue(this) + "'");
                            }
                        }
                    }
                }
                string sql = null;
                if (this.key == 0)
                {
                    sql = "insert into " + this.GetType().Name + "s (" + string.Join(", ", campos.ToArray()) + ")" + " values (" + string.Join(", ", valores.ToArray()) + ");";
                }
                else
                {
                    sql = "update " + this.GetType().Name + "s set" + string.Join(", ", valores.ToArray()) + " where Id=" + this.key + ";";
                }
                SqlCommand command = new SqlCommand(sql, connection);
                command.Connection.Open();
                command.ExecuteNonQuery();
            }
        }

        public List<IBase> Todos()
        {
            throw new NotImplementedException();
        }
    }
}
