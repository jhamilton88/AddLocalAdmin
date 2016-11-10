using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Diagnostics;
using System.ComponentModel;





namespace AddLocalAdmin
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();


        }


            // On button click event it directs it to the addAdmin function.
        private void addButton_Click(object sender, RoutedEventArgs e)
        {

            addAdmin();
        }

			// On button click event it directs it to the removeAdmin function.
        private void removeButton_Click(object sender, RoutedEventArgs e)
        {

            removeAdmin();
        }

        public static int lineCount = 0;
        public static StringBuilder output = new StringBuilder();


            // On the button click this will clear any text in the results text box, grab the information from the 3 user input boxes,
            // turns on and runs the powershell command, and displays the results in the results text box.
        public void addAdmin()
        {

            resultsBox.Text = string.Empty; // This is not working. It should clear the text inside of the results box.

            string domainName = domainNameBox.Text;
            string computerName = computerNameBox.Text;
            string userName = userNameBox.Text;
            string psResults = null;
            string addAdminCmd = @"-noprofile -executionpolicy bypass -file C:\PowerShell\ADAccountasLocalAdministrator.ps1 -Computer " + computerName + " -Trustee " + userName;
            
            Process addAdminProcess = new Process();
            ProcessStartInfo adminStartInfoProcess = new ProcessStartInfo();
            adminStartInfoProcess.CreateNoWindow = true;
            adminStartInfoProcess.FileName = @"powershell.exe";
            adminStartInfoProcess.Arguments = addAdminCmd;
            adminStartInfoProcess.UseShellExecute = false;
            adminStartInfoProcess.RedirectStandardOutput = true;
            addAdminProcess.OutputDataReceived += new DataReceivedEventHandler((sender, e) =>
            {
                // Prepend line numbers to each line of the output.
                if (!String.IsNullOrEmpty(e.Data))
                {
                    output.Append("\n" + e.Data);
                }
            });
           
            addAdminProcess.StartInfo = adminStartInfoProcess;
            addAdminProcess.Start();
            addAdminProcess.BeginOutputReadLine();
            addAdminProcess.WaitForExit();           
            psResults = output.ToString();
            resultsBox.Text = psResults;
            addAdminProcess.WaitForExit();
            addAdminProcess.Close();
        }

        public void removeAdmin()
        {

            resultsBox.Text = string.Empty; // This is not working. It should clear the text inside of the results box.

            string domainName = domainNameBox.Text;
            string computerName = computerNameBox.Text;
            string userName = userNameBox.Text;
            string psResults = null;
            string removeAdminCmd = @"-noprofile -executionpolicy bypass -file C:\PowerShell\RemoveAccountasLocalAdministrator.ps1 -Computer " + computerName + " -Trustee " + domainName + @"\" + userName;

            Process removeAdminProcess = new Process();
            ProcessStartInfo removeAdminStartInfo = new ProcessStartInfo();
            removeAdminStartInfo.CreateNoWindow = true;
            removeAdminStartInfo.FileName = @"powershell.exe";
            removeAdminStartInfo.Arguments = removeAdminCmd;
            removeAdminStartInfo.UseShellExecute = false;
            removeAdminStartInfo.RedirectStandardOutput = true;
            removeAdminProcess.OutputDataReceived += new DataReceivedEventHandler((sender, e) =>
            {
                // Adds line numbers to each line of the output.
                if (!String.IsNullOrEmpty(e.Data))
                {
                    output.Append("\n" + e.Data);
                }
            });

            removeAdminProcess.StartInfo = removeAdminStartInfo;
            removeAdminProcess.Start();
            removeAdminProcess.BeginOutputReadLine();
            removeAdminProcess.WaitForExit();
            psResults = output.ToString();
            resultsBox.Text = psResults;
            removeAdminProcess.WaitForExit();
            removeAdminProcess.Close();
        }


    }

}



    




