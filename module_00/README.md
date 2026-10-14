# Module 00 - Growing Code

An introductory module to Python fundamentals for the 42 Piscine Python curriculum, focusing on basic syntax, user input, control flow, functions, loops, recursion, and static typing.

---

## 📋 Module Overview

| Exercise | Function / File | Description | Concepts Covered |
| :--- | :--- | :--- | :--- |
| **ex0** | `ft_hello_garden.py` | Display greeting to the community | Standard output, basic function definition |
| **ex1** | `ft_garden_name.py` | Prompt for garden name and status | User input (`input()`), string interpolation |
| **ex2** | `ft_plot_area.py` | Calculate rectangular plot area | Type casting (`int()`), arithmetic operations |
| **ex3** | `ft_harvest_total.py` | Calculate 3-day harvest total | Multi-input accumulation, arithmetic |
| **ex4** | `ft_plant_age.py` | Check if plant is ready for harvest | Conditional logic (`if` / `else`) |
| **ex5** | `ft_water_reminder.py` | Check watering schedule | Comparison operators, conditionals |
| **ex6** | `ft_count_harvest_iterative.py`<br>`ft_count_harvest_recursive.py` | Count days until harvest | Iteration (`for` loop) vs Recursion |
| **ex7** | `ft_seed_inventory.py` | Manage inventory with unit checks | Function parameters, strict type hints |

---

## ⚙️ Requirements & Standards

* **Python Version:** 3.10+
* **Style Guide:** Strict [PEP 8](https://peps.python.org/pep-0008/) compliance verified with `flake8` (`--max-line-length=80`).
* **Type Checking:** Strict static type checking verified with `mypy`.
* **Execution Rules:** No executable code in the global scope of submission files; all logic is encapsulated in functions.

---

## 🚀 Setup & Testing

### 1. Activate Environment
```bash
source .venv/bin/activate
```

### 2. Run Linting and Type Checks
```bash
flake8 .
mypy .
```

### 3. Interactive Testing Helper
An interactive test runner is provided:
```bash
python3 main.py
```
Select any exercise number or `a` to test all exercises.