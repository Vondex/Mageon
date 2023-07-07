using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CRUD_library
{
    public partial class EntryForm : Form
    {
        public EntryForm()
        {
            InitializeComponent();
        }

    

        private void pictureBox1_Click_1(object sender, EventArgs e)
        {
            MainForm mainForm = new MainForm();
            mainForm.ShowDialog();
            this.Hide();
            this.Close();
        }
    }
}
