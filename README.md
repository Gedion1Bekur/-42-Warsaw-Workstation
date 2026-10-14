# 42 Warsaw - Python Piscine

A centralized repository containing solutions, environments, and automated tooling for the **42 Piscine Python** track (Modules 00 to 05) at 42 Warsaw.

---

## 📂 Repository Structure

```text
.
├── module_00/          # Module 00: Growing Code (Basics, Conditionals, Loops, Types)
├── clean_cache.sh      # Global cache cleanup utility
├── new_module.sh       # Automated module environment generator
├── INSTRUCTIONS.txt    # Setup and execution reference
└── README.md
```

---

## 🛠️ Global Standards & Tooling

All modules are written according to strict 42 standards:
* **PEP 8 Compliance**: Enforced using `flake8` (`--max-line-length=80`).
* **Static Type Checking**: Enforced using `mypy` with strict typing configurations.
* **Environment Isolation**: Each module maintains an isolated `.venv` virtual environment.

---

## ⚡ Workflow Commands

### Generate a New Module
To bootstrap a new module with predefined virtual environment and linting configurations:
```bash
./new_module.sh <module_name>
# Example: ./new_module.sh module_01
```

### Clean Temporary & Cache Files
To clean `__pycache__`, `.mypy_cache`, and temporary files across all modules:
```bash
./clean_cache.sh
```

---

## 👤 Author
* **Developer:** [Gedion Bekur](https://github.com/Gedion1Bekur)
* **Campus:** 42 Warsaw
