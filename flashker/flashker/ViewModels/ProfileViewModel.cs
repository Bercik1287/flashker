using flashker.Services;
using flashker.Models;
using flashker.Services;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace flashker.ViewModels
{
    public class ProfileViewModel : INotifyPropertyChanged
    {
        public ProfileViewModel()
        {
            // Domyślny konstruktor
        }

        private User _user;
        private readonly MySqlDatabase _database;

        public event PropertyChangedEventHandler PropertyChanged;

        public User User
        {
            get => _user;
            set
            {
                _user = value;
                OnPropertyChanged();
            }
        }

        public ProfileViewModel(int userId)
        {
            _database = new MySqlDatabase();
            LoadUser(userId);
        }

        private void LoadUser(int userId)
        {
            User = _database.GetUserById(userId);
        }

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
