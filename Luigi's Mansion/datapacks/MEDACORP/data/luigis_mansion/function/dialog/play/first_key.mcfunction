execute if score #dialog Dialog matches 1.. run scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 0 if entity @a[tag=same_room,tag=!spectator,x=751.0,y=11,z=9.0,distance=..5] run scoreboard players add #dialog Dialog 1

tag @a[tag=same_room] add prevent_item_lock
execute if score #dialog Dialog matches 0 run tag @e[tag=furniture,tag=same_room,tag=no_ai_dialog] remove no_ai
execute if score #dialog Dialog matches 0 run tag @e[tag=furniture,tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
execute if score #dialog Dialog matches 1 run tag @e[tag=furniture,tag=same_room] remove applied_dialog_effects
execute if score #dialog Dialog matches 1.. run scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute if score #dialog Dialog matches 1.. as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1.. run tag @e[tag=candle_flame,tag=same_room] remove no_ai
execute if score #dialog Dialog matches 1 run summon minecraft:armor_stand 751.0 13 9.0 {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.gold_ghost"}',Tags:["first_key","same_room"],ArmorItems:[{},{},{},{id:"minecraft:brick",count:1,components:{"minecraft:custom_model_data":1}}],NoGravity:1b,Invulnerable:1b,Silent:1b,Invisible:1b,DisabledSlots:2039583}
execute if score #dialog Dialog matches 1 store result score @e[tag=first_key,tag=same_room] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:music.first_key music @a[tag=same_room] ~ ~ ~ 1000
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Music 470
execute if score #dialog Dialog matches 1..370 at @e[tag=same_room,tag=first_key] run particle minecraft:dust{color:[1f,0.6f,0f],scale:1f} ~ ~0.5 ~ 0.2 0.2 0.2 0 5
execute if score #dialog Dialog matches 1..30 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~-0.025
execute if score #dialog Dialog matches 31..60 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~0.05
execute if score #dialog Dialog matches 61..90 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~-0.05
execute if score #dialog Dialog matches 91..120 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~0.025
execute if score #dialog Dialog matches 121..122 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~-0.2 ~
execute if score #dialog Dialog matches 216 at @e[tag=same_room,tag=first_key] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,90.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:brick",count:1,components:{"minecraft:custom_model_data":1}}],Tags:["key_model","same_room"],Rotation:[-90.0f,0.0f],DisabledSlots:2039583}
execute if score #dialog Dialog matches 216 store result score @e[tag=key_model,tag=same_room] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 216 run item replace entity @e[tag=same_room,tag=first_key] armor.head with minecraft:air
execute if score #dialog Dialog matches 216..220 as @e[tag=same_room,tag=key_model,limit=1] at @s run teleport @s ~ ~0.1 ~
execute if score #dialog Dialog matches 221..231 as @e[tag=same_room,tag=key_model,limit=1] at @s run teleport @s ~ ~-0.3 ~
execute if score #dialog Dialog matches 232 as @e[tag=same_room,tag=key_model,limit=1] at @s run teleport @s ~0.35 ~0.2 ~0.35
execute if score #dialog Dialog matches 232 run data merge entity @e[tag=same_room,tag=key_model,limit=1] {Pose:{Head:[45.0f,45.0f,0.01f]},Rotation:[-67.5f,0.0f]}
execute if score #dialog Dialog matches 233 as @e[tag=same_room,tag=key_model,limit=1] at @s run teleport @s ~0.35 ~-0.3 ~0.35
execute if score #dialog Dialog matches 233 run data merge entity @e[tag=same_room,tag=key_model,limit=1] {Pose:{Head:[90.0f,0.0f,0.01f]},Rotation:[-45.0f,0.0f]}
execute if score #dialog Dialog matches 216..255 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~ ~0.2
execute if score #dialog Dialog matches 232..252 at @e[tag=same_room,tag=first_key] positioned ~ ~-0.9 ~ run tag @e[tag=same_room,tag=candle_flame,distance=..1.5] add extinguish
execute if score #dialog Dialog matches 255..274 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.2 ~0.2 ~
execute if score #dialog Dialog matches 275..294 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.1 ~ ~-0.1
execute if score #dialog Dialog matches 270..290 at @e[tag=same_room,tag=first_key] positioned ~ ~-0.9 ~ run tag @e[tag=same_room,tag=candle_flame,distance=..2.5] add extinguish
execute if score #dialog Dialog matches 295..319 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~ ~0.16 ~-0.2
execute if score #dialog Dialog matches 320..339 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.4 ~ ~-0.05
execute if score #dialog Dialog matches 340..348 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~0.2 ~ ~
execute if score #dialog Dialog matches 365..369 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.4 ~ ~
execute if score #dialog Dialog matches 369..374 as @e[tag=same_room,tag=first_key] at @s run teleport @s ~-0.4 ~0.2 ~
execute if score #dialog Dialog matches 469 run tag @e[tag=same_room,tag=first_key] add remove_from_existence
execute if score #dialog Dialog matches 469 run data modify storage luigis_mansion:data entity set value {silent:1b,room:1}
execute if score #dialog Dialog matches 469 run data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 469 at @e[tag=same_room,tag=key_model,limit=1] positioned ~-0.7 ~0.9 ~-0.7 run function luigis_mansion:spawn_entities/item/key {door:"parlor"}
execute if score #dialog Dialog matches 469 run tag @e[tag=same_room,tag=key_model,limit=1] add remove_from_existence
execute if score #dialog Dialog matches 469 run scoreboard players set #dialog Dialog -1