curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg:
  cmd.run
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/:
  cmd.run
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list':
  cmd.run


apt-transport-https:
  pkg.installed
sudo apt-get update
  cmd.run
code:
  pkg.installed
  
