execute if score #conservatory Wave matches 1..2 run tag @s[tag=visible,tag=!talk] remove visible
execute if score #conservatory Wave matches 2 if entity @a[tag=!spectator,distance=..5] run tag @s add talk
execute if score #conservatory Wave matches 2 if entity @s[tag=talk] run function luigis_mansion:entities/melody_pianissima/ai/mansion/hidden/play
execute if score #conservatory Wave matches 3 run function luigis_mansion:entities/melody_pianissima/ai/mansion/normal/battle