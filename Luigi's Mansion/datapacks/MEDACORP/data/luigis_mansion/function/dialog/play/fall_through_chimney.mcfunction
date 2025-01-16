execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID

tag @e[tag=!this_player,tag=same_room,tag=no_ai_dialog] remove no_ai
tag @e[tag=!this_player,tag=same_room,tag=no_ai_dialog] remove no_ai_dialog
tag @e[tag=!this_player,tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
tag @e[tag=!this_player,tag=same_room,tag=freeze_animation_dialog] remove freeze_animation_dialog
tag @e[tag=!this_player,tag=same_room,tag=applied_dialog_effects] remove applied_dialog_effects
tag @e[tag=!this_player,tag=same_room] remove same_room

execute unless entity @e[tag=this_player,tag=same_room,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=this_player,tag=same_room,limit=1] run return 0

scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=this_player,limit=1] WarpTime
execute as @a[tag=this_player,limit=1,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 run effect give @a[tag=this_player,limit=1] minecraft:blindness 3 10 true
execute if score #dialog Dialog matches 1 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=luigi,tag=this_player,limit=1]",teleport:"~3 ~ ~ 90 0"}
execute if score #dialog Dialog matches 1..139 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 60..61 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 62..63 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 64..65 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 66..67 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 70..71 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 72..73 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 74..75 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 76..77 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 1 as @a[tag=this_player,limit=1] at @s run particle minecraft:block_marker{block_state:{Name:"minecraft:black_concrete"}} ^ ^1.4 ^0.1 0 0 0 0 1 normal
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 40 as @e[tag=luigi,tag=this_player,limit=1] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 40 as @e[tag=luigi,tag=this_player,limit=1] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 40.. run scoreboard players set @e[tag=luigi,tag=this_player,limit=1,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 80 at @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:blocks/dust_no_sound
execute if score #dialog Dialog matches 140 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 140 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 140 run scoreboard players set #dialog Dialog -1