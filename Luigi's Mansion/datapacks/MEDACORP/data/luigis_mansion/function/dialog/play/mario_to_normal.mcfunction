execute if score #dialog Dialog matches 725..1362 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 724 if entity @a[x=774.5,y=77,z=20.5,tag=!spectator,distance=..2] run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..723 run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches ..724 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 1363
execute if score #dialog Dialog matches 725..1362 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 1363

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=e_gadd,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=e_gadd,tag=same_room,limit=1] remove no_ai
tag @e[tag=mario,tag=same_room,limit=1] remove freeze_animation
tag @e[tag=mario,tag=portrificationizing,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 1..1103 as @e[tag=e_gadd,tag=same_room,limit=1] at @s facing entity @e[tag=same_room,tag=mario,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 1 run teleport @e[tag=e_gadd,tag=same_room,limit=1] 774 77 -12 90 0
execute if score #dialog Dialog matches 1 run summon minecraft:armor_stand 771.01 76.47 -12 {Rotation:[-90.0f,0.0f],Pose:{Head:[0.0f,-180.0f,0.0f]},Tags:["mario","same_room","portrificationizing","cannot_be_removed"],Marker:1b,Invisible:1b,Silent:1b,data:{entity:{namespace:"luigis_mansion",id:"mario"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/marios_painting"}}},DisabledSlots:2039583}
execute if score #dialog Dialog matches 1 store result score @e[tag=same_room,tag=mario] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 31 as @a[tag=same_room] run function luigis_mansion:other/music/set/unportrificationizing
execute if score #dialog Dialog matches 723 run data modify storage luigis_mansion:data entity set value {room:-3,no_ai:1b,tags:["done_portrificationizing","cannot_be_removed"]}
execute if score #dialog Dialog matches 723 run data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 723 positioned 774 77 20 rotated -180 0 run function luigis_mansion:spawn_entities/mario/normal
execute if score #dialog Dialog matches 723 as @a[tag=same_room] run function luigis_mansion:other/music/set/non_overwritten_silence

execute if score #dialog Dialog matches 725.. run tag @e[tag=mario,tag=done_portrificationizing,tag=same_room,limit=1] remove no_ai
execute if score #dialog Dialog matches 803 as @a[tag=same_room] run function luigis_mansion:other/music/set/saved_mario
execute if score #dialog Dialog matches 1104 run data modify entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"walk"}
execute if score #dialog Dialog matches 1104..1362 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s ~ ~ ~0.1 0 0
execute if score #dialog Dialog matches 1363 as @e[tag=e_gadd,tag=same_room,limit=1] at @s run teleport @s 774 77 14 -30 0
execute if score #dialog Dialog matches 1363 run data remove entity @e[tag=e_gadd,tag=same_room,limit=1] data.animation
execute if score #dialog Dialog matches 1363 run tag @e[tag=mario,tag=same_room,limit=1] remove cannot_be_removed
execute if score #dialog Dialog matches 1363 run tag @e[tag=mario,tag=same_room,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 1363 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"credits"},progress:0}
execute if score #dialog Dialog matches 1363 run scoreboard players set #dialog Dialog -1