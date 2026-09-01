# Mission: Review A One-GPU Euler Plan

## Outcome

You can correct an unsafe GPU request, justify one explicit model, plan the
smallest useful smoke test, monitor bottlenecks, and define evidence required
before multi-GPU scaling.

## Why This Matters

Dataset size does not prove multi-GPU scaling. An idle or CPU/I/O-bound GPU job
wastes scarce shared resources, and a long interactive tunnel can remain
allocated after useful work stops.

## Before You Start

Pass Euler CPU first and obtain supervisor confirmation that the project has a
real GPU implementation. This mission is review-only; do not submit a GPU job.

## Machine And Shell

**Your computer - text editor.** The `.slurm.txt` fixture is intentionally
unsafe training material and must not be submitted.

## Steps

Correct the fixture to use one supported explicit model and `es_fuge`:

<!-- passport-snippet:euler-gpu-4090-starter -->
```bash
#SBATCH --account=es_fuge
#SBATCH --gpus=rtx_4090:1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=3G
```
<!-- /passport-snippet:euler-gpu-4090-starter -->

An RTX 3090 may be used as the general fallback by changing only the GPU type
to `rtx_3090`. The RTX PRO 6000 is special-purpose and requires a documented
need such as GPU memory beyond 24 GiB plus verified CUDA 13 compatibility.

Add a short measured time limit, logs, environment setup, executable command,
monitoring plan, and checkpoint behavior. Do not force a partition unless the
current canonical policy explicitly requires one.

## Expected Result

The plan uses one GPU, `es_fuge`, bounded time, logs, monitoring, checkpoints,
and a measurable criterion for scaling. The CPU/memory profile is recognized as
a starter value to measure, not a universal requirement.

## Independent Verification

Explain the next investigation for low GPU utilization with saturated CPUs,
low storage throughput, full GPU memory, and only 1.1x throughput on two GPUs.
The answer must investigate bottlenecks rather than automatically add GPUs.

## Evidence To Submit

Complete `evidence/euler/gpu-review.md` and correct the `.slurm.txt` fixture. No
live GPU output, allocation, or account history is required.

## If Blocked

Use the RTX 4090 review baseline. Do not submit duplicate jobs for multiple GPU
types or select RTX PRO 6000 merely to bypass a queue. Escalate distributed
training, unusual memory, or CUDA compatibility to the supervisor.

## Understand Before Accepting AI Output

Verify that program operations, not only CUDA detection, use the GPU. You must
explain every requested resource and why adding GPUs may not help a CPU-bound
pipeline.

## Finish And Continue

Human review can grant the initial GPU endorsement without consuming a GPU. A
later project-specific smoke test is optional, short, and supervisor-approved.
