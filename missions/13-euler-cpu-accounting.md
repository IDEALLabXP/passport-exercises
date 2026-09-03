# Mission: Measure And Right-Size An Euler Job

## Outcome

You can interpret `sacct` and `seff`, calculate requested resources, distinguish
successful from efficient, and adjust only the next request using representative
evidence.

## Concept

Large “just in case” requests reduce availability and may wait longer without
improving a serial or I/O-bound program. A completed state alone does not prove
appropriate resource use.

## Worked Example

The proposed request follows measured utilization and does not enlarge resources merely to hide an error.

A correct example uses these decisions:

- **Which value helps estimate memory actually used?** MaxRSS, interpreted with the job steps and units.
- **A job exits immediately with a Python import error. What should you optimize first?** Fix and test the software environment before changing resources.
- **A representative serial job requested 4 CPUs, 16 GiB per CPU, and 2 hours. It completed in 20 minutes with 22% CPU efficiency and 9 GiB MaxRSS. Which next test is justified?** Test 1 CPU, 16 GiB total memory, and 45 minutes on a representative input.

## Common Trap

Treating requested memory as measured memory, or increasing every resource after a software failure.

## Your Action

Inspect the recorded tiny-job sacct and seff output, then choose a justified next CPU, memory, and time request.

**euler / bash**

```bash
read -r -p 'Job ID from the previous mission: ' job_id
sacct -X -j "$job_id" --format=JobID,State,ExitCode,Elapsed,AllocCPUS,ReqMem,MaxRSS
seff "$job_id"
```

Expected: the same completed job appears in `sacct`, followed by its
requested-versus-used efficiency summary.

The passport presents the structured questions and required confirmation in the
browser. Do not create or edit a submission JSON file by hand.

## Check Your Work

Use **Check my work** before submitting. The local verifier checks only the
bounded activity named above. A score of 80% is required, and every
safety-critical question must be correct. Failed attempts provide targeted
feedback and can be retried without penalty.

## If Blocked

Do not increase resources when fields are unclear. Use
[Euler resource optimization](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/euler-resource-optimization.md)
and ask for help for MPI/multiprocess workloads, highly variable inputs, or
disagreeing metrics.

Useful references:

- [Euler Resource Optimization](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/labs/euler-resource-optimization.md)
- [Slurm](https://github.com/IDEALLab/onboarding-IT/blob/docs/llm-agent-overhaul/docs/reference/euler/slurm.md)

## Understand Before Accepting AI Output

Verify arithmetic, per-CPU versus total memory, representativeness, and the
parallelism claim. An agent cannot infer scaling merely from CPU availability.

## Finish And Continue

When **Check my work** passes, use **Submit mission** once. The launcher
publishes only this mission's generated, sanitized submission. Continue when the
dashboard shows the trusted result; a local check alone is not a pass.
