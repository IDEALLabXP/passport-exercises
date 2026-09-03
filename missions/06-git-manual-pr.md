# Mission: Complete A Manual Pull Request Loop

## Outcome

You can make one bounded change manually, inspect it, verify it, commit it with
a Conventional Commit, publish it, and inspect the resulting practice pull
request.

## Concept

Agents and IDE buttons are safer after you understand the underlying branch,
working tree, staged diff, commit, remote branch, and review boundary.

## Worked Example

The personal practice PR contains only the intended file, a Conventional Commit, and an honest verification record.

A correct example uses these decisions:

- **Which PR do you create manually in this mission?** The personal practice PR shown by the mission.
- **What must happen immediately before committing?** Inspect git diff --cached and confirm every staged change.

## Common Trap

Using the background transport PR as the exercise, or staging every file with git add . before reviewing status.

## Your Action

In the separate practice repository, make the bounded note change, inspect status and both diffs, commit it, push it, and create your first draft PR manually.

**windows / powershell**

```powershell
git status --short --branch
```

Expected: A named practice branch is shown; it is not main.

**macos / zsh**

```zsh
git status --short --branch
```

Expected: A named practice branch is shown; it is not main.

**linux / bash**

```bash
git status --short --branch
```

Expected: A named practice branch is shown; it is not main.

**windows / powershell**

```powershell
git diff -- workspace/manual_task
```

Expected: Only the intended unstaged change is shown.

**macos / zsh**

```zsh
git diff -- workspace/manual_task
```

Expected: Only the intended unstaged change is shown.

**linux / bash**

```bash
git diff -- workspace/manual_task
```

Expected: Only the intended unstaged change is shown.

**windows / powershell**

```powershell
git diff --cached --check
```

Expected: No whitespace error is reported.

**macos / zsh**

```zsh
git diff --cached --check
```

Expected: No whitespace error is reported.

**linux / bash**

```bash
git diff --cached --check
```

Expected: No whitespace error is reported.

**windows / powershell**

```powershell
git diff --cached
```

Expected: The staged diff contains only the intended file.

**macos / zsh**

```zsh
git diff --cached
```

Expected: The staged diff contains only the intended file.

**linux / bash**

```bash
git diff --cached
```

Expected: The staged diff contains only the intended file.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Do not use `git reset --hard`, broad deletion, or force push as a first repair.
Preserve `git status`, the current branch, and the diff, then use the
[first safe PR lab](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/first-safe-pr.md) recovery section or ask
for help through the non-secret dashboard issue form.

Useful references:

- [First Safe Pr](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/first-safe-pr.md)
- [Git_Workflow](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/git_workflow.md)

## Understand Before Accepting AI Output

This mission is deliberately manual. An agent may explain a Git concept but
must not perform the change, invent test output, or choose files to stage.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
