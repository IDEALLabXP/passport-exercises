# Mission: Configure Git Identity And Your Editor

## Outcome

Your Git commit identity is correct, a supported editor is available, and you
can verify the separate practice repository and branch where you will learn
Git without touching the Passport's background transport.

## Concept

Git records authorship, while GitHub authentication controls repository
access. They are separate. A correct identity and a verified branch prevent
misattributed commits and changes in the wrong location.

## Worked Example

Git and GitHub CLI are available, GitHub CLI names the intended account, and Git identity is explicit.

A correct example uses these decisions:

- **What must gh auth status confirm?** The intended GitHub account is authenticated.
- **What should you do before repairing a failed tool check?** Read the named check and use its bounded recovery step.

## Common Trap

Changing SSH keys, deleting configuration, or reinstalling everything before reading the exact failed check.

## Your Action

Select **Prepare practice folder** first, then enter the exact folder printed
by the Passport. Run the read-only tool and identity checks shown below there.
Fix only a missing name or email through the linked platform guide.

**windows / powershell**

```powershell
git --version
```

Expected: A Git version is printed.

**macos / zsh**

```zsh
git --version
```

Expected: A Git version is printed.

**linux / bash**

```bash
git --version
```

Expected: A Git version is printed.

**windows / powershell**

```powershell
gh auth status --hostname github.com
```

Expected: The intended GitHub account is named.

**macos / zsh**

```zsh
gh auth status --hostname github.com
```

Expected: The intended GitHub account is named.

**linux / bash**

```bash
gh auth status --hostname github.com
```

Expected: The intended GitHub account is named.

**windows / powershell**

```powershell
git config --get user.name
```

Expected: Your chosen commit author name is printed.

**macos / zsh**

```zsh
git config --get user.name
```

Expected: Your chosen commit author name is printed.

**linux / bash**

```bash
git config --get user.name
```

Expected: Your chosen commit author name is printed.

**windows / powershell**

```powershell
git config --get user.email
```

Expected: Your chosen commit author email is printed.

**macos / zsh**

```zsh
git config --get user.email
```

Expected: Your chosen commit author email is printed.

**linux / bash**

```bash
git config --get user.email
```

Expected: Your chosen commit author email is printed.

**windows / powershell**

```powershell
git remote -v
```

Expected: Only expected GitHub remotes appear; no password or token is embedded in a URL.

**macos / zsh**

```zsh
git remote -v
```

Expected: Only expected GitHub remotes appear; no password or token is embedded in a URL.

**linux / bash**

```bash
git remote -v
```

Expected: Only expected GitHub remotes appear; no password or token is embedded in a URL.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

If the editor is missing, install only the editor; do not clone again. If the
remote or branch is wrong, stop and run `gh passport doctor`. Do not delete the
folder, reset Git, replace SSH keys, or paste a token into the remote URL.
Use **Request help without posting secrets** on the passport dashboard if the
doctor's named recovery command does not resolve the problem. Submit one
sanitized issue and return later; the reviewer does not need to be online.

Useful references:

- [Git_Workflow](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/git_workflow.md)
- [Vscode](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/vscode.md)

## Understand Before Accepting AI Output

Do not let an AI assistant insert tokens, rewrite credential helpers, change
the remote, or switch branches without explaining the exact reason. Verify the
identity, remote, and branch yourself before accepting its claim of success.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
