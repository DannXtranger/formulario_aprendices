using System;
using System.Collections.Generic;
using System.Data.Entity.SqlServer;
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

namespace formulario_aprendices
{
    /// <summary>
    /// Interaction logic for VentanaAprendicesGuardados.xaml
    /// </summary>
    public partial class VentanaAprendicesGuardados : Window
    {
        string[] doc = null;
        public VentanaAprendicesGuardados()
        {
            InitializeComponent();
            CargarDataGrid();
        }

        private void CargarDataGrid()
        {
            using(PracticaDataGridEntities bd  = new PracticaDataGridEntities()) 
            {
               var consulta = from aprendiz in bd.aprendices
                               join ciudad in bd.ciudades on aprendiz.idCiudad equals ciudad.id
                               join tipoDocumento in bd.tiposDocumentos on aprendiz.idTipoDocumento equals tipoDocumento.id
                               join genero in bd.generos on aprendiz.idGenero equals genero.id
                               select new
                               {
                                 tipoDeDocumento = tipoDocumento.abrev_tipo_doc,
                                 doc =  aprendiz.documento,
                                 nombre =  aprendiz.nombre,
                                 edad = SqlFunctions.DateDiff("year", aprendiz.fechaNacimiento, DateTime.Now),
                                 genero = genero.abrev_genero,
                                 ciudad =  ciudad.nombre_ciudad

                               };
                var datosAprendiz = consulta.ToList();  

                dataGridAprendices.ItemsSource = datosAprendiz;


            }
        }

        private void BtnAtras_Click(object sender, RoutedEventArgs e)
        {
            MainWindow ventanaPrincipal = new MainWindow();
            ventanaPrincipal.Show();
            Close();
        }

        private void dataGridAprendices_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left && e.ClickCount == 2 && dataGridAprendices.SelectedItem != null)
            {

                DataGridRow row = (DataGridRow)dataGridAprendices.ItemContainerGenerator.ContainerFromItem(dataGridAprendices.SelectedItem);

                if (row != null)
                {
                    int columnIndex = 1;
                    DataGridCell cell = dataGridAprendices.Columns[columnIndex].GetCellContent(row).Parent as DataGridCell;
                    

                       doc = cell.ToString().Split(' ');
                       // MessageBox.Show(doc[1].ToString());

                    
                    cmOpciones.IsOpen = true;
                    


                }
            }
            
        }

 

        private void MenuItem_Click_Eliminar(object sender, RoutedEventArgs e)
        {

            using(var db = new PracticaDataGridEntities())
            {
                var documento = doc[1].ToString().Trim();
                var aprendizAEliminar = db.aprendices.Where(
                    a => a.documento.ToString().Trim() == documento).ToList();

                db.aprendices.RemoveRange(aprendizAEliminar);
                db.SaveChanges();
                MessageBox.Show("Registro Borrado Con Éxito");
            }
            CargarDataGrid();
        }

        private void MenuItem_Click_Modificar(object sender, RoutedEventArgs e)
        {

        }


    }
}
