# Mission: Start And Resume Your Passport

## Outcome

You can identify your assigned route, distinguish local navigation from an
official result, and reopen the passport without searching browser history.

## Concept

The passport uses several locations for different purposes. The local browser
remembers where you were, while the trusted GitHub check records whether a
submitted mission passed. A locally checked box is therefore not an official
result.

## Worked Example

The same route reopens locally and GitHub remains the authority for submitted completion.

A correct example uses these decisions:

- **Which source proves that submitted work passed?** The trusted GitHub controller result for the submitted commit.
- **How do you reopen the real passport later?** Run gh passport open; the launcher uses its local registry.

## Common Trap

Treating a remembered browser page as proof that a mission passed.

## Your Action

Confirm the generated route. Then stop the local passport with `Ctrl+C` in its
terminal and run `gh passport open` from a different folder. The same route
must reopen.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

If `gh passport open` stops, run `gh passport doctor`. Keep only its non-secret
check names and statuses. Do not delete the Passport folder, regenerate SSH
keys, reset Git, or change file permissions.
Use **Request help without posting secrets** on the dashboard if the named
recovery step does not resolve the problem. The public issue is assigned to
the lab maintainer for asynchronous triage; nobody needs to be online when you
submit it.

Use the [glossary](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/glossary.md) when a term is unfamiliar.

Useful references:

- [Readme](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/README.md)
- [Glossary](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/glossary.md)

## Understand Before Accepting AI Output

An AI tool cannot determine which systems, project data, or responsibilities
your supervisor approved. Do not let it invent access, edit `passport.json`,
or claim that the trusted check passed when you did not observe that result.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
