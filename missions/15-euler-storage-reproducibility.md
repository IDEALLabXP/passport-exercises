# Mission: Place Euler Data And Freeze Run Inputs

## Outcome

You can choose durable, working, scratch, and node-local locations, preserve
production run identity, and prevent mutable files from changing under queued
or running jobs.

## Concept

`$SCRATCH` is not a backup and `$TMPDIR` disappears with the job. Slurm captures
the batch script, not every external code, configuration, model, or input file
it references.

## Worked Example

The plan separates Git, approved Euler storage, scratch, and durable results and records enough inputs to rerun the job.

A correct example uses these decisions:

- **What is Euler scratch for?** Temporary high-throughput files that can be recreated.
- **What must a reproducible run identify?** Code revision, environment, immutable inputs, parameters, resources, and outputs.

## Common Trap

Keeping the only copy in scratch, processing high-I/O workloads directly on an external NAS mount, or changing inputs in place.

## Your Action

Place fictional code, immutable inputs, temporary scratch, durable outputs, environment metadata, and logs in a reproducible run plan.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Do not invent permissions or recursively change a shared tree. Ask the data
owner about authoritative storage and use
[Euler storage](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/storage.md) for lifecycle and
collaboration recovery.

Useful references:

- [Storage](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/storage.md)
- [Slurm](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/slurm.md)
- [Data Placement](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/data-placement.md)

## Understand Before Accepting AI Output

Inspect every source and destination before copying or deleting. An agent must
not assume a temporary path is backed up or that a successful transfer is a
backup.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
