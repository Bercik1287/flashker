using flashker.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace flashker.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}