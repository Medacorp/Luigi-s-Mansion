execute unless entity @e[tag=ghost,tag=same_room,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=ghost,tag=same_room,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] run data modify entity @s data.initial_animation_progress set value 30
execute if score #dialog Dialog matches 1..40 run scoreboard players set @e[tag=luigi,tag=same_room] AnimationProgress 29
execute if score #dialog Dialog matches 60..139 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 140..159 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 160 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 160 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/normal
execute if score #dialog Dialog matches 160..379 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/staredown
execute if score #dialog Dialog matches 380 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 120..299 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] add visible
execute if score #dialog Dialog matches 140 at @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 140 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] remove no_ai
execute if score #dialog Dialog matches 160.. run scoreboard players set @e[tag=not_this_ghost,scores={ActionTime=131..},limit=1] ActionTime 130
execute if score #dialog Dialog matches 280 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] add no_ai
execute if score #dialog Dialog matches 300 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] remove visible
execute if score #dialog Dialog matches 380 run tag @e[tag=ghost,tag=same_room,tag=!not_this_ghost,limit=1] remove no_ai
execute if score #dialog Dialog matches 380 run scoreboard players set #dialog Dialog -1