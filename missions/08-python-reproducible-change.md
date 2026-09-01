# Mission: Make And Verify A Reproducible Python Change

## Outcome

You can connect a small behavior change to a regression test, run the declared
checks, inspect the diff, and explain how another contributor reproduces it.

## Why This Matters

“It works on my machine” is not research evidence. Code, dependencies, inputs,
configuration, tests, and relevant versions must be identifiable.

## Before You Start

Activate `ideal-passport` and confirm the training fixture passes its baseline
checks before editing.

## Machine And Shell

**Your computer - PowerShell, zsh, or bash in `workspace/python_project`.**

## Steps

1. Read the fixture README and source before editing.
2. Add the requested regression test.
3. Make the smallest source change that satisfies the behavior.
4. Run the project test command.
5. Inspect `git diff --check` and the source/test diff.
6. Update the evidence with actual commands and observed results.
7. Commit with a subject matching the behavior, not the tool used.

## Expected Result

The baseline and new regression tests pass, no unrelated file changes appear,
and a clean contributor can identify the environment and test command.

## Independent Verification

Temporarily review the change as if it came from someone else: read only the
diff and project declaration, then determine what behavior changed and how it
was tested. If that is unclear, improve the test, naming, or explanation.

## Evidence To Submit

Complete `evidence/python/reproducible-change.md`. Include concise command names
and results, not complete environment dumps or local caches.

## If Blocked

Return to the last passing baseline, inspect the first failing assertion, and
reduce the problem. Do not delete tests, broaden tolerances, or install random
packages merely to make the check green.

## Understand Before Accepting AI Output

If an agent explains the failure, independently inspect the affected source and
test. Do not accept a test that only repeats the implementation or a claim that
was not personally run.

## Finish And Continue

Commit and push the requested evidence. The controller queues review of the
behavior, evidence, and reproducibility statement automatically. Return later
for the result; no appointment is required. The next AI track, when assigned,
uses a comparable but different task.
