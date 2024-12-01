using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

using flashker.ViewModels;

namespace flashker.Views
{
    public partial class ProfilePage : ContentPage
    {
        public ProfilePage()
        {
            InitializeComponent();
        }

        // Konstruktor z parametrem
        public ProfilePage(int userId)
        {
            InitializeComponent();
            // Przekazujesz userId do ViewModelu w kodzie-behind
            BindingContext = new ProfileViewModel(userId);
        }
    }
}
