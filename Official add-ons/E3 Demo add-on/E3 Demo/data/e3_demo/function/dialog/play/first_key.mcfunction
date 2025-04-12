execute if score #dialog Dialog matches 1.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 0 if entity @a[tag=same_room,tag=luigi,x=751.0,y=11,z=9.0,distance=..5] run scoreboard players add #dialog Dialog 1

execute if score #dialog Dialog matches 0 run tag @e[tag=same_room] add abort_dialog_tick
execute if score #dialog Dialog matches 0 run return 0
tag @a[tag=same_room] add prevent_item_lock
execute if score #dialog Dialog matches 1 run tag @e[tag=furniture,tag=same_room] remove applied_dialog_effects
execute if score #dialog Dialog matches 1.. run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 1.. as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1.. run tag @e[tag=candle_flame,tag=same_room] remove no_ai
execute if score #dialog Dialog matches 1 run summon minecraft:armor_stand 751.0 12.1 9.0 {Rotation:[-90.0f,0.0f],CustomName:{type:"translatable",translate:"e3_demo:entity.ghost"},Tags:["first_key","same_room"],equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_model_data":{strings:["cutscene"]},"minecraft:item_model":"luigis_mansion:key"}}},NoGravity:1b,Invulnerable:1b,Silent:1b,Invisible:1b,DisabledSlots:2039583}
execute if score #dialog Dialog matches 1 store result score @e[tag=first_key,tag=same_room] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function e3_demo:other/music/play/group_2/first_key
execute if score #dialog Dialog matches 1 as @e[tag=same_room,tag=luigi,x=751.0,y=11,z=9.0,distance=..7] run function luigis_mansion:entities/luigi/move/teleport {teleport:"753 11 9 110 0"}
execute if score #dialog Dialog matches 1.. as @e[tag=same_room,tag=luigi,nbt=!{data:{animation:{}}},limit=1] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"754.0 11.5 7.0 76 -11"}
execute if score #dialog Dialog matches 1..120 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.0125 ~0.004 ~0.016 ~0.116 ~0.016"}
execute if score #dialog Dialog matches 121..160 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"752 12 9.0 90 -8"}
execute if score #dialog Dialog matches 161..180 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.135 ~-0.05 9.0 90 ~-0.1"}
execute if score #dialog Dialog matches 181..190 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"754.7 11 9.0 90 -10"}
execute if score #dialog Dialog matches 191 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"753.3 12 10.0 108 0"}
execute if score #dialog Dialog matches 191..220 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.03 ~-0.016 ~-0.01 ~0.3 ~-0.33"}
execute if score #dialog Dialog matches 221..230 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"752.3 11.5 9.7 117 -10"}
execute if score #dialog Dialog matches 231..250 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"752.3 ~-0.025 9.7 ~0.05 ~2.95"}
execute if score #dialog Dialog matches 251..270 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"752.3 ~-0.025 9.7 118 49"}
execute if score #dialog Dialog matches 271 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"753 13 15 130 24"}
execute if score #dialog Dialog matches 271..310 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"753 ~0.025 15 ~-1 ~-0.375"}
execute if score #dialog Dialog matches 311 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"750 21.5 3 40 10"}
execute if score #dialog Dialog matches 311..370 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"750 21.5 3 ~0.466 ~-0.016"}
execute if score #dialog Dialog matches 371..375 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"750 21.5 3 68 9"}
execute if score #dialog Dialog matches 376 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"750 21.5 3 68 9"}
execute if score #dialog Dialog matches 376..415 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated 68 9",teleport:"^ ^ ^0.09 ~ ~"}
execute if score #dialog Dialog matches 416..420 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"751.8 11.5 9.0 90 75"}
execute if score #dialog Dialog matches 421..480 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.008 ~-0.02 9.0 90 75"}
execute if score #dialog Dialog matches 481..500 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"751.3 10.3 9.0 90 75"}
execute if score #dialog Dialog matches 500 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 1..370 at @e[tag=same_room,tag=first_key] run particle minecraft:dust{color:15395562,scale:1f} ~ ~1.4 ~ 0.2 0.2 0.2 0 5
execute if score #dialog Dialog matches 1..40 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~-0.025
execute if score #dialog Dialog matches 41..100 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~0.025
execute if score #dialog Dialog matches 101..120 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~0.001 ~-0.025
execute if score #dialog Dialog matches 121..122 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~-0.22 ~
execute if score #dialog Dialog matches 216 at @e[tag=same_room,tag=first_key] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-90.0f,0.0f],CustomName:{type:"translatable",translate:"luigis_mansion:item.key"},Pose:{Head:[0.0f,0.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_model_data":{strings:["cutscene"]},"minecraft:item_model":"luigis_mansion:key"}}},Tags:["key_model","same_room"],DisabledSlots:2039583}
execute if score #dialog Dialog matches 216 store result score @e[tag=key_model,tag=same_room] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 216 run item replace entity @e[tag=same_room,tag=first_key] armor.head with minecraft:air
execute if score #dialog Dialog matches 216..220 as @e[tag=same_room,tag=key_model,limit=1] at @s run teleport @s ~ ~0.1 ~
execute if score #dialog Dialog matches 221..228 as @e[tag=same_room,tag=key_model,limit=1] at @s run teleport @s ~ ~-0.3 ~
execute if score #dialog Dialog matches 229 as @e[tag=same_room,tag=key_model,limit=1] at @s run teleport @s ~ ~-0.2 ~
execute if score #dialog Dialog matches 230 run data merge entity @e[tag=same_room,tag=key_model,limit=1] {Pose:{Head:[0.0f,0.0f,-90.0f]},Rotation:[30.0f,0.0f]}
execute if score #dialog Dialog matches 216..235 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~0.2
execute if score #dialog Dialog matches 256..275 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~0.2
execute if score #dialog Dialog matches 252..272 at @e[tag=same_room,tag=first_key] run tag @e[tag=same_room,tag=candle_flame,distance=..1.5] add extinguish
execute if score #dialog Dialog matches 275..294 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.2 ~0.2 ~
execute if score #dialog Dialog matches 295..314 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.1 ~ ~-0.1
execute if score #dialog Dialog matches 290..310 at @e[tag=same_room,tag=first_key] run tag @e[tag=same_room,tag=candle_flame,distance=..2.5] add extinguish
execute if score #dialog Dialog matches 315..339 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~0.16 ~-0.2
execute if score #dialog Dialog matches 340..359 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.4 ~ ~-0.05
execute if score #dialog Dialog matches 360..368 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~0.2 ~ ~
execute if score #dialog Dialog matches 385..389 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.4 ~ ~
execute if score #dialog Dialog matches 389..394 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.4 ~0.2 ~
execute if score #dialog Dialog matches 500 run tag @e[tag=same_room,tag=first_key] add remove_from_existence
execute if score #dialog Dialog matches 500 run data modify storage luigis_mansion:data entity set value {silent:1b,room:1}
execute if score #dialog Dialog matches 500 run data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 500 positioned 751.0 11 9.0 rotated -90 90 run function luigis_mansion:spawn_entities/item/key {door:"living_room"}
execute if score #dialog Dialog matches 500 run tag @e[tag=same_room,tag=key_model,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 500 as @e[tag=same_room,tag=luigi,x=751.0,y=11,z=9.0,distance=..7] run function luigis_mansion:entities/luigi/move/teleport {teleport:"752 11 9 110 0"}
execute if score #dialog Dialog matches 500 as @e[tag=same_room,tag=luigi,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 500 run scoreboard players set #dialog Dialog -1