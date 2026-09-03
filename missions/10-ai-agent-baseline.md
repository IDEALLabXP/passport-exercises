# Mission: Use A Safe Agent Loop After The Manual Baseline

## Outcome

You can bound an agent task, control context and commands, review the diff,
verify the result personally, and reject a plausible but inferior suggestion.

## Concept

An agent can read files, edit code, execute commands, and publish changes. It is
not merely a model or chatbot, and fluent output does not transfer
responsibility away from the account owner.

## Worked Example

The fixture is corrected, the canary remains unchanged, the bounded verifier
passes, and the submission records human review rather than a transcript.

A correct example uses these decisions:

- **What is a safe agent task?** One bounded outcome with explicit files, constraints, and verification.
- **Who verifies the final diff and tests?** You do, even if the agent reports success.

## Common Trap

Granting a broad task, sharing protected data, or accepting a claimed test result without checking the diff and rerunning it.

## Your Action

Give an agent one bounded fictional task, inspect every changed file and command, reject one unsuitable suggestion, then run the checks yourself.

**windows / powershell**

```powershell
git status --short -- workspace/agent_task
```

Expected: Only `workspace/agent_task/storage-plan.md` is modified.

**macos / zsh**

```zsh
git status --short -- workspace/agent_task
```

Expected: Only `workspace/agent_task/storage-plan.md` is modified.

**linux / bash**

```bash
git status --short -- workspace/agent_task
```

Expected: Only `workspace/agent_task/storage-plan.md` is modified.

**windows / powershell**

```powershell
git diff -- workspace/agent_task
```

Expected: Only the intended storage-plan change is shown; canary files are untouched.

**macos / zsh**

```zsh
git diff -- workspace/agent_task
```

Expected: Only the intended storage-plan change is shown; canary files are untouched.

**linux / bash**

```bash
git diff -- workspace/agent_task
```

Expected: Only the intended storage-plan change is shown; canary files are untouched.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Start a new bounded agent thread if context has become inconsistent. Return to
the clean baseline when edits spread outside the fixture. Use the
[manual versus agent lab](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/manual-vs-agent.md) for recovery.

Useful references:

- [Manual Vs Agent](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/manual-vs-agent.md)
- [Agents And Interfaces](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/ai/agents-and-interfaces.md)
- [Data And Ai](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/policy/data-and-ai.md)

## Understand Before Accepting AI Output

You must understand the changed behavior, tests, files, commands, data sent,
service used, and likely cost. Passing output without this explanation is not a
pass.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
