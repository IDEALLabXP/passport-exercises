# Mission: Verify Your Approved NAS Workspace

## Outcome

You can locate your approved NAS project folder and verify bounded read/write
access without exposing its real path in a public repository.

## Concept

The NAS is durable shared project storage. Access is limited by project,
supervisor, and user boundaries; it is not a general shared working directory
and it is not a replacement for GitHub.

## Worked Example

The bounded write/read/delete round trip succeeds only inside the approved username folder; the raw path is never submitted publicly.

A correct example uses these decisions:

- **Where may you create project data on the NAS?** Inside the approved supervisor project folder and your ETH-username subfolder.
- **Should the NAS hold one shared Git working tree?** No; keep separate clones and use GitHub for code collaboration.

## Common Trap

Using the NAS as a shared Git working tree, testing at the share root, exposing the real path publicly, or leaving the probe file behind.

## Your Action

Enter the supervisor-approved NAS project root locally, let the verifier confirm the allowed boundary, then create, read, and remove one random test file inside your ETH-username folder.

Do not type the path into a public answer. Enter it only in the local passport
field labelled **kept on this computer**.

## Check Your Work

Use **Check my work**. The verifier must confirm the boundary, create and read
its random probe, remove the probe, and find no residual file. Every safety
question must be correct.

## If Blocked

Stop if the approved supervisor folder is unknown, another person's folder is
shown, the path is read-only when write access is expected, or the cleanup
fails. Keep the exact path private and use the lab's private NAS support path.
Do not change broad permissions or test at the share root.

Useful references:

- [NAS guide](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/onboarding_IT_guides/nas_ideal.md)
- [Laptop, NAS, Blade, and Euler](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/core/environments-overview.md)

## Understand Before Accepting AI Output

An agent must not choose a project root, widen permissions, publish the real
path, or claim that the probe was removed without local verification.

## Finish And Continue

Submit only the generated sanitized receipt. The controller verifies its shape
and challenge digest; it never receives the NAS path. Continue when the trusted
GitHub result passes.
