scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={Toad2Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=49..}] Dialog 1
scoreboard players add @s[scores={Dialog=..48}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..145}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..146}] as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
tag @s[scores={Dialog=1}] add explaining
scoreboard players set @s[scores={Dialog=1}] AnimationProgress 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.repeat.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_2.repeat.1.more"}]}
tag @s[scores={Dialog=48}] remove explaining
scoreboard players set @s[scores={Dialog=48}] AnimationProgress 0
execute if entity @s[scores={Dialog=48}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger Toad2Choice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger Toad2Choice set 2"}}]}
execute if entity @s[scores={Dialog=48}] run scoreboard players enable @a[tag=same_room] Toad2Choice
execute if entity @s[scores={Dialog=50}] as @a[scores={Toad2Choice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=51}] if score #toad_amiibo Selected matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.toad.heal","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=51}] if score #toad_amiibo Selected matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.toad.heal.more"}]}
execute if entity @s[scores={Dialog=146}] if score #toad_amiibo Selected matches 1 at @a[gamemode=!spectator,tag=!looking_at_map] run function 3ds_remake:spawn_entities/item/huge_heart
execute if entity @s[scores={Dialog=146}] if score #toad_amiibo Selected matches 1 at @e[tag=game_boy_horror_location] run function 3ds_remake:spawn_entities/item/huge_heart
execute if score #toad_amiibo Selected matches 1 unless entity @a[tag=!gooigi,scores={Health=..99}] unless entity @a[tag=gooigi,scores={Health=..49}] run scoreboard players set @s[scores={Dialog=50}] Dialog 146
execute if score #toad_amiibo Selected matches 0 run scoreboard players set @s[scores={Dialog=50}] Dialog 146
execute if entity @s[scores={Dialog=146}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=146}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={Toad2Choice=0..}] Toad2Choice
scoreboard players set @s[tag=!talk] Dialog 0
scoreboard players set @s[tag=!talk,tag=explaining] AnimationProgress 0
tag @s[tag=!talk] remove explaining