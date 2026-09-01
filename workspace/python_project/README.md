# Python Reproducibility Task

The function in `passport_example.py` estimates total requested memory from a
CPU count and memory per CPU. Its existing test passes only because it uses one
CPU.

1. Run the baseline test:

```bash
python -m unittest discover -s tests -v
```

2. Add a regression test using more than one CPU.
3. Make the smallest implementation correction.
4. Run the complete test command again.
5. Review `git diff --check` and the source/test diff.

The project uses only the Python standard library. Do not add a dependency.
