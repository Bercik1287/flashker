using flashker.Services;
using flashker.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace flashker.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        private readonly MySqlDatabase _database; // Instancja bazy danych

        public LoginPage()
        {
            InitializeComponent();
            this.BindingContext = new LoginViewModel();
            _database = new MySqlDatabase(); // Inicjalizacja bazy danych
        }

        // Przykładowa metoda logowania
        private void OnLoginButtonClicked(object sender, EventArgs e)
        {
            try
            {
                int userId = 1; // Wartość do testów, możesz zastąpić dynamiczną wartością
                var user = _database.GetUserById(userId);

                if (user != null)
                {
                    DisplayAlert("Sukces", $"Zalogowano użytkownika: {user.FullName}", "OK");
                }
                else
                {
                    DisplayAlert("Błąd", "Nie znaleziono użytkownika.", "OK");
                }
            }
            catch (Exception ex)
            {
                DisplayAlert("Błąd", $"Wystąpił problem: {ex.Message}", "OK");
            }
        }
    }
}