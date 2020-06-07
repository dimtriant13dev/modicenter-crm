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

namespace ModiIntegration
{
    /// <summary>
    /// Interaction logic for ModiControllSystem.xaml
    /// </summary>
    public partial class ModiControllSystem : Window
    {
        public ModiControllSystem()
        {
            InitializeComponent();
        }

        private void button_Exit_OnClick(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void TitleBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void RendezVousBtn_Click(object sender, RoutedEventArgs e)
        {
            Window rendezVous = new RendezVous();
            rendezVous.Show();
        }

        private void button10_Click(object sender, RoutedEventArgs e)
        {
            Window order = new OrderNyfiko();
            order.Show();
        }

        private void button15_Click(object sender, RoutedEventArgs e)
        {
            MainWindow win = new MainWindow();
            win.button_Click(sender, e);
        }
    }
}
