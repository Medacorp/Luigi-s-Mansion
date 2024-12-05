scoreboard players add #dialog Dialog 1

tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=mouse,tag=same_room] remove freeze_animation
tag @e[tag=mouse,tag=same_room] remove no_ai
execute if score #dialog Dialog matches 1..140 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_cried:1b}
execute if score #dialog Dialog matches 1 at @a[tag=same_room,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["sound_origin","same_room"]}
execute if score #dialog Dialog matches 1 run data modify entity @e[tag=same_room,tag=sound_origin,limit=1] Pos set from storage luigis_mansion:data dialogs[0].sound_origin
execute if score #dialog Dialog matches 1 store result score @e[tag=sound_origin,tag=same_room] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 1 at @e[tag=same_room,tag=sound_origin,limit=1] run playsound luigis_mansion:entity.chauncey.cutscene_scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 20 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 20 run scoreboard players set @a[tag=same_room] Music 120
execute if score #dialog Dialog matches 21 run playsound luigis_mansion:furniture.door.chauncey music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 141 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 141 run tag @e[tag=same_room,tag=sound_origin,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 141 run scoreboard players set #dialog Dialog -1
