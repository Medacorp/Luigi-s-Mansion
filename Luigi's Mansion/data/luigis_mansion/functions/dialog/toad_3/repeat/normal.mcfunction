execute if entity @a[scores={Toad3Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=73..}] Dialog 1
scoreboard players add @s[scores={Dialog=..72}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 10
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 0
tag @s[scores={Dialog=1}] add explaining
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_3.repeat.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_3.repeat.1.more"}]}
tag @s[scores={Dialog=72}] remove explaining
execute if entity @s[scores={Dialog=72}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.yes","clickEvent":{"action":"run_command","value":"/trigger Toad3Choice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger Toad3Choice set 2"}}]}
execute if entity @s[scores={Dialog=72}] run scoreboard players enable @a[tag=same_room] Toad3Choice
execute if entity @s[scores={Dialog=74}] as @a[scores={Toad3Choice=1},limit=1] run function luigis_mansion:entities/player/save_mansion
execute if entity @s[scores={Dialog=74}] run scoreboard players set @a Toad3Choice 0
tag @s[scores={Dialog=74}] remove talk
execute unless entity @a[tag=same_room,distance=..7] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] as @a[scores={Toad3Choice=0..}] run trigger Toad3Choice set 0
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!explaining] remove explaining