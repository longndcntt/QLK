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
    public class ObjectViewModel : BaseViewModel
    {
        private ObservableCollection<Model.Object> _List;
        public ObservableCollection<Model.Object> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }
        private Model.Object _SelectedItem;
        public Model.Object SelectedItem
        {
            get => _SelectedItem; set
            {
                _SelectedItem = value; OnPropertyChanged(); if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    SelectedUnit = SelectedItem.Unit;
                    QRCode = SelectedItem.QRCode;
                    SelectedSuplier = SelectedItem.Suplier;
                   BarCode = SelectedItem.BarCode;

                }
            }
        }

        private Model.Unit _SelectedUnit;
        public Model.Unit SelectedUnit
        {
            get => _SelectedUnit; set
            {
                _SelectedUnit = value; OnPropertyChanged(); 
            }
        }

        private Model.Suplier _SelectedSuplier;
        public Model.Suplier SelectedSuplier
        {
            get => _SelectedSuplier; set
            {
                _SelectedSuplier = value; OnPropertyChanged();
            }
        }
        private string _Id;
        public string Id { get => _Id; set { _Id = value; OnPropertyChanged(); } }

        private ObservableCollection<Unit> _Unit;
        public ObservableCollection<Unit> Unit { get => _Unit; set { _Unit = value; OnPropertyChanged(); } }

        private ObservableCollection<Suplier> _Suplier;
        public ObservableCollection<Suplier> Suplier { get => _Suplier; set { _Suplier = value; OnPropertyChanged(); } }
        private string _QRCode;
        public string QRCode { get => _QRCode; set { _QRCode = value; OnPropertyChanged(); } }
        private string _BarCode;
        public string BarCode { get => _BarCode; set { _BarCode = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ObjectViewModel()
        {
            List = new ObservableCollection<Model.Object>(DataProvider.Instance.DB.Objects);
            Unit = new ObservableCollection<Unit>(DataProvider.Instance.DB.Units);
            Suplier = new ObservableCollection<Suplier>(DataProvider.Instance.DB.Supliers);

            AddCommand = new RelayCommand<System.Object>((p) =>
            {
                if (Unit == null || Suplier == null)
                    return false;
                return true;
            },
            (p) =>
            {
                Model.Object obj = new Model.Object() { Id = Guid.NewGuid().ToString(), DisplayName = DisplayName, IdUnit = SelectedUnit.Id, IdSuplier = SelectedSuplier.Id, QRCode = QRCode, BarCode = BarCode };
                DataProvider.Instance.DB.Objects.Add(obj);
                DataProvider.Instance.DB.SaveChanges();
                List.Add(obj);
            });

            EditCommand = new RelayCommand<System.Object>((p) =>
            {
                if (Unit == null || Suplier == null)
                    return false;
                return true;
            },
             (p) =>
             {
                 Model.Object obj = DataProvider.Instance.DB.Objects.Where(x=>x.Id == SelectedItem.Id).SingleOrDefault();
                 obj.DisplayName = DisplayName;
                 obj.IdUnit = SelectedUnit.Id;
                 obj.IdSuplier = SelectedSuplier.Id;
                 obj.QRCode = QRCode;
                 obj.BarCode = BarCode;
                 DataProvider.Instance.DB.SaveChanges();

                 SelectedItem.IdSuplier = SelectedSuplier.Id;
                 SelectedItem.IdUnit = SelectedUnit.Id;

             });
        }

    }
}
