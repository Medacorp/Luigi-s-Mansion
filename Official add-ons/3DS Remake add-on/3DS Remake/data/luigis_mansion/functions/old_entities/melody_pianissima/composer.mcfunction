scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=473}] AnimationProgress 0
tag @s[scores={Dialog=473}] remove nod
execute as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=473}] run stopsound @a[tag=same_room,tag=!spectator] music
execute if entity @s[scores={Dialog=473}] run playsound luigis_mansion:music.water music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=473}] run scoreboard players set @a[tag=same_room,tag=!spectator] Music 240
scoreboard players set @s[scores={Dialog=692}] AnimationProgress 0
tag @s[scores={Dialog=692}] add nod
execute if entity @s[scores={Dialog=692}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.composer.1"}]}
execute if entity @s[scores={Dialog=692}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.melody_pianissima","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.composer.1.more"}]}
execute if entity @s[scores={Dialog=828}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"3ds_remake:dialog.melody_pianissima.composer.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger MelodyChoice set 2"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"3ds_remake:dialog.melody_pianissima.composer.no.1","clickEvent":{"action":"run_command","value":"/trigger MelodyChoice set 1"}},{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.melody_pianissima.composer.no.2","clickEvent":{"action":"run_command","value":"/trigger MelodyChoice set 1"}}]}
execute if entity @s[scores={Dialog=828}] run scoreboard players enable @a[tag=same_room,tag=!spectator] MelodyChoice