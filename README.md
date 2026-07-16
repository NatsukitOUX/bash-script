# bash-script

A collection of Bash scripting exercises, following along with the book *Black Hat Bash* (No Starch Press). Organized by chapter as the material is worked through.

## Requirements

- A Unix-like shell environment with `bash` (Linux, macOS, WSL, or Git Bash on Windows).

## Structure

### chapter1 — Bash fundamentals

| Script | Description |
| --- | --- |
| [simpel-bash-script.sh](chapter1/simpel-bash-script.sh) | Minimal "hello world" script. |
| [input_prompting.sh](chapter1/input_prompting.sh) | Prompts the user for input with `read` and prints it back. |
| [chapter1_exercice.sh](chapter1/chapter1_exercice.sh) | Takes two positional arguments, writes them with a timestamp to a file, and creates a backup copy. |
| [show_args.sh](chapter1/show_args.sh) | Demonstrates positional argument variables (`$@`, `$#`, `$*`, `$0`). |
| [special_args-in-forloop.sh](chapter1/special_args-in-forloop.sh) | Loops over all script arguments with `"$@"`. |
| [ping_with_arguments.sh](chapter1/ping_with_arguments.sh) | Pings a target host passed in as an argument. |
| [array.sh](chapter1/array.sh) | Basic array creation, indexing, and printing. |
| [local-scope-variable.sh](chapter1/local-scope-variable.sh) | Shows how `local` scopes a variable to a function. |
| [controle-operator.sh](chapter1/controle-operator.sh) | Redirection operators (`>`, `>>`, `&>`, `1>`/`2>`) and heredocs. |

### chapter2 — Conditionals and comparisons

| Script | Description |
| --- | --- |
| [string_comparison.sh](chapter2/string_comparison.sh) | Compares two strings with `[[ ]]`. |
| [integer_comparison.sh](chapter2/integer_comparison.sh) | Compares two integers with `[[ ]]`. |
| [test_if_file_exists.sh](chapter2/test_if_file_exists.sh) | Checks whether a file exists and creates it if not. |

## Usage

Make a script executable and run it directly, or invoke it with `bash`:

```bash
chmod +x chapter1/input_prompting.sh
./chapter1/input_prompting.sh

# or
bash chapter2/test_if_file_exists.sh somefile.txt
```

Scripts that take arguments (e.g. `ping_with_arguments.sh`, `chapter1_exercice.sh`, `test_if_file_exists.sh`) expect them on the command line.
