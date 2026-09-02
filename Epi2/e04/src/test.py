def add(a: int, b: int) -> int:
    return a + b


result = add(10, "20")
print(result)

print(undefined_variable)

class Player:
    def __init__(self, name: str, level: int):
        self.name = name
        self.level = level

    def level_up(self):
        self.level += 1

player = Player("Xin", 10)
player.level