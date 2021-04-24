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
    public partial class TelaFornecedor : Form
    {
        public TelaFornecedor()
        {
            InitializeComponent();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            Fornecedor fornecedor = new Fornecedor();
            if (txtId.Text != "")
            {
                fornecedor.Id = int.Parse(txtId.Text);
            }
            fornecedor.Razao = txtRazao.Text;
            fornecedor.Cnpj = txtTCnpj.Text;
            fornecedor.Email = txtEmail.Text;
            fornecedor.Salvar();
            carrega_datagridview(); 
        }

        private void TelaFornecedor_Load(object sender, EventArgs e)
        {
            carrega_datagridview();
        }
        private void carrega_datagridview()
        {
            dgvdados.AutoGenerateColumns = false;
            dgvdados.DataSource = new Fornecedor().Todos();
        }

        private void dgvdados_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            Fornecedor fornecedor = (Fornecedor)dgvdados.Rows[e.RowIndex].DataBoundItem;
            txtTCnpj.Text = fornecedor.Cnpj;
            txtId.Text = fornecedor.Id.ToString();
            txtEmail.Text = fornecedor.Email;
            txtRazao.Text = fornecedor.Razao;
            btnSalvar.Text = "Alterar";
        }

        private void btnPesquisar_Click(object sender, EventArgs e)
        {
            Fornecedor fornecedor = new Fornecedor();
            if (!txtId.Text.Equals(""))
            {
                fornecedor.Id = int.Parse(txtId.Text);
            }

            if (!txtRazao.Text.Equals(""))
            {
                fornecedor.Razao = txtRazao.Text;
            }

            if (!txtTCnpj.Text.Equals(""))
            {
                fornecedor.Cnpj = txtTCnpj.Text;
            }

            if (!txtEmail.Text.Equals(""))
            {
                fornecedor.Email = txtEmail.Text;
            }

            foreach(Fornecedor forn in fornecedor.Busca())
            {
                txtTCnpj.Text = forn.Cnpj;
                txtEmail.Text = forn.Email;
                txtId.Text = forn.Id.ToString();
                txtRazao.Text = forn.Razao;
            }
        }
    }
}
