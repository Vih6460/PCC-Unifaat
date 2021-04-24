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

namespace H_GOLD_Transportes_Ltda
{
    public partial class FormNotasCarregamento : Form
    {
        public FormNotasCarregamento()
        {
            InitializeComponent();
        }

        private void btnSalvarNota_Click(object sender, EventArgs e)
        {
            Nota nota = new Nota();
            if (txtIdNota.Text != "")
            {
                nota.Id = int.Parse(txtIdNota.Text);
            }
            nota.CodRomaneio = txtCodigoRomaneioNota.Text;
            nota.Fornecedor = txtFornecedorNota.Text;
            nota.Recebedor = txtRecebedorNota.Text;
            nota.NomeMotorista = txtNomeNota.Text;
            nota.Carro = txtCarroNota.Text;
            nota.Placa = txtPlacaNota.Text;
            nota.Salvar();
        }
    }
}
