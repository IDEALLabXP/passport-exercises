# Mission: Submit And Control A Tiny Euler CPU Job

## Outcome

You can distinguish login from compute nodes, submit one tiny CPU job with
Slurm, inspect it, cancel it, and find its logs without computing on the login
node.

## Concept

Euler login nodes are shared control points. Resource-intensive programs belong
in Slurm allocations, where CPU, memory, time, logs, and ownership are explicit.

## Worked Example

The job completes on a compute node with one CPU, 1 GiB per CPU, no GPU, a zero exit code, and bounded logs.

A correct example uses these decisions:

- **Where does the actual computation run?** On a Slurm-allocated compute node.
- **The job is absent from squeue. What next?** Use sacct and inspect the job logs; it may already have finished.

## Common Trap

Running work on the login node, resubmitting because squeue is empty, or losing the job ID before checking sacct.

## Your Action

Submit the provided two-minute, one-CPU script once; capture its job ID; inspect
`squeue`; then inspect its output, `sacct`, and `seff` after completion. Keep the
same Euler Bash terminal open so that `$job_id` remains available.

First create and inspect the script. This does not submit a job.

<!-- passport-snippet:euler-cpu-tiny-request -->
```bash
mkdir -p "$HOME/passport-euler/logs"
cd "$HOME/passport-euler"
cat > first-job.slurm <<'EOF'
#!/usr/bin/env bash
#SBATCH --job-name=passport-cpu
#SBATCH --account=es_fuge
#SBATCH --time=00:02:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

set -euo pipefail
echo "job_id=$SLURM_JOB_ID"
echo "host=$(hostname)"
echo "cpus=$SLURM_CPUS_PER_TASK"
for number in 1 2 3 4 5; do
  printf '%s squared is %s\n' "$number" "$((number * number))"
done
EOF
bash -n first-job.slurm
sed -n '1,80p' first-job.slurm
```
<!-- /passport-snippet:euler-cpu-tiny-request -->

Expected: the complete bounded script is printed with account `es_fuge`, one
CPU, 1 GiB per CPU, and a two-minute limit.

Then submit it exactly once:

```bash
cd "$HOME/passport-euler" || exit 1
job_id="$(sbatch --parsable first-job.slurm)"
printf 'Submitted job: %s\n' "$job_id"
```

Expected: a numeric job ID is printed once.

Observe the queue. A header without a job row can mean the tiny job already
finished; it does not mean you should submit another one.

```bash
squeue -j "$job_id"
```

Expected: the job is pending or running, or only the header remains.

After the job leaves `squeue`, inspect its authoritative accounting row:

```bash
sacct -X -j "$job_id" --format=JobID,User,Account,State,ExitCode,Elapsed,AllocCPUS,ReqMem,MaxRSS
```

Expected: the main job is owned by you, uses `es_fuge`, and eventually shows
`COMPLETED` with exit code `0:0`, one allocated CPU, and the bounded memory
request. If it is still pending or running, wait; do not resubmit.

```bash
seff "$job_id"
```

Expected: the report names the same job and shows its CPU and memory use.

```bash
grep -Fx '5 squared is 25' "$HOME/passport-euler/logs/passport-cpu_${job_id}.out"
```

Expected: exactly `5 squared is 25` is printed.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 100% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

For an invalid account, stop and check `my_share_info`. For a pending job,
inspect `myjobs -j "$job_id"` instead of submitting duplicates. Read the first
meaningful error before changing resources. Use the
[first Euler job lab](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/euler-first-job.md) for recovery.

Useful references:

- [Euler First Job](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/euler-first-job.md)
- [Slurm](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/slurm.md)
- [Euler Share](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/policy/euler-share.md)

## Understand Before Accepting AI Output

Personally read the script, record the real job ID, know how to cancel it, and
inspect output and accounting. An agent must not submit or enlarge the job.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
