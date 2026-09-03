# Mission: Make And Verify A Reproducible Python Change

## Outcome

You can connect a small behavior change to a regression test, run the declared
checks, inspect the diff, and explain how another contributor reproduces it.

## Concept

“It works on my machine” is not research evidence. Code, dependencies, inputs,
configuration, tests, and relevant versions must be identifiable.

## Worked Example

The hidden behavior check and the visible tests pass without committing the environment or generated files.

A correct example uses these decisions:

- **When may you record that tests passed?** After you personally ran the named test command and observed success.
- **What belongs in the commit?** Source, tests, and declared dependencies needed to reproduce the change.

## Common Trap

Accepting a passing command from an agent without personally running it in the intended environment.

## Your Action

Correct the bounded Python function, add the missing test, run the project test suite inside .venv, and review the diff.

**windows / powershell**

```powershell
.\\.venv\\Scripts\\python.exe -m unittest discover -s tests -v
```

Expected: The visible project tests pass in the project environment.

**macos / zsh**

```zsh
./.venv/bin/python -m unittest discover -s tests -v
```

Expected: The visible project tests pass in the project environment.

**linux / bash**

```bash
./.venv/bin/python -m unittest discover -s tests -v
```

Expected: The visible project tests pass in the project environment.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Return to the last passing baseline, inspect the first failing assertion, and
reduce the problem. Do not delete tests, broaden tolerances, or install random
packages merely to make the check green.

Useful references:

- [Reproducible Python](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/reproducible-python.md)
- [Code Contributor](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/tracks/code-contributor.md)

## Understand Before Accepting AI Output

If an agent explains the failure, independently inspect the affected source and
test. Do not accept a test that only repeats the implementation or a claim that
was not personally run.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
