execute at @s positioned ~ ~1.6 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs at @s run tag @s add in_wall
teleport @s[tag=in_wall] ~ ~0.1 ~

execute if entity @s[tag=!bounce] if block ~ ~1.4 ~ #luigis_mansion:items_ignore run teleport @s ~ ~-0.2 ~
execute if entity @s[tag=!bounce] if block ~ ~1.4 ~ #minecraft:slabs unless block ~ ~1.9 ~ #luigis_mansion:items_ignore run teleport @s ~ ~-0.2 ~

execute if entity @s[tag=!bounce,tag=!in_wall] unless block ~ ~1.4 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce_heart
execute if entity @s[tag=!bounce,tag=!in_wall] unless block ~ ~1.4 ~ #minecraft:slabs unless block ~ ~1.7 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce_heart

execute if entity @s[tag=bounce] if block ~ ~1.7 ~ #luigis_mansion:item_bounce_ignore run teleport @s ~ ~0.2 ~
execute if entity @s[tag=bounce] unless block ~ ~1.7 ~ #luigis_mansion:item_bounce_ignore run function luigis_mansion:entities/item/bounce_top
execute if entity @s[tag=bounce,scores={ActionTime=0}] if block ~ ~-0.9 ~ #luigis_mansion:item_bounce_ignore if block ~ ~0.4 ~ #luigis_mansion:item_bounce_ignore run function luigis_mansion:entities/item/bounce_top
execute if entity @s[tag=bounce,scores={ActionTime=1..}] if block ~ ~-0.1 ~ #luigis_mansion:item_bounce_ignore if block ~ ~0.4 ~ #luigis_mansion:item_bounce_ignore run function luigis_mansion:entities/item/bounce_top

execute store result score @s HomeY run data get entity @s Pos[1] 100
execute unless entity @s[scores={ActionTime=1..}] at @s positioned ~ ~1.4 ~ if block ^ ^ ^0.4 #luigis_mansion:items_ignore unless block ^ ^ ^0.4 #minecraft:slabs at @s run teleport @s ^ ^ ^0.2
execute if entity @s[scores={ActionTime=1}] at @s positioned ~ ~1.4 ~ if block ^ ^ ^0.2 #luigis_mansion:items_ignore unless block ^ ^ ^0.2 #minecraft:slabs at @s run teleport @s ^ ^ ^0.1
execute if entity @s[scores={ActionTime=2..}] at @s positioned ~ ~1.4 ~ if block ^ ^ ^0.1 #luigis_mansion:items_ignore unless block ^ ^ ^0.1 #minecraft:slabs at @s run teleport @s ^ ^ ^0.05
execute if entity @s[tag=bounce] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
function luigis_mansion:entities/item/heart_bounce_wall

execute at @s run function luigis_mansion:animations/money/rotate

tag @s remove in_wall
execute at @s unless block ~ ~1.6 ~0.3 #luigis_mansion:item_pull_ignore if block ~ ~1.6 ~-0.3 #luigis_mansion:item_pull_ignore run teleport @s ~ ~ ~-0.3
execute at @s unless block ~ ~1.6 ~-0.3 #luigis_mansion:item_pull_ignore if block ~ ~1.6 ~0.3 #luigis_mansion:item_pull_ignore run teleport @s ~ ~ ~0.3
execute at @s unless block ~0.3 ~1.6 ~ #luigis_mansion:item_pull_ignore if block ~-0.3 ~1.6 ~ #luigis_mansion:item_pull_ignore run teleport @s ~0.3 ~ ~
execute at @s unless block ~-0.3 ~1.6 ~ #luigis_mansion:item_pull_ignore if block ~0.3 ~1.6 ~ #luigis_mansion:item_pull_ignore run teleport @s ~-0.3 ~ ~
execute at @s unless block ~0.3 ~1.6 ~0.3 #luigis_mansion:item_pull_ignore if block ~-0.3 ~1.6 ~-0.3 #luigis_mansion:item_pull_ignore run teleport @s ~-0.3 ~ ~-0.3
execute at @s unless block ~0.3 ~1.6 ~-0.3 #luigis_mansion:item_pull_ignore if block ~-0.3 ~1.6 ~0.3 #luigis_mansion:item_pull_ignore run teleport @s ~-0.3 ~ ~0.3
execute at @s unless block ~-0.3 ~1.6 ~0.3 #luigis_mansion:item_pull_ignore if block ~0.3 ~1.6 ~-0.3 #luigis_mansion:item_pull_ignore run teleport @s ~0.3 ~ ~-0.3
execute at @s unless block ~-0.3 ~1.6 ~-0.3 #luigis_mansion:item_pull_ignore if block ~0.3 ~1.6 ~0.3 #luigis_mansion:item_pull_ignore run teleport @s ~0.3 ~ ~0.3

execute at @s positioned ~ ~1.6 ~ if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add picked_up
execute at @s positioned ~ ~1.6 ~ run tag @a[tag=same_room,tag=!spectator,distance=..0.7,limit=1] add collector
execute at @s positioned ~ ~1.6 ~ unless entity @a[tag=collector,limit=1] as @e[tag=same_room,tag=gameboy_horror_location,tag=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/gameboy_horror_location/tag_for_collecting