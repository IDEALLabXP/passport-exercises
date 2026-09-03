# Mission: Use Blade For GUI Work Without Losing Data

## Outcome

You can reach the shared Windows Blade server, use it for appropriate GUI and
prototype work, place durable data under the assigned project share, use `D:`
only temporarily, and avoid `C:` and personal profile folders.

## Concept

Blade is a shared Windows engineering workstation, not an HPC cluster or
permanent personal drive. Data left only on local `C:` or temporary `D:` can be
lost, while heavy computation can degrade every interactive user.

## Worked Example

The durable copy remains on P:, D: is clean, C: was not used, and no heavy unattended compute was started.

A correct example uses these decisions:

- **Where does durable Blade project work belong?** In the approved P: supervisor and username folder.
- **What is Blade primarily for?** Interactive Windows GUI software and light prototyping.

## Common Trap

Keeping the only copy on C: or D:, treating Blade as a general ML server, or exposing the real mapped path in the public submission.

## Your Action

Connect by RDP, confirm the Blade host and GPU, create a harmless temporary receipt on D:, copy it to your approved P: username folder, verify it, and remove the D: copy.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 100% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Check VPN, exact hostname, account format, and assigned supervisor folder. Do
not use another person's saved credentials, install remote services, or select
another mapped drive. Use the
[remote access guide](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/remote.md).

Useful references:

- [Remote](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/remote.md)
- [Nas_Ideal](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/nas_ideal.md)

## Understand Before Accepting AI Output

An agent must not install system features, choose another drive, or run a heavy
local workload because Euler access is inconvenient. Verify host, storage, and
shared-resource impact.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
