using QLKho.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QLKho.ViewModel
{
    public class LoginViewModel : BaseViewModel
    {
        public ICommand LoginCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand ExitCommand { get; set; }

        public bool isLogin { get; set; }

        private string _UserName;
        public string UserName { get => _UserName; set{ _UserName = value; OnPropertyChanged(); } }

        private string _Password;
        public string Password { get => _Password; set{ _Password = value; OnPropertyChanged(); } }

        public LoginViewModel()
        {
            isLogin = false;
            Password = "";
            UserName = "";
            LoginCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { Login(p); });
            ExitCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { p.Close(); });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Password = p.Password; });
        }

        public void Login(Window p)
        {
            if (p == null) return;
            string PasswordEncode = MD5Hash(Base64Encode(Password));
            var count = DataProvider.Instance.DB.Users.Where(x=>x.UserName == UserName && x.PassWord == PasswordEncode).Count();
            if (count >0)
            {
                isLogin = true;
                p.Close();
            }
            else
            {
                MessageBox.Show("Sai tên tài khoản, mật khẩu");
                isLogin = false;
            }

            
        }

        
        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }



        public static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }



    }
}
