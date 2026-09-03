# Mission: Choose And Configure An AI Access Route

## Outcome

You select an available AI route without assuming the lab pays, understand the
cost and data boundaries, and keep credentials out of Git and prompts.

## Concept

Models, providers, agents, interfaces, and tool protocols are different
components. Account ownership, billing, model access, and data terms can change
independently.

## Worked Example

The components are classified correctly and no credential appears in a file, prompt, screenshot, or Git diff.

A correct example uses these decisions:

- **What is OpenRouter in this stack?** A provider or gateway for model access, routing, billing, and limits.
- **Where may an API key be stored?** In the supported operating-system keychain or approved secret store.

## Common Trap

Calling OpenRouter an agent, confusing a model with an IDE, or pasting an API key into settings tracked by Git.

## Your Action

Identify the model, provider or gateway, agent harness, interface, and tool protocol in the fictional setup, then configure one approved access route without storing a key in the repository.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 100% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Use the offline route. Purchasing access is never a recovery requirement. For
technical symptoms, use [AI-agent troubleshooting](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/troubleshooting/ai-agents.md).

Useful references:

- [Readme](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/ai/README.md)
- [Vscode Copilot Student](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/ai/vscode-copilot-student.md)
- [Zed Openrouter](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/ai/zed-openrouter.md)
- [Cost Context And Failures](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/ai/cost-context-and-failures.md)

## Understand Before Accepting AI Output

Budget limits reduce financial exposure but do not prove data approval,
correctness, or safe execution. You remain responsible for charges on a
personal account and for every accepted command and diff.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
