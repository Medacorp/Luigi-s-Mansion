execute at @s positioned ~ ~1.3 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs at @s run tag @s add in_wall
teleport @s[tag=in_wall] ~ ~0.1 ~

execute if entity @s[tag=!bounce] if block ~ ~1.1 ~ #luigis_mansion:items_ignore run teleport @s ~ ~-0.2 ~
execute if entity @s[tag=!bounce] if block ~ ~1.1 ~ #minecraft:slabs unless block ~ ~1.6 ~ #luigis_mansion:items_ignore run teleport @s ~ ~-0.2 ~

execute if entity @s[tag=!bounce,tag=!in_wall] unless block ~ ~1.1 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce
execute if entity @s[tag=!bounce,tag=!in_wall] unless block ~ ~1.1 ~ #minecraft:slabs unless block ~ ~1.4 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce

execute if entity @s[tag=bounce,scores={ActionTime=0..3}] if block ~ ~1.7 ~ #luigis_mansion:items_ignore run teleport @s ~ ~0.2 ~
execute if entity @s[tag=bounce,scores={ActionTime=0..3}] unless block ~ ~1.7 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce_top
execute if entity @s[tag=bounce,scores={ActionTime=0}] if block ~ ~-0.9 ~ #luigis_mansion:items_ignore if block ~ ~0.1 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce_top
execute if entity @s[tag=bounce,scores={ActionTime=1}] if block ~ ~-0.4 ~ #luigis_mansion:items_ignore if block ~ ~0.1 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce_top
execute if entity @s[tag=bounce,scores={ActionTime=2}] if block ~ ~0.1 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce_top
execute if entity @s[tag=bounce,scores={ActionTime=3}] if block ~ ~0.6 ~ #luigis_mansion:items_ignore run function luigis_mansion:entities/item/bounce_top

execute store result score @s HomeY run data get entity @s Pos[1] 100
execute unless entity @s[scores={ActionTime=1..}] if entity @s[tag=!no_move] at @s positioned ~ ~1.1 ~ if block ^ ^ ^0.2 #luigis_mansion:ghosts_ignore unless block ^ ^ ^0.2 #minecraft:slabs at @s run teleport @s ^ ^ ^0.1
execute if entity @s[scores={ActionTime=1},tag=!no_move] at @s positioned ~ ~1.1 ~ if block ^ ^ ^0.1 #luigis_mansion:ghosts_ignore unless block ^ ^ ^0.1 #minecraft:slabs at @s run teleport @s ^ ^ ^0.05
execute if entity @s[scores={ActionTime=2},tag=!no_move] at @s positioned ~ ~1.1 ~ if block ^ ^ ^0.05 #luigis_mansion:ghosts_ignore unless block ^ ^ ^0.05 #minecraft:slabs at @s run teleport @s ^ ^ ^0.025
execute if entity @s[scores={ActionTime=3},tag=!no_move,tag=!bounce] at @s positioned ~ ~1.1 ~ if block ^ ^ ^0.025 #luigis_mansion:ghosts_ignore unless block ^ ^ ^0.025 #minecraft:slabs at @s run teleport @s ^ ^ ^0.0125
execute if entity @s[tag=bounce] unless entity @s[scores={ActionTime=4..}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY

execute at @s[tag=bounce,scores={ActionTime=4..}] positioned ~ ~1.1 ~ if block ~ ~ ~ #luigis_mansion:items_ignore if block ~ ~-0.2 ~ #minecraft:slabs at @s run teleport @s ~ ~-0.2 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] positioned ~ ~1.1 ~ align y if block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs run teleport @s ~ ~-1.1 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] positioned ~ ~1.1 ~ align y if block ~ ~ ~ #minecraft:slabs run teleport @s ~ ~-0.6 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] positioned ~ ~1.3 ~ if block ~ ~0.6 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.1 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] if block ~ ~1 ~ #minecraft:stairs[half=bottom,facing=north] at @s run teleport @s ~ ~ ~ 0 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] if block ~ ~1 ~ #minecraft:stairs[half=bottom,facing=south] at @s run teleport @s ~ ~ ~ -180 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] if block ~ ~1 ~ #minecraft:stairs[half=bottom,facing=east] at @s run teleport @s ~ ~ ~ 90 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] if block ~ ~1 ~ #minecraft:stairs[half=bottom,facing=west] at @s run teleport @s ~ ~ ~ -90 ~
execute at @s[tag=bounce,scores={ActionTime=4..}] if block ~ ~1 ~ #minecraft:stairs[half=bottom] run scoreboard players set @s ActionTime 2

execute at @s run function luigis_mansion:animations/money/rotate

tag @s remove in_wall
execute at @s unless block ~ ~1.3 ~0.3 #luigis_mansion:item_pull_ignore if block ~ ~1.3 ~-0.3 #luigis_mansion:item_pull_ignore run teleport @s ~ ~ ~-0.3
execute at @s unless block ~ ~1.3 ~-0.3 #luigis_mansion:item_pull_ignore if block ~ ~1.3 ~0.3 #luigis_mansion:item_pull_ignore run teleport @s ~ ~ ~0.3
execute at @s unless block ~0.3 ~1.3 ~ #luigis_mansion:item_pull_ignore if block ~-0.3 ~1.3 ~ #luigis_mansion:item_pull_ignore run teleport @s ~0.3 ~ ~
execute at @s unless block ~-0.3 ~1.3 ~ #luigis_mansion:item_pull_ignore if block ~0.3 ~1.3 ~ #luigis_mansion:item_pull_ignore run teleport @s ~-0.3 ~ ~
execute at @s unless block ~0.3 ~1.3 ~0.3 #luigis_mansion:item_pull_ignore if block ~-0.3 ~1.3 ~-0.3 #luigis_mansion:item_pull_ignore run teleport @s ~-0.3 ~ ~-0.3
execute at @s unless block ~0.3 ~1.3 ~-0.3 #luigis_mansion:item_pull_ignore if block ~-0.3 ~1.3 ~0.3 #luigis_mansion:item_pull_ignore run teleport @s ~-0.3 ~ ~0.3
execute at @s unless block ~-0.3 ~1.3 ~0.3 #luigis_mansion:item_pull_ignore if block ~0.3 ~1.3 ~-0.3 #luigis_mansion:item_pull_ignore run teleport @s ~0.3 ~ ~-0.3
execute at @s unless block ~-0.3 ~1.3 ~-0.3 #luigis_mansion:item_pull_ignore if block ~0.3 ~1.3 ~0.3 #luigis_mansion:item_pull_ignore run teleport @s ~0.3 ~ ~0.3

execute at @s positioned ~ ~1.3 ~ if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add picked_up
execute at @s positioned ~ ~1.3 ~ run tag @a[tag=same_room,tag=!spectator,distance=..0.7,limit=1] add collector
execute at @s positioned ~ ~1.3 ~ unless entity @a[tag=collector,limit=1] as @e[tag=same_room,tag=gameboy_horror_location,tag=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/gameboy_horror_location/tag_for_collecting