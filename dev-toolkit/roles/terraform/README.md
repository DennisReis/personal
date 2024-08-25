# Terraform

## TO DO

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \\ngpg --dearmor | \\nsudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null\n
gpg --no-default-keyring \\n--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \\n--fingerprint\n
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \\nhttps://apt.releases.hashicorp.com $(lsb_release -cs) main" | \\nsudo tee /etc/apt/sources.list.d/hashicorp.list\n
sudo apt update
sudo apt-get install terraform
```
