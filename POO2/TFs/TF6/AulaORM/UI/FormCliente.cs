using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Business;

namespace AulaORM
{
    public partial class FormCliente : Form
    {
        public FormCliente()
        {
            InitializeComponent();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            if (txtId.Text != "")
            {
                cliente.Id = int.Parse(txtId.Text);
            }
            cliente.Nome = txtNome.Text;
            cliente.Email = txtEmail.Text;
            cliente.Endereco = txtEndereço.Text;
            cliente.Telefone = txtTelefone.Text;
            cliente.Salvar();
            carrega_datagrid();
        }

        private void FormCliente_Load(object sender, EventArgs e)
        {
            carrega_datagrid();
        }

        private void carrega_datagrid()
        {
            dgvdados.AutoGenerateColumns = false;
            dgvdados.DataSource = new Cliente().Todos();
        }
    }
}
