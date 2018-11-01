using QLKho.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QLKho.ViewModel
{
    public class SuplierViewModel : BaseViewModel
    {
        private ObservableCollection<Suplier> _List;
        public ObservableCollection<Suplier> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }

        private string _Address;
        public string Address { get => _Address; set { _Address = value; OnPropertyChanged(); } }

        private string _Phone;
        public string Phone { get => _Phone; set { _Phone = value; OnPropertyChanged(); } }

        private string _Email;
        public string Email { get => _Email; set { _Email = value; OnPropertyChanged(); } }

        private string _MoreInfo;
        public string MoreInfo { get => _MoreInfo; set { _MoreInfo = value; OnPropertyChanged(); } }

        private DateTime? _ContractDate;
        public DateTime? ContractDate { get => _ContractDate; set { _ContractDate = value; OnPropertyChanged(); } }

        private Suplier _SelectedItem;
        public Suplier SelectedItem
        {
            get => _SelectedItem; set
            {
                _SelectedItem = value; OnPropertyChanged(); if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    Address = SelectedItem.Address;
                    Phone = SelectedItem.Phone;
                    Email = SelectedItem.Email;
                    MoreInfo = SelectedItem.MoreInfo;
                    ContractDate = SelectedItem.ContractDate;
                }
            }
        }

        public ICommand AddCommand { get; set; }

        public ICommand EditCommand { get; set; }

        public SuplierViewModel()
        {
            List = new ObservableCollection<Suplier>(DataProvider.Instance.DB.Supliers);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;
            },
            (p) =>
            {
                Suplier sp = new Suplier()
                {
                    DisplayName = DisplayName,
                    Address = Address,
                    Phone = Phone,
                    Email = Email,
                    MoreInfo = MoreInfo,
                    ContractDate = ContractDate,
                };
                DataProvider.Instance.DB.Supliers.Add(sp);
                DataProvider.Instance.DB.SaveChanges();
                List.Add(sp);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var listSuplier = DataProvider.Instance.DB.Supliers.Where(x => x.Id == SelectedItem.Id);
                if (listSuplier != null && listSuplier.Count() != 0)
                    return true;
                return false;
            },
            (p) =>
            {
                Suplier sp = DataProvider.Instance.DB.Supliers.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                sp.DisplayName = DisplayName;
                sp.Address = Address;
                sp.Phone = Phone;
                sp.Email = Email;
                sp.MoreInfo = MoreInfo;
                sp.ContractDate = ContractDate;
                DataProvider.Instance.DB.SaveChanges();

            });
        }
    }
}
