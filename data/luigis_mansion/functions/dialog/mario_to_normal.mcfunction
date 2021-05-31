execute if entity @s[scores={Dialog=32}] unless entity @e[tag=mario,limit=1] run scoreboard players add @s Dialog 1
scoreboard players add @s[scores={Dialog=31}] Dialog 1
execute if entity @s[scores={Dialog=30}] if entity @e[tag=marios_painting,nbt={Item:{id:"minecraft:painting"}}] run scoreboard players add @s Dialog 1
scoreboard players add @s[scores={Dialog=1..29}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run setblock 770 77 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=1}] run summon minecraft:item_frame 771 77 -12 {Facing:5b,ItemRotation:0b,Invulnerable:1b,Item:{},Tags:["marios_painting","portrait"]}
execute if entity @s[scores={Dialog=10}] run setblock 770 77 -12 minecraft:air
execute if entity @s[scores={Dialog=10}] run setblock 770 78 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=10}] run teleport @e[tag=marios_painting] 771 78 -12
execute if entity @s[scores={Dialog=20}] run setblock 770 79 -12 minecraft:light_gray_concrete
execute if entity @s[scores={Dialog=20}] run teleport @e[tag=marios_painting] 771 79 -12
execute if entity @s[scores={Dialog=30}] run scoreboard players set @a[scores={Room=-3}] MusicType -1
execute if entity @s[scores={Dialog=30}] run scoreboard players set @a[scores={Room=-3}] Music 0
execute if entity @s[scores={Dialog=30}] run stopsound @a[scores={Room=-3}] music
execute if entity @s[scores={Dialog=31}] run data merge entity @e[tag=marios_painting,limit=1] {Fixed:1b,ItemRotation:0b,Silent:1b}
execute if entity @s[scores={Dialog=31}] run teleport @e[tag=marios_painting] 771 78 -12
execute if entity @s[scores={Dialog=31}] run summon minecraft:armor_stand 770 79 -12 {Tags:["mario","portrificationizing"],Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{}],DisabledSlots:2039583}
execute if entity @s[scores={Dialog=31}] run playsound luigis_mansion:music.mario_to_normal_1 music @a[scores={Room=-3}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=31}] run scoreboard players set @a[scores={Room=-3}] Music 710
tag @s[scores={Dialog=33}] remove mario_to_normal
scoreboard players set @s[tag=!mario_to_normal] Dialog 0