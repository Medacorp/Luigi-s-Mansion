execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID

tag @a[tag=!this_player] remove same_room
tag @a[tag=this_player] add prevent_item_lock
scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=this_player,limit=1] WarpTime
execute as @a[tag=this_player,limit=1,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room] remove no_ai
tag @e[tag=same_room] remove freeze_animation

execute if score #dialog Dialog matches 1..49 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"754 11 7.0 90 0"}
execute if score #dialog Dialog matches 1 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"750 10 7.0 -90 0"}
execute if score #dialog Dialog matches 1..69 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.085 ~0.007 7.0 -90 ~-0.214"}
execute if score #dialog Dialog matches 1.. run tag @e[tag=luigi,tag=this_player,limit=1] add reset_rotation
execute if score #dialog Dialog matches 50.. as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/high_health_idle
execute if score #dialog Dialog matches 70..79 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"744 10.5 7.0 -90 -15"}
execute if score #dialog Dialog matches 80 as @a[tag=same_room] at @s run playsound luigis_mansion:music.mansion.first_entrance ambient @a[tag=this_player,limit=1] ~ ~ ~ 1000
execute if score #dialog Dialog matches 80 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"750.0 19 -1.0 50 17.5"}
execute if score #dialog Dialog matches 80..119 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.1125 ~-0.075 ~-0.0125 ~0.5 ~-0.125"}
execute if score #dialog Dialog matches 120 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"745.2 17.3 11.9 -140 12"}
execute if score #dialog Dialog matches 120..159 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.0025 ~0.0725 ~-0.0725 ~0.625 ~0.45"}
execute if score #dialog Dialog matches 160 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"752 14.1 9.0 110 -45"}
execute if score #dialog Dialog matches 160..199 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.05 ~-0.0025 ~0.0125 ~0.175 ~-0.2"}
execute if score #dialog Dialog matches 200 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"754 11 3.0 21 -12"}
execute if score #dialog Dialog matches 200..249 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"754 11 ~-0.02 ~0.44 ~-0.14"}
execute if score #dialog Dialog matches 250..279 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"754 11 2.0 43 -19"}
execute if score #dialog Dialog matches 280 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 300 run tag @e[tag=luigi,tag=this_player,limit=1] remove reset_rotation
execute if score #dialog Dialog matches 300 run tag @e[tag=luigi,tag=this_player,limit=1] add idle
execute if score #dialog Dialog matches 300 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_player] remove this_player