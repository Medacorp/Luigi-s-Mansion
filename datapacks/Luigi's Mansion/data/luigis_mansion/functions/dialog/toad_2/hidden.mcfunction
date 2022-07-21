scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..375}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..376}] as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_2.1"}]}
execute if entity @s[scores={Dialog=56}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_2.2","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=56}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_2.2.more"}]}
tag @s[scores={Dialog=88}] add happy
scoreboard players set @s[scores={Dialog=88}] AnimationProg 0
execute if entity @s[scores={Dialog=88}] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=88}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_2.3","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=88}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_2.3.more"}]}
tag @s[scores={Dialog=216}] add turning_on_lights
scoreboard players set @s[scores={Dialog=216}] AnimationProg 0
execute if entity @s[scores={Dialog=216}] run function luigis_mansion:room/hidden/balcony_1/clear
tag @s[scores={Dialog=236}] add explaining
scoreboard players set @s[scores={Dialog=236}] AnimationProg 0
execute if entity @s[scores={Dialog=236}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_2.4"}]}
execute if entity @s[scores={Dialog=356}] as @a[tag=same_room,tag=!spectator,tag=!enthusiastic,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={Dialog=376}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=376}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
tag @s[tag=!talk] remove turning_on_lights
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[tag=!talk,tag=explaining] AnimationProg 0
execute if entity @s[tag=!talk,scores={Dialog=..215},tag=happy] run scoreboard players set @s AnimationProg 0
tag @s[tag=!talk] remove explaining
tag @s[tag=!talk,scores={Dialog=..215}] remove happy
scoreboard players set @s[tag=!talk] Dialog 0