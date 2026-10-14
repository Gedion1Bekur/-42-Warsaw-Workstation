# 42 Warsaw - Module 00: Growing Code Solutions

This document contains full solutions for **Module 00: Growing Code** (Version 3.0), following all strict subject requirements:
- **No code outside functions** (no `if __name__ == "__main__":` blocks or direct function calls in submission files).
- **Strict adherence to exact function names and prompts.**
- **PEP 8 compliance** (`flake8` friendly formatting).
- **Type hints** added across all exercises (required for Exercise 7, checked with `mypy`).

---

## Directory & File Structure

```
.
├── ex0/
│   └── ft_hello_garden.py
├── ex1/
│   └── ft_garden_name.py
├── ex2/
│   └── ft_plot_area.py
├── ex3/
│   └── ft_harvest_total.py
├── ex4/
│   └── ft_plant_age.py
├── ex5/
│   └── ft_water_reminder.py
├── ex6/
│   ├── ft_count_harvest_iterative.py
│   └── ft_count_harvest_recursive.py
└── ex7/
    └── ft_seed_inventory.py
```

---

## Exercise 0: Hello Garden

**Directory:** `ex0/`  
**File:** `ft_hello_garden.py`

```python
def ft_hello_garden() -> None:
    """Displays a welcome message to the garden community."""
    print("Hello, Garden Community!")
```

---

## Exercise 1: Garden Name

**Directory:** `ex1/`  
**File:** `ft_garden_name.py`

```python
def ft_garden_name() -> None:
    """Asks for a garden name, then displays it with a status message."""
    name = input("Enter garden name: ")
    print(f"Garden: {name}")
    print("Status: Growing well!")
```

---

## Exercise 2: Garden Plot Area

**Directory:** `ex2/`  
**File:** `ft_plot_area.py`

```python
def ft_plot_area() -> None:
    """Calculates and displays the area of a rectangular garden plot."""
    length = int(input("Enter length: "))
    width = int(input("Enter width: "))
    area = length * width
    print(f"Plot area: {area}")
```

---

## Exercise 3: Harvest Total

**Directory:** `ex3/`  
**File:** `ft_harvest_total.py`

```python
def ft_harvest_total() -> None:
    """Asks for weight harvested over three days and displays total."""
    day1 = int(input("Day 1 harvest: "))
    day2 = int(input("Day 2 harvest: "))
    day3 = int(input("Day 3 harvest: "))
    total = day1 + day2 + day3
    print(f"Total harvest: {total}")
```

---

## Exercise 4: Plant Age Check

**Directory:** `ex4/`  
**File:** `ft_plant_age.py`

```python
def ft_plant_age() -> None:
    """Checks plant age and determines if it is ready to harvest (> 60 days)."""
    age = int(input("Enter plant age in days: "))
    if age > 60:
        print("Plant is ready to harvest!")
    else:
        print("Plant needs more time to grow.")
```

---

## Exercise 5: Water Reminder

**Directory:** `ex5/`  
**File:** `ft_water_reminder.py`

```python
def ft_water_reminder() -> None:
    """Reminds the user to water plants if last watered over 2 days ago."""
    days = int(input("Days since last watering: "))
    if days > 2:
        print("Water the plants!")
    else:
        print("Plants are fine")
```

---

## Exercise 6: Count to Harvest

**Directory:** `ex6/`  
**Files:** `ft_count_harvest_iterative.py` and `ft_count_harvest_recursive.py`

### `ft_count_harvest_iterative.py`
```python
def ft_count_harvest_iterative() -> None:
    """Counts down to harvest day iteratively using a loop."""
    days = int(input("Days until harvest: "))
    for day in range(1, days + 1):
        print(f"Day {day}")
    print("Harvest time!")
```

### `ft_count_harvest_recursive.py`
```python
def ft_count_harvest_recursive() -> None:
    """Counts down to harvest day using a nested recursive function."""
    days = int(input("Days until harvest: "))

    def _count(current: int) -> None:
        if current > days:
            print("Harvest time!")
            return
        print(f"Day {current}")
        _count(current + 1)

    _count(1)
```

---

## Exercise 7: Seed Inventory with Type Annotations

**Directory:** `ex7/`  
**File:** `ft_seed_inventory.py`

```python
def ft_seed_inventory(seed_type: str, quantity: int, unit: str) -> None:
    """Displays seed inventory details based on unit type and quantity."""
    formatted_seed = seed_type.capitalize()
    if unit == "packets":
        print(f"{formatted_seed} seeds: {quantity} packets available")
    elif unit == "grams":
        print(f"{formatted_seed} seeds: {quantity} grams total")
    elif unit == "area":
        print(f"{formatted_seed} seeds: covers {quantity} square meters")
    else:
        print("Unknown unit type")
```

---

## Testing Local Files with `flake8` & `mypy`

Before pushing to your 42 repository, verify that all files conform to PEP 8 standards and type requirements:

```bash
# Check code formatting with flake8
flake8 ex0/ ex1/ ex2/ ex3/ ex4/ ex5/ ex6/ ex7/

# Check type hints with mypy
mypy ex7/ft_seed_inventory.py
```