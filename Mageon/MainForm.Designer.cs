
namespace CRUD_library
{
    partial class MainForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridViewReaders = new System.Windows.Forms.DataGridView();
            this.btnNewForm = new System.Windows.Forms.Button();
            this.btnEditForm = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.searchTxtBox = new System.Windows.Forms.TextBox();
            this.searchBtn = new System.Windows.Forms.Button();
            this.searchLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewReaders)).BeginInit();
            this.flowLayoutPanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridViewReaders
            // 
            this.dataGridViewReaders.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewReaders.Location = new System.Drawing.Point(301, 12);
            this.dataGridViewReaders.Name = "dataGridViewReaders";
            this.dataGridViewReaders.RowHeadersWidth = 51;
            this.dataGridViewReaders.RowTemplate.Height = 29;
            this.dataGridViewReaders.Size = new System.Drawing.Size(846, 334);
            this.dataGridViewReaders.TabIndex = 0;
            // 
            // btnNewForm
            // 
            this.btnNewForm.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNewForm.Font = new System.Drawing.Font("Quicksand", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnNewForm.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnNewForm.Image = global::CRUD_library.Properties.Resources.icons8_add_30;
            this.btnNewForm.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNewForm.Location = new System.Drawing.Point(-3, 9);
            this.btnNewForm.Name = "btnNewForm";
            this.btnNewForm.Size = new System.Drawing.Size(250, 44);
            this.btnNewForm.TabIndex = 1;
            this.btnNewForm.Text = "      Add";
            this.btnNewForm.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNewForm.UseVisualStyleBackColor = true;
            this.btnNewForm.Click += new System.EventHandler(this.btnNewForm_Click);
            // 
            // btnEditForm
            // 
            this.btnEditForm.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEditForm.Font = new System.Drawing.Font("Quicksand", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnEditForm.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnEditForm.Image = global::CRUD_library.Properties.Resources.icons8_edit_24;
            this.btnEditForm.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEditForm.Location = new System.Drawing.Point(-3, 3);
            this.btnEditForm.Name = "btnEditForm";
            this.btnEditForm.Size = new System.Drawing.Size(250, 44);
            this.btnEditForm.TabIndex = 2;
            this.btnEditForm.Text = "     Edit";
            this.btnEditForm.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEditForm.UseVisualStyleBackColor = true;
            this.btnEditForm.Click += new System.EventHandler(this.btnEditForm_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDelete.Font = new System.Drawing.Font("Quicksand", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnDelete.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnDelete.Image = global::CRUD_library.Properties.Resources.icons8_delete_24;
            this.btnDelete.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDelete.Location = new System.Drawing.Point(-3, 4);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(250, 44);
            this.btnDelete.TabIndex = 3;
            this.btnDelete.Text = "     Delete";
            this.btnDelete.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.flowLayoutPanel1.Controls.Add(this.panel1);
            this.flowLayoutPanel1.Controls.Add(this.panel3);
            this.flowLayoutPanel1.Controls.Add(this.panel4);
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(250, 444);
            this.flowLayoutPanel1.TabIndex = 4;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnNewForm);
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(247, 65);
            this.panel1.TabIndex = 0;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnEditForm);
            this.panel3.Location = new System.Drawing.Point(3, 74);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(250, 55);
            this.panel3.TabIndex = 2;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnDelete);
            this.panel4.Location = new System.Drawing.Point(3, 135);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(250, 51);
            this.panel4.TabIndex = 3;
            // 
            // searchTxtBox
            // 
            this.searchTxtBox.Font = new System.Drawing.Font("Quicksand", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.searchTxtBox.Location = new System.Drawing.Point(514, 391);
            this.searchTxtBox.Name = "searchTxtBox";
            this.searchTxtBox.Size = new System.Drawing.Size(458, 30);
            this.searchTxtBox.TabIndex = 5;
            this.searchTxtBox.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.searchTxtBox_KeyPress);
            // 
            // searchBtn
            // 
            this.searchBtn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.searchBtn.Font = new System.Drawing.Font("Quicksand", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.searchBtn.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.searchBtn.Image = global::CRUD_library.Properties.Resources.icons8_search_30;
            this.searchBtn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.searchBtn.Location = new System.Drawing.Point(996, 382);
            this.searchBtn.Name = "searchBtn";
            this.searchBtn.Size = new System.Drawing.Size(151, 40);
            this.searchBtn.TabIndex = 6;
            this.searchBtn.Text = "     Search";
            this.searchBtn.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.searchBtn.UseVisualStyleBackColor = true;
            this.searchBtn.Click += new System.EventHandler(this.searchBtn_Click);
            // 
            // searchLabel
            // 
            this.searchLabel.Font = new System.Drawing.Font("Quicksand", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.searchLabel.Location = new System.Drawing.Point(301, 391);
            this.searchLabel.Name = "searchLabel";
            this.searchLabel.Size = new System.Drawing.Size(213, 44);
            this.searchLabel.TabIndex = 7;
            this.searchLabel.Text = "Search a reader by id";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1191, 444);
            this.Controls.Add(this.searchLabel);
            this.Controls.Add(this.searchBtn);
            this.Controls.Add(this.searchTxtBox);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.dataGridViewReaders);
            this.Name = "MainForm";
            this.Text = "Library System";
            this.Activated += new System.EventHandler(this.MainForm_Activated);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewReaders)).EndInit();
            this.flowLayoutPanel1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewReaders;
        private System.Windows.Forms.Button btnNewForm;
        private System.Windows.Forms.Button btnEditForm;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.TextBox searchTxtBox;
        private System.Windows.Forms.Button searchBtn;
        private System.Windows.Forms.Label searchLabel;
    }
}

