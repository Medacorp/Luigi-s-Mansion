scoreboard players add #dialog Dialog 1

execute unless entity @a[tag=same_room,scores={Room=1..},limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @a[tag=same_room,scores={Room=1..},limit=1] run return 0
tag @a[tag=same_room,scores={Room=..0}] remove same_room

tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..20 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 21.. as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/high_health_idle_no_sound
execute if score #dialog Dialog matches 1.. as @a[tag=same_room,tag=!fully_separated_camera] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~-180 0",teleport:"^ ^ ^-3 ~ ~"}
execute if score #dialog Dialog matches 2.. as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
scoreboard players operation #temp AnimationProgress = #dialog Dialog
scoreboard players operation #temp AnimationProgress %= #4 Constants
execute if score #dialog Dialog matches 1..60 if score #temp AnimationProgress matches 1..2 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.1 ~"}
execute if score #dialog Dialog matches 1..60 unless score #temp AnimationProgress matches 1..2 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.1 ~"}
execute if score #dialog Dialog matches 80 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 80 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 80 run scoreboard players set #dialog Dialog -1