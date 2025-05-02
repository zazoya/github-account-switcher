# GitHub Account Switcher

A simple shell script (`git_switch.sh`) to help you **switch between multiple GitHub accounts** using Git Credential Manager. It:

- Logs you out of the currently stored GitHub credentials.
- Logs you into a new GitHub account using a personal access token (PAT).
- Updates your global Git config with the new username and email.

---

## 🛠️ Requirements

- Git Credential Manager (`git-credential-manager`)
- Git installed
- Bash (Linux/macOS or Git Bash on Windows)

---

## 🚀 Usage

1. **Clone this repository:**

```bash
git clone https://github.com/YOUR_USERNAME/github-account-switcher.git
cd github-account-switcher
Duplicate the git_switch.sh script for each GitHub account you want to switch between:

bash
Copy
Edit
cp git_switch.sh git_switch_account1.sh
cp git_switch.sh git_switch_account2.sh
Open each duplicated script and edit the following variables:

GITHUB_USERNAME

GITHUB_EMAIL

GITHUB_TOKEN

Alternatively, you can modify the script to prompt for the token interactively for better security.

Make your script executable:

bash
Copy
Edit
chmod +x git_switch_account1.sh
Run the script to switch accounts:

bash
Copy
Edit
./git_switch_account1.sh
