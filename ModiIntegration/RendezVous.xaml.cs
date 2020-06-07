using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ModiIntegration
{
    /// <summary>
    /// Interaction logic for RendezVous.xaml
    /// </summary>
    public partial class RendezVous : Window
    {
        R_Modi rendezvous = new R_Modi();
        RC_modi rchoice = new RC_modi();
        DBEntities entities = new DBEntities();
        List<R_Modi> searchItemsList = new List<R_Modi>();

        public RendezVous()
        {
            InitializeComponent();
            Clear();
            RendezVousChoice.IsEnabled = false;
            btnOrderCreate.IsEnabled = false;
            btnEdit.IsEnabled = false;
            LoadDatagrid();

        }

        private void LoadDatagrid()
        {
            var data = from d in entities.R_Modi select d;
            Rdatagrid.ItemsSource = data.ToList();
        }

        private void button_Exit_OnClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void RendezVousBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }


        private void Clear()
        {
            rnyfikodsc.Text = rnyfikotxt.Text = rbrandnametxt.Text = rcodetxt.Text = rcitytxt.Text = rhourtxt.Text = rWedDate.Text = rDate.Text = rnametxt.Text = rsurnametxt.Text = rphonetxt.Text = null;
            btnSave.Content = "ΑΠΟΘΗΚΕΥΣΗ";
            string sql = "SELECT COUNT(*) FROM dbo.R_Modi";
            int total = entities.Database.SqlQuery<int>(sql).Single();
            rcodetxt.Text = String.Format("R{0}", total);

        }

        private void btnSave_click(object sender, RoutedEventArgs e)
        {
            try
            {

                rendezvous.RCode = rcodetxt.Text.Trim();
                rendezvous.RWeddingDate = rWedDate.DisplayDate.Date.ToShortDateString();
                rendezvous.RDate = rDate.DisplayDate.Date.ToShortDateString();
                rendezvous.RDateHour = rhourtxt.Text.Trim();
                rendezvous.RCustomerName = rnametxt.Text.Trim();
                rendezvous.RCustomerSurname = rsurnametxt.Text.Trim();
                rendezvous.RCustomerPhone = rphonetxt.Text.Trim();
                rendezvous.RCustomerCity = rcitytxt.Text.Trim();
                entities.R_Modi.Add(rendezvous);
                entities.SaveChanges();
                Clear();
                LoadDatagrid();
                MessageBox.Show("Εισαγωγή Ραντεβού επιτυχής");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());

            }

        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            Clear();
        }

        private void datagrid_selection(object sender, SelectionChangedEventArgs e)
        {
            btnOrderCreate.IsEnabled = false;
            rcodetxt.Text = ((R_Modi)Rdatagrid.SelectedItem).RCode.ToString();
            rWedDate.Text = ((R_Modi)Rdatagrid.SelectedItem).RWeddingDate.ToString();
            rDate.Text = ((R_Modi)Rdatagrid.SelectedItem).RDate.ToString();
            rhourtxt.Text = ((R_Modi)Rdatagrid.SelectedItem).RDateHour.ToString();
            rnametxt.Text = ((R_Modi)Rdatagrid.SelectedItem).RCustomerName.ToString();
            rsurnametxt.Text = ((R_Modi)Rdatagrid.SelectedItem).RCustomerSurname.ToString();
            rphonetxt.Text = ((R_Modi)Rdatagrid.SelectedItem).RCustomerPhone.ToString();
            rcitytxt.Text = ((R_Modi)Rdatagrid.SelectedItem).RCustomerCity.ToString();
            string rccodeid = ((R_Modi)Rdatagrid.SelectedItem).RCode.ToString();
            btnEdit.IsEnabled = true;
            if (!String.IsNullOrEmpty(((R_Modi)Rdatagrid.SelectedItem).RSuccess))
            {
                btnOrderCreate.IsEnabled = true;
            }
            
            RendezVousChoice.IsEnabled = true;
            LoadDatagridChoice(rccodeid);
        }

        private void btnRendezVousChoice_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if(String.IsNullOrEmpty(rnyfikotxt.Text) || String.IsNullOrEmpty(rbrandnametxt.Text) || String.IsNullOrEmpty(rnyfikodsc.Text))
                {
                    MessageBox.Show("ΣΎΜΠΛΗΡΩΣΤΕ ΤΑ ΠΕΔΙΑ: ΝΥΦΙΚΟ , ΣΧΕΔΙΑΣΤΗΣ , ΠΕΡΙΓΡΑΦΗ");
                }
                else
                {
                    string rccodeid = ((R_Modi)Rdatagrid.SelectedItem).RCode.ToString();
                    rchoice.RCode = rccodeid;
                    rchoice.RCNyfiko = rnyfikotxt.Text.Trim();
                    rchoice.RBrandName = rbrandnametxt.Text.Trim();
                    rchoice.RCNyfikoDesc = rnyfikodsc.Text.Trim();
                    entities.RC_modi.Add(rchoice);
                    entities.SaveChanges();
                    LoadDatagridChoice(rccodeid);
                    Clear();
                }
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace.ToString());

            }
        }

        private void LoadDatagridChoice(string rccodeid)
        {
            var data = from d in entities.RC_modi select d;
            Rcdatagrid.ItemsSource = data.ToList().Where(s => s.RCode == rccodeid);
        }

        private void btnRendezVousΟκ_Click(object sender, RoutedEventArgs e)
        {
            string rccodeid = ((R_Modi)Rdatagrid.SelectedItem).RCode.ToString();
            R_Modi result = entities.R_Modi.SingleOrDefault(b => b.RCode == rccodeid);
            if (result != null)
            {
                result.RSuccess = "OK";
                entities.SaveChanges();
                LoadDatagrid();
            }
       
        }

        private void btnOrderCreate_Click(object sender, RoutedEventArgs e)
        {
            //NA EPILEGEI ENA RANTEVOU KAI NA TO KANEI ORDER NA PERNAEI TA STOIXEIA STO ORDER WINDOW
            Window order = new OrderNyfiko();
            order.Show();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            //na ftiaxw to koumpi ananewsh stoixeiwn 
            string rccodeid = ((R_Modi)Rdatagrid.SelectedItem).RCode.ToString();
            R_Modi result = entities.R_Modi.SingleOrDefault(b => b.RCode == rccodeid);
            if (result != null)
            {
                result.RCustomerName = rnametxt.Text.ToString();
                result.RCustomerSurname = rsurnametxt.Text.ToString();
                result.RDate = rDate.Text.ToString();
                result.RWeddingDate = rWedDate.Text.ToString();
                result.RDateHour = rhourtxt.Text.ToString();
                result.RCustomerPhone = rphonetxt.Text.ToString();
                result.RCustomerCity = rcitytxt.Text.ToString();
                entities.SaveChanges();
                LoadDatagrid();
                Clear();
            }
          

        }

        //private void search_txt_changed(object sender, TextChangedEventArgs e)
        //{
        //    //Rdatagrid.UnselectAll();
        //    //var data = from d in entities.RC_modi select d;
        //    searchItemsList.Clear();
        //    if (rsearchtxt.Text == "")
        //    {
        //        var data = from d in entities.R_Modi select d;
        //        Rdatagrid.ItemsSource = data.ToList();
        //    }
        //    else
        //    {
        //        foreach (R_Modi s in Rdatagrid.ItemsSource)
        //        {
        //            if (s.RCustomerName.Contains(rsearchtxt.Text) || s.RCode.Contains(rsearchtxt.Text) || s.RCustomerSurname.Contains(rsearchtxt.Text) || s.RDate.Contains(rsearchtxt.Text) || s.RWeddingDate.Contains(rsearchtxt.Text) || s.RDateHour.Contains(rsearchtxt.Text) || s.RCustomerPhone.Contains(rsearchtxt.Text))
        //            {
        //                searchItemsList.Add(s);
        //            }
        //        }
        //        Rdatagrid.ItemsSource = searchItemsList;

        //    }


        //    //try
        //    //{


        //    //    Rdatagrid.ItemsSource = data.ToList().Where(s => s.RCode.Contains(rsearchtxt.Text) || s.RCustomerName.Contains(rsearchtxt.Text) || s.RCustomerSurname.Contains(rsearchtxt.Text) || s.RDate.Contains(rsearchtxt.Text) || s.RWeddingDate.Contains(rsearchtxt.Text) || s.RDateHour.Contains(rsearchtxt.Text) || s.RCustomerPhone.Contains(rsearchtxt.Text) || s.RSuccess.Contains(rsearchtxt.Text) || s.RCancelled.Contains(rsearchtxt.Text));
        //    //}
        //    //catch (Exception ec)
        //    //{
        //    //    throw ec;
        //    //}
        //}
    }
}