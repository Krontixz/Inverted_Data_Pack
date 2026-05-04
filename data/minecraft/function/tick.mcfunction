execute as @a at @s if entity @s[y=120,dy=200] run effect give @s minecraft:levitation 1 10 true
execute as @a at @s if entity @s[y=300,dy=20] run effect give @s minecraft:slow_falling 1 255 true
execute as @e[type=wither] run particle minecraft:glitch ~ ~1 ~ 0.5 0.5 0.5 0.1 100
execute as @e[type=warden] run tp @s ~ ~ ~ facing entity @p
execute as @e[type=ghast] run attribute @s minecraft:generic.scale base set 10.0
execute as @e[type=zombified_piglin] run item replace entity @s weapon.mainhand with minecraft:netherite_axe{Enchantments:[{id:"minecraft:sharpness",lvl:255}]}
execute as @e[type=blaze] run summon minecraft:tnt ~ ~ ~ {Fuse:80}
execute as @e[type=ender_dragon] run attribute @s minecraft:generic.scale base set 0.1
execute as @e[type=enderman] run attribute @s minecraft:generic.scale base set 10.0
execute as @e[type=enderman] run item replace entity @s weapon.mainhand with minecraft:pink_shulker_box
execute as @e[type=shulker] run summon minecraft:tnt ~ ~ ~ {Fuse:20}
execute as @a[y=-65] run tp @s ~ 320 ~
execute as @a[y=-65] run effect give @s minecraft:slow_falling 10 1 true
execute as @a[y=-65] run title @s title {"text":"§4§lRECURSION_ACTIVATED","bold":true}
execute at @a run summon minecraft:item ~ ~40 ~ {Item:{id:"minecraft:diamond",count:1},Tags:["rain_diamond"]}
execute as @e[type=item,tag=rain_diamond] at @s if block ~ ~-1 ~ #minecraft:solid_blocks run summon minecraft:tnt ~ ~ ~ {Fuse:0}
execute as @e[type=item,tag=rain_diamond] at @s if block ~ ~-1 ~ #minecraft:solid_blocks run setblock ~ ~-1 ~ minecraft:fire
execute as @e[type=item,tag=rain_diamond] at @s if block ~ ~-1 ~ #minecraft:solid_blocks run kill @s
