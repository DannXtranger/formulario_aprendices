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

namespace formulario_aprendices
{
    /// <summary>
    /// Interaction logic for ventanaGuardar.xaml
    /// </summary>
    public partial class ventanaGuardar : Window
    {
        public ventanaGuardar()
        {
            InitializeComponent();
            LlenarComboTiposDocumentos();
            LlenarComboCiudades();
        }

        private void LlenarComboCiudades()
        {
            using(var db = new PracticaDataGridEntities())
            {
                var ciudades = from ciudad in db.ciudades
                               select ciudad;

                cmbCiudad.SelectedValuePath = "id";
                cmbCiudad.DisplayMemberPath = "nombre_ciudad";
                cmbCiudad.ItemsSource = ciudades.ToList();
            }
        }

        private void LlenarComboTiposDocumentos()
        {
            using (var db = new PracticaDataGridEntities())
            {
                var tipoDeDocumentos = from tipoDoc in db.tiposDocumentos
                                      select tipoDoc;
                cmbTipoDocumento.SelectedValuePath = "id";
                cmbTipoDocumento.DisplayMemberPath = "nombre_tipo_doc";
                cmbTipoDocumento.ItemsSource = tipoDeDocumentos.ToList();
            }
        }
     

        private void BtnAtras_Click(object sender, RoutedEventArgs e)
        {
            MainWindow ventanaPrincipal = new MainWindow();
            ventanaPrincipal.Show();
            Close();
        }

        private void btnGuardar_Click(object sender, RoutedEventArgs e)
        {
            aprendices aprendiz = new aprendices();

            using(var db = new PracticaDataGridEntities())
            {
                try
                {
                    aprendiz.nombre = txtNombre.Text.Trim() + " " + txtApellido.Text.Trim();
                    aprendiz.documento = int.Parse(txtDocumento.Text);
                    aprendiz.idTipoDocumento = int.Parse(cmbTipoDocumento.SelectedValue.ToString());
                    aprendiz.idCiudad = int.Parse(cmbCiudad.SelectedValue.ToString());
                    aprendiz.idGenero = EscogerGenero();
                    aprendiz.fechaNacimiento = dateFechaNac.SelectedDate;

                    db.aprendices.Add(aprendiz);
                    db.SaveChanges();

                }catch(Exception ex)
                {
                    MessageBox.Show("Error");
                }

                MessageBox.Show("Aprendiz registrado con éxito");

            }
        }

        private int EscogerGenero()
        {
            int idGenero = 1;
            if(rdFemenino.IsChecked == true)
            {
                idGenero = 2;
            }

            return idGenero;
        }
    }
}
