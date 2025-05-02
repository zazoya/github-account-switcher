# GitHub Account Switcher

A simple shell script to switch between GitHub accounts using Git Credential Manager.  
The script handles:

- Logging out from the currently stored GitHub credentials.
- Logging in to a new account using a Personal Access Token (PAT).
- Updating Git's global `user.name` and `user.email`.

---

## 📁 File

The script file is named: `git_switch.sh`

> 💡 **Important:**  
> Duplicate this file for each GitHub account you use.  
> For example:

```bash
cp git_switch.sh git_personal.sh
cp git_switch.sh git_work.sh
````

---

## 🔧 Requirements

* [Git Credential Manager](https://github.com/GitCredentialManager/git-credential-manager)
* Git installed
* Bash (Linux/macOS or Git Bash on Windows)

---

## 🚀 How to Use

1. **Edit the duplicated script file** and fill in the following:

```bash
GITHUB_USERNAME="your-github-username"
GITHUB_EMAIL="your-email@example.com"
GITHUB_TOKEN="your-personal-access-token"
```

Alternatively, use secure prompting:

```bash
read -sp "Enter your GitHub Personal Access Token: " GITHUB_TOKEN
```

2. **Make the script executable**:

```bash
chmod +x git_personal.sh
```

3. **Run the script** to switch to that GitHub account:

```bash
./git_personal.sh
```
