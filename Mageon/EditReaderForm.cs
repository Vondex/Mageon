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
    public partial class EditReaderForm : Form
    {
        int selectedReaderId = 0;
        public EditReaderForm(int readerId)
        {
            InitializeComponent();
            selectedReaderId = readerId;
            GetReaderData();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            EditReaderData();
            this.Hide();
            MainForm mainForm = new MainForm();
            mainForm.ShowDialog();
            this.Close();
        }

        void GetReaderData()
        {
            Reader reader = new Reader();

            reader = reader.GetReaderData(selectedReaderId);
            firstNameTxtBox.Text = reader.ReaderName;
            middleNameTxtBox.Text = reader.ReaderMiddleName;
            lastNameTxtBox.Text = reader.ReaderFamilyName;
            PINTxtBox.Text = reader.ReaderPIN;
            cityTxtBox.Text = reader.CityName;
            telTxtBox.Text = reader.Tel;

        }

        void EditReaderData()
        {
            Reader reader = new Reader();

            reader.ReaderId = selectedReaderId;
            reader.ReaderName = firstNameTxtBox.Text;
            reader.ReaderMiddleName = middleNameTxtBox.Text;
            reader.ReaderFamilyName = lastNameTxtBox.Text;
            reader.ReaderPIN = PINTxtBox.Text;
            reader.CityName = cityTxtBox.Text;
            reader.Tel = telTxtBox.Text;

            reader.EditReader(reader);
        }

      

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
