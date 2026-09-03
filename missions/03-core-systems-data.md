# Mission: Map Systems And Research Data

## Outcome

You can place code, durable research data, temporary files, GUI work, and
compute intentionally instead of treating every available drive or service as
interchangeable.

## Concept

Git is not a data archive, scratch is not a backup, a laptop is not a shared
compute node, and an AI provider is not automatically approved for unpublished
material. Correct placement prevents data loss, leakage, and blocked projects.

## Worked Example

The map separates source control, durable storage, temporary storage, GUI access, and scheduled computation.

A correct example uses these decisions:

- **Where does maintained source code belong?** In an approved GitHub repository.
- **Where should a heavy batch computation run?** In a bounded Slurm allocation on Euler or another approved compute system.
- **Where should an approved collaborative dataset remain authoritative?** In the supervisor-approved durable project location on NAS or another named project store.
- **What may be placed in scratch storage?** Temporary high-throughput files that can be recreated from recorded inputs.
- **Where should you use an approved Windows-only engineering GUI?** On Blade for interactive GUI work, while heavy batch computation uses an approved compute system.
- **What project context may you send to an AI service during onboarding?** Only the fictional fixture provided by the mission, unless the real data owner approved the exact service and content.

## Common Trap

Choosing a location because it is convenient today rather than because its ownership, backup, and lifecycle fit the data.

## Your Action

Place each fictional code, dataset, temporary output, GUI task, and compute task on the appropriate system.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Do not guess a storage path or AI approval. Record the unresolved decision and
ask the project information owner or supervisor. The
[data and AI policy](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/policy/data-and-ai.md) defines the escalation
boundary.

Useful references:

- [Environments Overview](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/core/environments-overview.md)
- [Data And Ai Safety](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/core/data-and-ai-safety.md)
- [Data And Ai](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/policy/data-and-ai.md)

## Understand Before Accepting AI Output

Zero-data-retention marketing does not decide whether project material may be
uploaded. The information owner, ETH policy, lab policy, account terms, and
data classification all still apply.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
