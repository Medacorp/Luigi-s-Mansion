execute if score #the_twins_room Time matches 1.. run scoreboard players add #the_twins_room Time 1
execute at @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=spawn,tag=!remove_from_existence] run function luigis_mansion:room/hidden/the_twins_room/right_box
tag @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=spawn,tag=!remove_from_existence] add remove_from_existence
execute unless score #the_twins_room Time matches 1.. at @e[tag=hide_and_seek_box,tag=open,scores={Room=49}] positioned ~ ~1.4 ~ unless entity @e[distance=..0.7,tag=ghost,limit=1] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"henry"}}},limit=1] run scoreboard players add #the_twins_room Time 1
execute if score #the_twins_room Time matches 1.. as @e[tag=luigi,scores={Room=49},tag=!door_animation] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #the_twins_room Time matches 20..39 run tag @e[tag=hide_and_seek_box,tag=!open,scores={Room=49}] add shake
execute if score #the_twins_room Time matches 40 as @e[tag=hide_and_seek_box,tag=open,scores={Room=49}] at @s run function luigis_mansion:entities/furniture/search/generic
execute if score #the_twins_room Time matches 40 run tag @e[tag=hide_and_seek_box,scores={Room=49}] add open
execute if score #the_twins_room Time matches 40 at @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=empty_marker] run function luigis_mansion:room/hidden/the_twins_room/right_box
execute if score #the_twins_room Time matches 40 run tag @e[tag=ghost,tag=portrait_ghost,type=minecraft:marker,scores={Room=49},tag=empty_marker] add remove_from_existence
execute if score #the_twins_room Time matches 80 run tellraw @a[scores={Room=49}] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.henry",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.twins.game.0"}]}
execute if score #the_twins_room Time matches 80 as @a[scores={Room=49}] run function luigis_mansion:other/music/set/minigame_failure
execute if score #the_twins_room Time matches 120 as @a[scores={Room=49}] run function luigis_mansion:other/music/set/dark_room
execute if score #the_twins_room Time matches 120 as @e[tag=luigi,scores={Room=49},tag=!door_animation] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #the_twins_room Time matches 120 run function luigis_mansion:room/hidden/the_twins_room/wrong_box