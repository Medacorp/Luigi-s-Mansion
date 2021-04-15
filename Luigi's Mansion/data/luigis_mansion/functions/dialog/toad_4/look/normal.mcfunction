scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 10
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 0
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.look.1"}]}
tag @s[scores={Dialog=72}] remove talk
execute unless entity @a[tag=same_room,distance=..7] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[tag=!talk] Dialog 0