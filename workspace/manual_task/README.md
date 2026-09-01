# Manual Git Task

Complete this task without an AI agent.

1. Open `project-note.md`.
2. Add a `## Verification` heading.
3. Under it, add one sentence saying that the staged diff must be reviewed
   before publishing.
4. Verify the heading from the repository root:

```bash
git grep -n "^## Verification$" -- workspace/manual_task/project-note.md
git diff --check
```

Do not change this README. The task is intentionally small so the evidence is
about the Git loop rather than subject expertise.
