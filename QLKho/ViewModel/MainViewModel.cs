using QLKho.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace QLKho.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        public bool IsLoaded = false;

        private ObservableCollection<TonKho> _TonKhoList;
        public ObservableCollection<TonKho> TonKhoList { get => _TonKhoList; set { _TonKhoList = value; OnPropertyChanged(); } }
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand UnitCommand { get; set; }
        public ICommand SuplierCommand { get; set; }
        public ICommand CustomerCommand { get; set; }
        public ICommand ObjectCommand { get; set; }
        public ICommand UserCommand { get; set; }
        public ICommand InputCommand { get; set; }
        public ICommand OutputCommand { get; set; }

        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
                {
                    IsLoaded = true;
                    p.Hide();
                    LoginWindow login = new LoginWindow();
                    login.ShowDialog();
                    if (login.DataContext == null)
                        return;
                    var loginVM = login.DataContext as LoginViewModel;
                    if (loginVM.isLogin)
                    {
                        p.Show();
                        LoadTonKho();
                    }
                    else
                        p.Close();
                });

            UnitCommand = new RelayCommand<object>((p) => { return true; }, (p) => { UnitWindow wd = new UnitWindow(); wd.ShowDialog(); });
            SuplierCommand = new RelayCommand<object>((p) => { return true; }, (p) => { SuplierWindow wd = new SuplierWindow(); wd.ShowDialog(); });
            CustomerCommand = new RelayCommand<object>((p) => { return true; }, (p) => { CustomerWindow wd = new CustomerWindow(); wd.ShowDialog(); });
            ObjectCommand = new RelayCommand<object>((p) => { return true; }, (p) => { ObjectWindow wd = new ObjectWindow(); wd.ShowDialog(); });
            UserCommand = new RelayCommand<object>((p) => { return true; }, (p) => { UserWindow wd = new UserWindow(); wd.ShowDialog(); });
            InputCommand = new RelayCommand<object>((p) => { return true; }, (p) => { InputWindow wd = new InputWindow(); wd.ShowDialog(); });
            OutputCommand = new RelayCommand<object>((p) => { return true; }, (p) => { OutputWindow wd = new OutputWindow(); wd.ShowDialog(); });
        }
        public void LoadTonKho()
        {
            TonKhoList = new ObservableCollection<TonKho>();
            var obj = DataProvider.Instance.DB.Objects;
            int i = 1;
            foreach (var item in obj)
            {
                var InputList = DataProvider.Instance.DB.InputInFoes.Where(p=>p.IdObject == item.Id);
                var OutputList = DataProvider.Instance.DB.OutputInfoes.Where(p=>p.IdObject == item.Id);
                int CountInput = 0;
                int CountOutput = 0;
                if(InputList != null && InputList.Count() >0)
                {
                    CountInput = (int)InputList.Sum(p=>p.Count);
                }
                if (OutputList != null && OutputList.Count() > 0)
                {
                    CountOutput = (int)OutputList.Sum(p => p.Count);
                }

                TonKho tk = new TonKho();
                tk.Object = item;
                tk.STT = i;
                tk.Count = CountInput - CountOutput;

                TonKhoList.Add(tk);
                i++;
            }
        }
    }
}
