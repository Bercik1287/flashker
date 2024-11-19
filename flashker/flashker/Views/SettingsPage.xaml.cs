using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace flashker.Views
{
    public partial class SettingsPage : ContentPage
    {
        public SettingsPage()
        {
            InitializeComponent();
            LoadSettings();
        }


        private void LoadSettings()
        {
            // Załaduj zapisane ustawienia (domyślnie Jasny motyw i włączone powiadomienia)
            if (Application.Current.Properties.ContainsKey("Theme"))
            {
                ThemePicker.SelectedIndex = (int)Application.Current.Properties["Theme"];
            }
            else
            {
                ThemePicker.SelectedIndex = 0; // Domyślnie Jasny
            }

            PrivateMessageSwitch.IsToggled = Application.Current.Properties.ContainsKey("PrivateMessageNotifications")
                ? (bool)Application.Current.Properties["PrivateMessageNotifications"] : true;
            GroupMessageSwitch.IsToggled = Application.Current.Properties.ContainsKey("GroupMessageNotifications")
                ? (bool)Application.Current.Properties["GroupMessageNotifications"] : true;
            FriendRequestSwitch.IsToggled = Application.Current.Properties.ContainsKey("FriendRequestNotifications")
                ? (bool)Application.Current.Properties["FriendRequestNotifications"] : true;
            ProfileCommentSwitch.IsToggled = Application.Current.Properties.ContainsKey("ProfileCommentNotifications")
                ? (bool)Application.Current.Properties["ProfileCommentNotifications"] : true;
        }

        private async void SaveSettings()
        {
            // Zapisz ustawienia w Properties
            Application.Current.Properties["Theme"] = ThemePicker.SelectedIndex;
            Application.Current.Properties["PrivateMessageNotifications"] = PrivateMessageSwitch.IsToggled;
            Application.Current.Properties["GroupMessageNotifications"] = GroupMessageSwitch.IsToggled;
            Application.Current.Properties["FriendRequestNotifications"] = FriendRequestSwitch.IsToggled;
            Application.Current.Properties["ProfileCommentNotifications"] = ProfileCommentSwitch.IsToggled;

            await Application.Current.SavePropertiesAsync();
        }

        private void OnThemeChanged(object sender, EventArgs e)
        {
            var selectedTheme = ThemePicker.SelectedIndex;

            // Ustaw motyw aplikacji
            switch (selectedTheme)
            {
                case 0:
                    // Jasny
                    Application.Current.UserAppTheme = OSAppTheme.Light;
                    break;
                case 1:
                    // Ciemny
                    Application.Current.UserAppTheme = OSAppTheme.Dark;
                    break;
                case 2:
                    // AMOLED (np. użycie czystej czerni w motywie)
                    Application.Current.Resources["BackgroundColor"] = Color.Black;
                    Application.Current.Resources["TextColor"] = Color.White;
                    break;
            }

            SaveSettings();
        }

        private void OnPrivateMessageToggled(object sender, ToggledEventArgs e)
        {
            SaveSettings();
        }

        private void OnGroupMessageToggled(object sender, ToggledEventArgs e)
        {
            SaveSettings();
        }

        private void OnFriendRequestToggled(object sender, ToggledEventArgs e)
        {
            SaveSettings();
        }

        private void OnProfileCommentToggled(object sender, ToggledEventArgs e)
        {
            SaveSettings();
        }
    }
}
