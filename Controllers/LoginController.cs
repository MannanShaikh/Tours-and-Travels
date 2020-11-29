using System;
using System.Web.Http;
using MySql.Data.MySqlClient;

namespace Sem_5_Project.Controller
{
    public class LoginController : ApiController
    {
        MySqlDataReader dr;
        MySqlConnection connection = new MySqlConnection("Datasource=localhost; username=root; database=Demo; password=");
        MySqlCommand command;
        [HttpPost]
        public string Post([FromBody]DataRequest request)
        {
            var username = request.Username;
            var password = request.Password;
            var query = "select email,password from table where email = '" + username + "' and password = '" + password + "'";
            command = new MySqlCommand(query, connection);
            try
            {
                connection.Open();
                dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    return "Login Successful";
                }
                else
                {
                    return "Email or Password is incorrect";
                }
            }
            catch (Exception e)
            {
                return e.Message;
            }
            finally
            {
                connection.Close();
            }
        }
        public class DataRequest
        {
            public string Username { get; set; }
            public string Password { get; set; }
        }
    }
}