# Mission: Configure Git Identity And Your Editor

## Outcome

Your Git commit identity is correct, a supported editor is available, and you
can verify that the existing passport folder points to your personal public
fork, the central exercise repository, and your assessment branch.

## Why This Matters

Git records authorship, while GitHub authentication controls repository
access. They are separate. A correct identity and a verified branch prevent
misattributed commits and changes in the wrong location.

## Before You Start

Complete the universal core and open the existing `passport-exercises` folder
created by `gh passport start`. Do not clone the repository a second time. If
you have no local folder, run `gh passport start`; it safely creates or reuses
the expected fork, folder, branch, and draft pull request.

## Machine And Shell

Use only the block matching your computer. Run it from the existing passport
repository.

**Windows computer - PowerShell**

```powershell
& .\tools\preflight.ps1
git --version
code --version
```

**macOS computer - zsh**

```zsh
zsh tools/preflight.zsh
git --version
code --version
```

**Linux computer - bash**

```bash
bash tools/preflight.sh
git --version
code --version
```

The preflight is read-only. It reports availability and SSH configuration
syntax; it does not install, delete, or rewrite anything. A missing
`code --version` means the editor still needs installation, not that the
passport must be cloned again.

## Steps

1. If VS Code is missing, install it through the platform-specific procedure
   linked from the handbook. Reopen the terminal after installation.
2. Configure your commit identity with your real name and project-approved
   email. Replace the example values before running the commands:

```text
git config --global user.name "Your real name"
git config --global user.email "Your approved email"
```

3. Inspect the stored identity without placing credentials in a command:

```text
git config --global --get user.name
git config --global --get user.email
```

4. Open the existing folder in VS Code with `code .`, or use **File > Open
   Folder** and select the existing passport folder.
5. Verify the repository and branch:

```text
git remote -v
git status --short --branch
```

Do not paste a personal access token into a Git URL. Authentication remains in
GitHub CLI and the operating-system credential store configured during setup.

## Expected Result

Git and VS Code print versions, the stored identity belongs to you, `origin`
names `<your-github-username>/passport-exercises`, `upstream` names
`soheylm-passport-sandbox/passport-exercises`, and the status line starts with
`## onboarding/<your-github-username>`.

## Independent Verification

Close VS Code, reopen the same existing folder, and run:

```text
git rev-parse --show-toplevel
git status --short --branch
```

The first command names the folder you opened and the second still names the
assigned onboarding branch. Neither output contains a token.

## Evidence To Submit

Complete `evidence/git/tools-auth.md` with sanitized version information, the
configured name, repository name, and branch status. Remove the email address
if the reviewer does not need it. Never include credentials.

## If Blocked

If the editor is missing, install only the editor; do not clone again. If the
remote or branch is wrong, stop and run `gh passport doctor`. Do not delete the
folder, reset Git, replace SSH keys, or paste a token into the remote URL.
Use **Request help without posting secrets** on the passport dashboard if the
doctor's named recovery command does not resolve the problem. Submit one
sanitized issue and return later; the reviewer does not need to be online.

## Understand Before Accepting AI Output

Do not let an AI assistant insert tokens, rewrite credential helpers, change
the remote, or switch branches without explaining the exact reason. Verify the
identity, remote, and branch yourself before accepting its claim of success.

## Finish And Continue

Commit only the requested evidence and bounded exercise files on the assigned
branch. Review `git diff` before every commit and return to `gh passport open`
for the next controller-verified mission.
