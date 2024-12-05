scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..100}] at @e[tag=same_room,tag=luigi] positioned ^ ^ ^8 run scoreboard players set @s[distance=..8] Dialog 1
tag @s[scores={Dialog=1}] remove visible
tag @s[scores={Dialog=2}] add visible
execute if score #bed_room_1 Wave matches 1 run scoreboard players set @s[scores={Dialog=101}] Dialog 1
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.lydia.sigh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=101}] VulnerableTime 40
scoreboard players set @s[scores={Dialog=141}] Dialog 0

data modify entity @s[scores={Dialog=101..140}] data.animation set value {namespace:"luigis_mansion",id:"turn_around"}
data remove entity @s[scores={Dialog=0..1}] data.animation