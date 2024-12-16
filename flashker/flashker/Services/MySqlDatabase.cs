using flashker;
using flashker.Models;
using MySql.Data.MySqlClient;
using System;

namespace flashker.Services
{
    public class MySqlDatabase
    {
        private readonly string connectionString;

        public MySqlDatabase()
        {
            connectionString = AppConfig.ConnectionString;
        }

        public User GetUserById(int userId)
        {
            User user = null;

            try
            {
                using (var connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT * FROM Users WHERE UserId = @UserId";

                    using (var command = new MySqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@UserId", userId);

                        using (var reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                user = new User
                                {
                                    UserId = reader.GetInt32("UserId"),
                                    FullName = reader.GetString("FullName"),
                                    Email = reader.GetString("Email"),
                                    PhoneNumber = reader.GetString("PhoneNumber"),
                                    Location = reader.GetString("Location"),
                                    ProfilePicture = reader.GetString("ProfilePicture"),
                                    AboutMe = reader.GetString("AboutMe")
                                };
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Błąd podczas pobierania użytkownika: {ex.Message}");
            }

            return user;
        }
    }
}
