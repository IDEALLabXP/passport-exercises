# Mission: Review A One-GPU Euler Plan

## Outcome

You can correct an unsafe GPU request, justify one explicit model, plan the
smallest useful smoke test, monitor bottlenecks, and define evidence required
before multi-GPU scaling.

## Concept

Dataset size does not prove multi-GPU scaling. An idle or CPU/I/O-bound GPU job
wastes scarce shared resources, and a long interactive tunnel can remain
allocated after useful work stops.

## Worked Example

The parser accepts one explicit GPU, no forced partition, and bounded companion resources; optional live smoke testing remains a separate deliberate action.

A correct example uses these decisions:

- **Which account provides the documented lab GPU access?** The approved es_fuge share.
- **What should a one-GPU starter request do?** Request one explicit GPU and bounded CPU, memory, and time.

## Common Trap

Assuming GPUs are on the public share, requesting all node CPUs for one GPU, or submitting the review fixture accidentally.

## Your Action

Correct the unsafe one-GPU Slurm fixture for the es_fuge share, choose one approved GPU model, and justify bounded CPU, memory, time, and logs. Do not submit it.


<!-- passport-snippet:euler-gpu-4090-starter -->
```bash
#SBATCH --account=es_fuge
#SBATCH --gpus=rtx_4090:1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=3G
```
<!-- /passport-snippet:euler-gpu-4090-starter -->

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 100% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Use the RTX 4090 review baseline. Do not submit duplicate jobs for multiple GPU
types or select RTX PRO 6000 merely to bypass a queue. Escalate distributed
training, unusual memory, or CUDA compatibility to the supervisor.

Useful references:

- [Euler Gpu Review](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/euler-gpu-review.md)
- [Euler Gpu](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/tracks/euler-gpu.md)
- [Slurm](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/slurm.md)
- [Euler Share](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/policy/euler-share.md)

## Understand Before Accepting AI Output

Verify that program operations, not only CUDA detection, use the GPU. You must
explain every requested resource and why adding GPUs may not help a CPU-bound
pipeline.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
