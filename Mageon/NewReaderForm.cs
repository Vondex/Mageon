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
    public partial class NewReaderForm : Form
    {
        public NewReaderForm()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            SaveReaderData();
            this.Close();
        }

        void SaveReaderData()
        {
            Reader reader = new Reader();

            reader.ReaderName = firstNameTxtBox.Text;
            reader.ReaderMiddleName = middleNameTxtBox.Text;
            reader.ReaderFamilyName = lastNameTxtBox.Text;
            reader.ReaderPIN = PINTxtBox.Text;
            reader.CityName = cityTxtBox.Text;
            reader.Tel = telTxtBox.Text;

            reader.CreateReader(reader);


        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
          
        }
    }
}
