scoreboard players add #dialog Dialog 1
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
execute as @e[tag=ghost,tag=hidden,tag=new_ghost,tag=same_room] at @s positioned ~ ~1 ~ if entity @e[type=minecraft:item_frame,distance=..0.7,limit=1] run tag @s add camera_can_focus_on
execute if score #dialog Dialog matches 1..59 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s facing entity @e[tag=camera_can_focus_on,limit=1] feet rotated ~ 0 positioned as @e[tag=camera_can_focus_on,limit=1]",teleport:"^ ^ ^-3 ~ ~"}
execute if score #dialog Dialog matches 60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 60 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 60 run scoreboard players set #dialog Dialog -1
tag @e[tag=camera_can_focus_on] remove camera_can_focus_on