execute if score #the_twins_room Time matches 1.. run scoreboard players add #the_twins_room Time 1
execute at @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=spawn,tag=!remove_from_existence] run function 3ds_remake:room/hidden/the_twins_room/right_box
tag @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=spawn,tag=!remove_from_existence] add remove_from_existence
execute unless score #the_twins_room Time matches 1.. at @e[tag=hide_and_seek_box,tag=open,scores={Room=49}] positioned ~ ~1.4 ~ unless entity @e[distance=..0.7,tag=ghost,limit=1] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] run scoreboard players add #the_twins_room Time 1
execute if score #the_twins_room Time matches 1.. as @a[tag=!pause_dialog,scores={Room=49},tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #the_twins_room Time matches 20..39 run tag @e[tag=hide_and_seek_box,tag=!open,scores={Room=49}] add shake
execute if score #the_twins_room Time matches 40 as @e[tag=hide_and_seek_box,tag=open,scores={Room=49}] at @s run function luigis_mansion:entities/furniture/search/generic
execute if score #the_twins_room Time matches 40 run tag @e[tag=hide_and_seek_box,scores={Room=49}] add open
execute if score #the_twins_room Time matches 40 at @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=empty_marker] run function 3ds_remake:room/hidden/the_twins_room/right_box
execute if score #the_twins_room Time matches 40 run tag @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=empty_marker] add remove_from_existence
execute if score #the_twins_room Time matches 80 run tellraw @a[scores={Room=49}] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.henry","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.twins.game.0"}]}
execute if score #the_twins_room Time matches 80 run stopsound @a[scores={Room=49}] music
execute if score #the_twins_room Time matches 80 run playsound luigis_mansion:music.mini_game_failure music @a[scores={Room=49}] ~ ~ ~ 1000
execute if score #the_twins_room Time matches 80 run scoreboard players set @a[scores={Room=49}] Music 40
execute if score #the_twins_room Time matches 120 as @a[scores={Room=49}] run function luigis_mansion:other/music/set/room
execute if score #the_twins_room Time matches 120 as @a[tag=!pause_dialog,scores={Room=49},tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #the_twins_room Time matches 120 run function 3ds_remake:room/hidden/the_twins_room/wrong_box