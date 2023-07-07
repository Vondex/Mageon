using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
using System.Configuration;


namespace CRUD_library
{
    public partial class MainForm : Form
    {
       

        public MainForm()
        {
            InitializeComponent();
            FillGridView();
            AdjustGridView();
        }

        void FillGridView()
        {
            List<Reader> readerList = new List<Reader>();
            Reader reader = new Reader();
            readerList = reader.GetReaders();
            dataGridViewReaders.DataSource = readerList;
        }

        private void btnNewForm_Click(object sender, EventArgs e)
        {
            NewReaderForm formNewReader = new NewReaderForm();
            formNewReader.ShowDialog();
          
        
        }

        private void MainForm_Activated(object sender, EventArgs e)
        {
            FillGridView();
        }

        private void btnEditForm_Click(object sender, EventArgs e)
        {
            EditReader();
        }

        void EditReader()
        {
            int readerId;

            readerId = (int)dataGridViewReaders.CurrentRow.Cells[0].Value;
            EditReaderForm formEditReader = new EditReaderForm(readerId);
            formEditReader.ShowDialog();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            DeleteReader();
        }

        void DeleteReader()
        {
            int readerId;
            readerId = (int)dataGridViewReaders.CurrentRow.Cells[0].Value;
            string readerName = dataGridViewReaders.CurrentRow.Cells[1].Value.ToString();
            string readerFamilyName = dataGridViewReaders.CurrentRow.Cells[3].Value.ToString();
            string readerFullName = readerName + " " + readerFamilyName;
            string message = "Are you sure you want to delete this reader? \" " + readerFullName + " \" ?";
            DialogResult dResult = MessageBox.Show(message, "Delete?", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (dResult == DialogResult.Yes)
            {
                Reader reader = new Reader();
                reader.DeleteReader(readerId);
                FillGridView();
            }
        }
        void AdjustGridView()
        {
            dataGridViewReaders.Columns[0].HeaderText = "№ of reader";
            dataGridViewReaders.Columns[1].HeaderText = "First name";
            dataGridViewReaders.Columns[2].HeaderText = "Middle name";
            dataGridViewReaders.Columns[3].HeaderText = "Last name";
            dataGridViewReaders.Columns[4].HeaderText = "PIN of reader (EGN)";
            dataGridViewReaders.Columns[5].HeaderText = "City";
            dataGridViewReaders.Columns[6].HeaderText = "Telephone";

            dataGridViewReaders.Columns[0].Width = 100;
            dataGridViewReaders.Columns[1].Width = 200;
            dataGridViewReaders.Columns[2].Width = 200;
            dataGridViewReaders.Columns[3].Width = 200;
            dataGridViewReaders.Columns[4].Width = 120;
            dataGridViewReaders.Columns[5].Width = 120;
            dataGridViewReaders.Columns[6].Width = 120;

        }

        private void searchBtn_Click(object sender, EventArgs e)
        {

            try
            {
                string connectionString = "Data Source=DESKTOP-BGJ92FC\\SQLEXPRESS;Initial Catalog=LibraryProject;Integrated Security=True;TrustServerCertificate=True";
                SqlConnection cn = new SqlConnection(connectionString);
                
                    if (cn.State == ConnectionState.Closed) 
                        cn.Open();
                using (DataTable dt = new DataTable("Reader"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM GetReaderData WHERE ReaderId=@ReaderId OR ReaderName LIKE @ReaderName", cn))
                    {
                        cmd.Parameters.AddWithValue("ReaderId", searchTxtBox.Text);
                        cmd.Parameters.AddWithValue("ReaderName", string.Format("%{0}%", searchTxtBox.Text));
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        adapter.Fill(dt);
                        dataGridViewReaders.DataSource = dt;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void searchTxtBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)// enter
                searchBtn.PerformClick();
        }
    }
}
