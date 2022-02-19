scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={Toad3Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=73..}] Dialog 1
scoreboard players add @s[scores={Dialog=..72}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..73}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..74}] as @a[tag=same_room] unless entity @s[scores={MusicGroup=0,MusicType=10}] run function luigis_mansion:other/music/set/toad
tag @s[scores={Dialog=1}] add explaining
execute if entity @s[scores={Dialog=1}] run scoreboard players set @e[tag=this_model,tag=toad_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_3.repeat.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_3.repeat.1.more"}]}
tag @s[scores={Dialog=72}] remove explaining
execute if entity @s[scores={Dialog=72}] run scoreboard players set @e[tag=this_model,tag=toad_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=72}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger Toad3Choice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger Toad3Choice set 2"}}]}
execute if entity @s[scores={Dialog=72}] run scoreboard players enable @a[tag=same_room] Toad3Choice
execute if entity @s[scores={Dialog=74}] as @a[scores={Toad3Choice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=74}] run scoreboard players set @a Toad3Choice 0
execute if entity @s[scores={Dialog=74}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=74}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={Toad3Choice=0..}] Toad3Choice
scoreboard players set @s[tag=!talk] Dialog 0
execute if entity @s[tag=!talk,tag=explaining] run scoreboard players set @e[tag=this_model,tag=toad_head,limit=1] AnimationProg 0
tag @s[tag=!explaining] remove explaining