using System;
using System.Configuration;
using System.Web.Http;
using MySql.Data.MySqlClient;

namespace Sem_5_Project.Controller
{
    public class SignUpController : ApiController
    {
        //MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        MySqlConnection connection = new MySqlConnection("Datasource=localhost; username=root; database=travels; password=");
        MySqlCommand command;
        [HttpPost]
        public string Post([FromBody]DataRequest request)
        {
            var Firstname = request.Firstname;
            var Username = request.Username;
            var Lastname = request.Lastname;
            var gmail = request.Gmail;
            var password = request.Password;
            var query = "insert into test values ('" + Firstname + "','" + Lastname + "','" + gmail + "','" + Username + "','" + password + "')";
            command = new MySqlCommand(query, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();
                return "Signup Successful";
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
            public string Firstname { get; set; }
            public string Lastname { get; set; }
            public string Gmail { get; set; }
            public string Password { get; set; }
            public string Username { get; set; }
        }
    }
}