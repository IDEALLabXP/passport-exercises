# Mission: Establish Safe Euler SSH Access

## Outcome

Password access is proven first, a dedicated passphrase-protected key is
created without overwriting existing keys, only its `.pub` file is installed,
key-only authentication succeeds, and a validated `euler` alias preserves
unrelated SSH configuration.

## Concept

Generating keys cannot repair missing Euler entitlement or a wrong username.
Testing password access first separates account problems from key problems.
Dedicated filenames and backups prevent accidental damage to other SSH hosts.

## Worked Example

Key-only SSH prints config-ok; IdentityFile names a private key, never a .pub file, and no existing key was overwritten.

A correct example uses these decisions:

- **Which file must IdentityFile reference?** The private key path without .pub.
- **What is the safe default when a target key or config already exists?** Stop, back it up, inspect it, and avoid overwriting.

## Common Trap

Running PowerShell at an Euler Bash prompt, concatenating Host blocks, or pointing IdentityFile at the public .pub key.

## Your Action

Use the read-only SSH preflight first. If a key is missing, follow the no-overwrite platform procedure, preview the config, validate with ssh -G, then test key-only access.

**windows / powershell**

```powershell
ssh -G euler | Select-Object -First 40
```

Expected: OpenSSH parses the configuration without an error.

**windows / powershell**

```powershell
ssh -o PreferredAuthentications=publickey -o PasswordAuthentication=no euler "echo config-ok"
```

Expected: After the key passphrase, the remote command prints config-ok without an ETH password prompt.

**macos / zsh**

```zsh
ssh -G euler | sed -n '1,40p'
```

Expected: OpenSSH parses the configuration without an error.

**macos / zsh**

```zsh
ssh -o PreferredAuthentications=publickey -o PasswordAuthentication=no euler "echo config-ok"
```

Expected: After the key passphrase, the remote command prints config-ok without an ETH password prompt.

**linux / bash**

```bash
ssh -G euler | sed -n '1,40p'
```

Expected: OpenSSH parses the configuration without an error.

**linux / bash**

```bash
ssh -o PreferredAuthentications=publickey -o PasswordAuthentication=no euler "echo config-ok"
```

Expected: After the key passphrase, the remote command prints config-ok without an ETH password prompt.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 100% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Stop at the first failed gate. Do not regenerate repeatedly, overwrite keys,
replace the whole SSH config, or loosen permissions broadly. Use
[Euler SSH troubleshooting](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/troubleshooting.md)
and share only the exact error plus sanitized `ssh -G` fields.

Useful references:

- [Access And Ssh](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/access-and-ssh.md)
- [Troubleshooting](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/troubleshooting.md)

## Understand Before Accepting AI Output

Inspect every path and backup before accepting an SSH repair. A `.pub` file in
`IdentityFile`, concatenated host blocks, or PowerShell pasted into Euler Bash
are configuration errors, not reasons to delete all SSH state.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
