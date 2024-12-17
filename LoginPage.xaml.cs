using flashker.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static flashker.ViewModels.LoginViewModel;

namespace flashker.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            this.BindingContext = new LoginViewModel();
        }

   
    private async void OnRegisterClicked(object sender, EventArgs e)
        {
            // Przechodzi do strony rejestracji
            await Navigation.PushAsync(new RegisterPage());
        }
    }
}