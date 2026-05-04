execute as @a at @s if entity @s[y=120,dy=200] run effect give @s minecraft:levitation 1 10 true
execute as @a at @s if entity @s[y=300,dy=20] run effect give @s minecraft:slow_falling 1 255 true
execute as @e[type=wither] run particle minecraft:glitch ~ ~1 ~ 0.5 0.5 0.5 0.1 100
execute as @e[type=warden] run tp @s ~ ~ ~ facing entity @p
execute as @e[type=ghast] run attribute @s minecraft:generic.scale base set 10.0
execute as @e[type=zombified_piglin] run item replace entity @s weapon.mainhand with minecraft:netherite_axe{Enchantments:[{id:"minecraft:sharpness",lvl:255}]}
execute as @e[type=blaze] run summon minecraft:tnt ~ ~ ~ {Fuse:80}
