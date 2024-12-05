execute if score #conservatory Wave matches -1 run tag @s add remove_from_existence
execute if score #conservatory Wave matches 1..2 run tag @s remove visible
execute if score #conservatory Wave matches 2 if entity @s[tag=!playing_dialog] if entity @e[tag=luigi,distance=..5,limit=1] run function luigis_mansion:entities/melody_pianissima/ai/mansion/normal/play
execute if score #conservatory Wave matches 4 run function luigis_mansion:entities/melody_pianissima/ai/mansion/normal/battle