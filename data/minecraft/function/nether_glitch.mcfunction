execute as @e[type=piglin] run attribute @s minecraft:generic.scale base set 0.2
execute as @e[type=piglin_brute] run attribute @s minecraft:generic.scale base set 4.0
execute as @e[type=piglin] run item replace entity @s armor.head with minecraft:tnt
execute as @e[type=hoglin] run summon minecraft:lightning_bolt ~ ~ ~
