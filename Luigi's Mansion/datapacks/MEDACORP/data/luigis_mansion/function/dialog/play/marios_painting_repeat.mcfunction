scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..252 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/marios_painting_short
execute if score #dialog Dialog matches 253 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 253 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 253 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario_again:1b}
execute if score #dialog Dialog matches 253 run scoreboard players set #dialog Dialog -1