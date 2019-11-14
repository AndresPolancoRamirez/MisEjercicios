using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MiPrimerFormulario
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Validar() == true)
            {
                Guardar();
                CargarGrilla();
                LimpiarFormulario();
            }
        }
        private bool Validar()
        {
            if (txtNombre.Text == "")
            {
                MessageBox.Show("El Nombre del producto es un dato obligatorio. Por favor",
                    "Error al Registar Producto",
                  MessageBoxButtons.OK,
                MessageBoxIcon.Error);
                return false;
            }
            if (txtCantidad.Text == "")
            {
                MessageBox.Show("La Cantidad del producto es un dato obligatorio. Por favor",
                    "Error al Registar Producto",
                  MessageBoxButtons.OK,
                MessageBoxIcon.Error);
                return false;
            }
            if (txtPrecio.Text == "")
            {
                MessageBox.Show("El Precio del producto es un dato obligatorio. Por favor",
                    "Error al Registar Producto",
                    MessageBoxButtons.OK,
                MessageBoxIcon.Error);
                return false;
            }
            if (boxUnidad.Text == "")
            {
                MessageBox.Show("la Unidad del producto es un dato obligatorio. Por favor",
                    "Error al Registar Producto",
                    MessageBoxButtons.OK,
                MessageBoxIcon.Error);
                return false;
            }
            
            int FechaHoyY = Convert.ToInt32(DateTime.Today.Year);
            int FechaHoyM = Convert.ToInt32(DateTime.Today.Month);
            int FechaHoyD = Convert.ToInt32(DateTime.Today.Day);
            int FechaVencY = Convert.ToInt32(dtpFechaVencimiento.Value.Year);
            int FechaVencM = Convert.ToInt32(dtpFechaVencimiento.Value.Month);
            int FechaVencD = Convert.ToInt32(dtpFechaVencimiento.Value.Day);
            if (FechaVencY < FechaHoyY)
            {
                MessageBox.Show("Producto vencido", "No se puede registrar el producto",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (FechaVencY == FechaHoyY && FechaVencM <FechaHoyM)
            {
                MessageBox.Show("Producto vencido", "No se puede registrar el producto",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (FechaVencY == FechaHoyY && FechaVencM == FechaHoyM && FechaVencD <= FechaHoyD)
            {
                MessageBox.Show("Producto vencido", "No se puede registrar el producto",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }
        private void Guardar()
        {
            MessageBox.Show("Su Producto ha sido registrado con exito",
                "Registrando productos",
                MessageBoxButtons.OK,
            MessageBoxIcon.Information);
        }
        private void LimpiarFormulario()
        {
            txtNombre.Text = "";
            txtCantidad.Text = "";
            txtPrecio.Text = "";
            boxUnidad.Text = "";
            dtpFechaVencimiento.Value = DateTime.Today;
        }
        private void CargarGrilla()
        {
            int NumFilas = dgvRegistroProducto.Rows.Count;
            dgvRegistroProducto.Rows.Add();
            dgvRegistroProducto.Rows[NumFilas].Cells[1].Value = txtNombre.Text;
            dgvRegistroProducto.Rows[NumFilas].Cells[2].Value = txtCantidad.Text;
            dgvRegistroProducto.Rows[NumFilas].Cells[3].Value = txtPrecio.Text;
            dgvRegistroProducto.Rows[NumFilas].Cells[4].Value = boxUnidad.Text;

        }

        private void dgvRegistroProducto_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        
    }
}

