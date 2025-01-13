using System;
using System.Collections.ObjectModel;
using Xamarin.Forms;

namespace flashker.Views
{
    public partial class ChatPage : ContentPage
    {
        public ObservableCollection<Message> Messages { get; set; }
        public string UserName { get; private set; }

        public ChatPage(string userName)
        {
            InitializeComponent();
            UserName = userName;
            Title = UserName;

            // Wczytaj przykładowe wiadomości
            LoadMessages();

            // Powiąż dane z widokiem
            BindingContext = this;
        }

        private void LoadMessages()
        {
            Messages = new ObservableCollection<Message>
            {
                new Message { Text = "Cześć, jak się masz?", IsSentByMe = false },
                new Message { Text = "W porządku, a Ty?", IsSentByMe = true },
                new Message { Text = "Też dobrze, dzięki!", IsSentByMe = false }
            };
        }

        private void OnSendMessage(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(MessageEntry.Text))
            {
                // Dodaj nową wiadomość wysłaną przez użytkownika
                Messages.Add(new Message
                {
                    Text = MessageEntry.Text,
                    IsSentByMe = true
                });

                // Wyczyść pole tekstowe
                MessageEntry.Text = string.Empty;
            }
        }
    }

    // Model danych wiadomości
    public class Message
    {
        public string Text { get; set; }
        public bool IsSentByMe { get; set; }

        // Automatyczne ustawianie wyrównania i koloru na podstawie właściciela wiadomości
        public LayoutOptions Alignment => IsSentByMe ? LayoutOptions.End : LayoutOptions.Start;
        public Color BackgroundColor => IsSentByMe ? Color.Blue : Color.Gray;
    }
}
