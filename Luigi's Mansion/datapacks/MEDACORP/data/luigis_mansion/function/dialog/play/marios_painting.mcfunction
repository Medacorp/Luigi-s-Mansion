execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].observing_player
execute as @a[tag=same_room] if score @s ID = #temp ID run tag @s add observing_player
scoreboard players reset #temp ID

scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=furniture,tag=incense] remove no_ai
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] remove freeze_animation
tag @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"mario"}}},limit=1] remove freeze_animation
execute if score #dialog Dialog matches 1..479 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/marios_painting
execute if score #dialog Dialog matches 340 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mario","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.marios_painting.1"}]}
execute if score #dialog Dialog matches 420 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"selector","selector":"@a[tag=observing_player,limit=1]","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.marios_painting.2"}]}
execute if score #dialog Dialog matches 480 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 480 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 480 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {saw_mario:1b,saw_mario_again:1b}
execute if score #dialog Dialog matches 480 run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove observing_player