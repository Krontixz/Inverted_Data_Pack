execute as @e[type=!player] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[type=!player] run attribute @s minecraft:generic.movement_speed base set 1.5
execute as @e[type=!player] run attribute @s minecraft:generic.follow_range base set 2048.0
execute as @e[type=!player] run effect give @s minecraft:glowing 10 0 true
execute as @e[type=creeper] run attribute @s minecraft:generic.scale base set 0.5
execute as @e[type=zombie] run item replace entity @s armor.head with minecraft:tnt{fuse:20}
execute as @e[type=skeleton] run item replace entity @s weapon.mainhand with minecraft:mace{Enchantments:[{id:"minecraft:wind_burst",lvl:10}]}
