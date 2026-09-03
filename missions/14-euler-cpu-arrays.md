# Mission: Cap And Calculate Euler Job Arrays

## Outcome

You can add an explicit concurrency cap, validate one representative task,
calculate aggregate resources across overlapping submissions, and cancel failed
or duplicate arrays.

## Concept

Array size is not concurrency. An uncapped array can make many tasks eligible
simultaneously, and several individually capped arrays can still exceed a safe
aggregate request.

## Worked Example

The deterministic parser accepts the bounded array and no command submits it to Euler.

A correct example uses these decisions:

- **What does %4 mean in --array=0-31%4?** At most four array tasks may run concurrently.
- **Which placeholders distinguish array logs?** %A for the parent job and %a for the task index.

## Common Trap

Submitting a large array before adding %N, or using %j so tasks overwrite or obscure one another.

## Your Action

Correct the supplied Slurm array fixture so it has an explicit % concurrency cap and unique parent/task log names.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 100% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Reduce the cap to `%1` and validate a representative input. If many tasks fail
identically, cancel the array and debug one task. Use the
[job arrays lab](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/euler-job-arrays.md) for dependent or
heterogeneous workloads.

Useful references:

- [Euler Job Arrays](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/euler-job-arrays.md)
- [Slurm](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/slurm.md)

## Understand Before Accepting AI Output

Calculate concurrency yourself and include other submissions. A personal or
lab limit is a ceiling, not a target for an agent to consume.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
