# Mission: Design Safe Shared Data Collaboration

## Outcome

You can separate code collaboration from shared datasets, design group
inheritance for approved data directories, and avoid destructive permission
workarounds.

## Concept

A shared Git working tree mixes branches, indexes, uncommitted files, and file
ownership between users. Shared datasets, checkpoints, logs, and results need a
different permission and lifecycle design.

## Worked Example

Collaborators have the minimum required access, shared data has an owner, and each developer keeps a separate Git clone.

A correct example uses these decisions:

- **How should several students collaborate on code?** Each uses a separate clone and collaborates through branches and PRs.
- **What is the safe response to a shared-folder permission problem?** Inspect owner, group, ACL, and intended boundary before making a narrow change.

## Common Trap

Using one shared Git working tree or broad recursive chmod commands to solve collaboration problems.

## Your Action

Choose permissions, ownership, write boundaries, and recovery rules for a fictional shared dataset and checkpoint collection.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Do not guess numeric group IDs or apply broad recursive commands. Ask the
storage owner to inspect the smallest affected directory. Use
[Euler storage](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/storage.md) for the canonical
setgid/default ACL procedure when Euler is the approved system.

Useful references:

- [Data Placement](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/data-placement.md)
- [Storage](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/storage.md)
- [Nas_Ideal](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/nas_ideal.md)

## Understand Before Accepting AI Output

An agent must not apply recursive permission changes based only on a pasted
path. Verify system, owner, group, inheritance, existing contents, and rollback
before any real change.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
