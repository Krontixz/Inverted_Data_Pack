execute as @a at @s if entity @s[y=120,dy=200] run effect give @s minecraft:levitation 1 10 true
execute as @a at @s if entity @s[y=300,dy=20] run effect give @s minecraft:slow_falling 1 255 true
execute as @e[type=wither] run particle minecraft:glitch ~ ~1 ~ 0.5 0.5 0.5 0.1 100
execute as @e[type=warden] run tp @s ~ ~ ~ facing entity @p
