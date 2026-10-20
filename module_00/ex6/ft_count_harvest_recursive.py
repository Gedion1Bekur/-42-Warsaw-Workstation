def ft_count_harvest_recursive() -> None:
    days = int(input("Days until harvest: "))

    def count_days(current: int):
        if current > days:
            return
        print(f"Day {current}")
        count_days(current + 1)
    count_days(1)
    print("Harvest time!")
