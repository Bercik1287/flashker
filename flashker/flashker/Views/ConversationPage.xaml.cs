using System.Collections.ObjectModel;
using Xamarin.Forms;

namespace flashker.Views
{
    public partial class ConversationsPage : ContentPage
    {
        // Kolekcja z rozmowami
        public ObservableCollection<ConversationPreview> Conversations { get; set; }

        public ConversationsPage()
        {
            InitializeComponent();
            LoadConversations();
        }

        private void LoadConversations()
        {
            // Tymczasowe dane do podglądu
            Conversations = new ObservableCollection<ConversationPreview>
            {
                new ConversationPreview { UserName = "Jan Kowalski", UserAvatar = "avatar1.jpg", LastMessage = "Cześć! Jak się masz?" },
                new ConversationPreview { UserName = "Anna Nowak", UserAvatar = "avatar2.png", LastMessage = "O której się widzimy?" },
                new ConversationPreview { UserName = "Piotr Wiśniewski", UserAvatar = "avatar4.png", LastMessage = "Dzięki za pomoc!" }
            };

            // Powiązanie danych z widokiem
            ConversationsList.ItemsSource = Conversations;
        }

        private async void OnConversationSelected(object sender, SelectionChangedEventArgs e)
        {
            if (e.CurrentSelection.Count > 0)
            {
                var selectedConversation = e.CurrentSelection[0] as ConversationPreview;

                // Przejdź do szczegółowego widoku wiadomości
                await Navigation.PushAsync(new ChatPage(selectedConversation.UserName));

                // Resetuj wybór (żeby można było kliknąć jeszcze raz)
                ((CollectionView)sender).SelectedItem = null;
            }
        }
    }

    // Model danych do wyświetlania podglądu konwersacji
    public class ConversationPreview
    {
        public string UserName { get; set; }
        public string UserAvatar { get; set; }
        public string LastMessage { get; set; }
    }
}
