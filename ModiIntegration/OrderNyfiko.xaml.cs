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
    /// Interaction logic for OrderNyfiko.xaml
    /// </summary>
    public partial class OrderNyfiko : Window
    {
        
        public OrderNyfiko()
        {
            InitializeComponent();
        }

        private void button_Exit_OnClick(object sender, RoutedEventArgs e)
        {

            this.Close();
        }

        private void Button_Minimize_Click(object sender, RoutedEventArgs e)
        {
            
            this.WindowState = WindowState.Minimized;
            
        }

        private void OrderNyfiko_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
        

    }
}