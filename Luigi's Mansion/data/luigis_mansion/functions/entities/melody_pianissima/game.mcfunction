scoreboard players add @s Dialog 1
scoreboard players set @a[tag=same_room] MusicType 23
scoreboard players set @s[scores={Dialog=473}] AnimationProg 0
tag @s[scores={Dialog=473}] remove nod
execute if entity @s[scores={Dialog=473}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=473}] run playsound luigis_mansion:music.super_mario_bros_3 music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=473}] run scoreboard players set @a[tag=same_room] Music 220
tag @s[scores={Dialog=712}] add nod
execute if entity @s[scores={Dialog=712}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"translate":"luigis_mansion:dialog.melody_pianissima.game.1"}]}
execute if entity @s[scores={Dialog=712}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"translate":"luigis_mansion:dialog.melody_pianissima.game.1.more"}]}
tag @s[scores={Dialog=960}] remove nod
tag @s[scores={Dialog=960}] add listen
execute if entity @s[scores={Dialog=960}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.melody_pianissima.game.no.1","clickEvent":{"action":"run_command","value":"/trigger MelodyChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.melody_pianissima.game.no.2","clickEvent":{"action":"run_command","value":"/trigger MelodyChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.melody_pianissima.game.yes","clickEvent":{"action":"run_command","value":"/trigger MelodyChoice set 2"}}]}
execute if entity @s[scores={Dialog=960}] run scoreboard players enable @a[tag=same_room] MelodyChoice