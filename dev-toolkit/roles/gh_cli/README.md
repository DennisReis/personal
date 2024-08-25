# Github CLI

## TO DO

```bash
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \\n&& sudo mkdir -p -m 755 /etc/apt/keyrings \\n&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \\n&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \\n&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \\n&& sudo apt update \\n&& sudo apt install gh -y
```
