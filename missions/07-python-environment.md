# Mission: Create A Reproducible Python Environment

## Outcome

The training project runs in a dedicated environment whose dependencies are
declared in Git while the environment directory itself remains untracked.

## Concept

Installing packages globally or into `base` makes projects interfere with one
another and prevents collaborators from reproducing the environment.

## Worked Example

Python runs from the project .venv and Git reports that .venv is ignored.

A correct example uses these decisions:

- **Should .venv be committed?** No. It is reproducible local state and must remain ignored.
- **What proves the environment is active?** The reported interpreter path is inside the project .venv.

## Common Trap

Creating the environment in Git-tracked files or installing into an unrelated global interpreter.

## Your Action

Create the project virtual environment with the platform-specific command, activate it, and run the interpreter check.

**windows / powershell**

```powershell
py -3 -m venv .venv
```

Expected: .venv is created without overwriting another path.

**macos / zsh**

```zsh
python3 -m venv .venv
```

Expected: .venv is created without overwriting another path.

**linux / bash**

```bash
python3 -m venv .venv
```

Expected: .venv is created without overwriting another path.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Do not repeatedly reinstall into `base`. Record `conda info --envs`, the Python
path, and the exact error without credentials. Use the
[reproducible Python lab](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/reproducible-python.md) or ask for
help before deleting an existing environment.

Useful references:

- [Python_Setup](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/python_setup.md)
- [Reproducible Python](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/reproducible-python.md)

## Understand Before Accepting AI Output

An agent may suggest packages that are unnecessary, unmaintained, or fetched
from an unapproved source. Review dependency purpose and project declarations
before installation.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
