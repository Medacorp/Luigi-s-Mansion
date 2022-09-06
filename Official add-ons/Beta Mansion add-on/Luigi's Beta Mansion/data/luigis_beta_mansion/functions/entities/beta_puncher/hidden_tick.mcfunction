tag @s[tag=basher,tag=can_spawn] add spawn
execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:animations/puncher/idle
tag @s[tag=spawn,tag=!basher,tag=!no_appear] add appear
data modify entity @s[tag=spawn,tag=basher] ArmorItems[3].id set value "minecraft:oak_button"
data modify entity @s[tag=spawn,tag=basher] HandItems[0].id set value "minecraft:oak_button"
data modify entity @s[tag=spawn,tag=basher] HandItems[1].id set value "minecraft:oak_button"
data modify entity @s[tag=spawn,tag=basher] CustomNameVisible set value 0b
tag @s[tag=spawn,tag=basher] remove visible
tag @s remove spawn