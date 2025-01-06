using System;
using System.Collections.ObjectModel;
using Xamarin.Essentials;
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
            LoadMessages();
            BindingContext = this;

            // Subskrybujemy komunikaty z MainActivity
            MessagingCenter.Subscribe<MainActivity, string>(this, "ImagePicked", OnImagePicked);
            MessagingCenter.Subscribe<MainActivity, string>(this, "PhotoTaken", OnPhotoTaken);
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
                Messages.Add(new Message
                {
                    Text = MessageEntry.Text,
                    IsSentByMe = true
                });
                MessageEntry.Text = string.Empty;
            }
        }

        private void OnPickImageFromGallery(object sender, EventArgs e)
        {
            var mainActivity = Xamarin.Forms.Forms.Context as MainActivity;
            mainActivity?.PickImageFromGallery();
        }

        private void OnTakePhoto(object sender, EventArgs e)
        {
            var mainActivity = Xamarin.Forms.Forms.Context as MainActivity;
            mainActivity?.TakePhoto();
        }

        private void OnImagePicked(MainActivity sender, string imagePath)
        {
            AddImageMessage(imagePath, "Obraz wybrany z galerii");
        }

        private void OnPhotoTaken(MainActivity sender, string imagePath)
        {
            AddImageMessage(imagePath, "Zdjęcie zrobione aparatem");
        }

        private void AddImageMessage(string imagePath, string messageText)
        {
            if (!string.IsNullOrEmpty(imagePath))
            {
                Messages.Add(new Message
                {
                    Text = messageText,
                    ImagePath = imagePath,
                    IsSentByMe = true
                });
            }
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            MessagingCenter.Unsubscribe<MainActivity, string>(this, "ImagePicked");
            MessagingCenter.Unsubscribe<MainActivity, string>(this, "PhotoTaken");
        }
    }

    public class Message
    {
        public string Text { get; set; }
        public bool IsSentByMe { get; set; }
        public string ImagePath { get; set; }
        public bool HasImage => !string.IsNullOrEmpty(ImagePath);
        public LayoutOptions Alignment => IsSentByMe ? LayoutOptions.End : LayoutOptions.Start;
        public Color BackgroundColor => IsSentByMe ? Color.Blue : Color.Gray;
    }
}
