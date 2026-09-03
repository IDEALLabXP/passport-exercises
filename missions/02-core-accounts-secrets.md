# Mission: Protect Accounts And Secrets

## Outcome

You can protect GitHub and ETH access, distinguish public from private SSH-key
material, and respond safely if a credential is exposed.

## Concept

Commands run under your identity. A leaked token or private key may provide
access to private repositories, research data, or shared compute even when no
password was disclosed.

## Worked Example

Every credential-critical answer is correct before the mission can pass.

A correct example uses these decisions:

- **A token may have been exposed. What comes first?** Revoke or rotate it, then report through the private incident path.
- **Which SSH file may be shared with a service?** Only the public key ending in .pub.
- **How should you verify GitHub MFA without exposing a secret?** Check the authentication status in your own GitHub security settings; never submit a recovery code.

## Common Trap

Pasting a real token, private key, recovery code, or screenshot to prove that it exists.

## Your Action

Classify the account and secret scenarios, then choose the safe response for each one.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 100% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

If you suspect a real exposure, stop the exercise and follow
[Incidents and getting help](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/core/incidents-and-help.md). Do not
post the secret in a GitHub issue or ask an AI tool to inspect it.

Useful references:

- [Accounts And Security](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/core/accounts-and-security.md)
- [Incidents And Help](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/core/incidents-and-help.md)

## Understand Before Accepting AI Output

An AI-generated cleanup command may destroy evidence without revoking the
credential. Verify the issuing service, scope, and incident path yourself.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
