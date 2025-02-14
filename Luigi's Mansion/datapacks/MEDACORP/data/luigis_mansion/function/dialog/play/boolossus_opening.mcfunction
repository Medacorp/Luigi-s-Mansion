execute unless entity @e[tag=ghost,tag=same_room,tag=merged,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=ghost,tag=same_room,tag=merged,limit=1] run return 0
scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:other/music/set/boolossus_battle
execute if score #dialog Dialog matches 1..99 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 99 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 100 at @e[tag=ghost,tag=same_room,tag=merged,limit=1] run playsound luigis_mansion:entity.boolossus.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 30
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/freeze
execute if score #dialog Dialog matches 200 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/knockback/flee_look_up
execute if score #dialog Dialog matches 120..180 as @e[tag=ghost,tag=same_room,tag=merged,limit=1] at @s run teleport @s ~ ~ ~ ~ ~1.5
execute if score #dialog Dialog matches 198..260 as @e[tag=ghost,tag=same_room,tag=merged,limit=1] at @s run teleport @s ~ ~-1 ~
execute if score #dialog Dialog matches 260 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 260 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^-1 run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 260 as @e[tag=luigi,tag=same_room] run data modify entity @s data.initial_animation_progress set value 30
execute if score #dialog Dialog matches 260..359 run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 260 at @e[tag=ghost,tag=same_room,tag=merged,limit=1] run playsound luigis_mansion:entity.boolossus.bounce hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 290..300 as @e[tag=ghost,tag=same_room,tag=merged,limit=1] at @s run teleport @s ~ ~0.2 ~ ~ ~-4.5
execute if score #dialog Dialog matches 320 run tag @e[tag=ghost,tag=same_room,tag=merged,limit=1] add laugh
execute if score #dialog Dialog matches 320 run tag @e[tag=ghost,tag=same_room,tag=merged,limit=1] remove no_ai
execute if score #dialog Dialog matches 320..360 run scoreboard players set @e[tag=ghost,tag=same_room,tag=merged,limit=1] Dialog 0
execute if score #dialog Dialog matches 360 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 360 run scoreboard players set #dialog Dialog -1