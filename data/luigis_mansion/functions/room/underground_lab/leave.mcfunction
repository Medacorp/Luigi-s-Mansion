title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute in minecraft:overworld run teleport @s 760 89.9375 8.0 90 0
execute in minecraft:overworld positioned 789 90 14 unless entity @e[distance=..0.7,tag=e_gadd,limit=1] run function luigis_mansion:spawn_entities/e_gadd
execute in minecraft:overworld positioned 789 90 14 run scoreboard players set @e[distance=..0.7,tag=e_gadd,limit=1] Room 0
scoreboard players set @s Room 0
function luigis_mansion:other/music/set/silence
stopsound @s music
playsound luigis_mansion:music.leaving_the_lab music @s ~ ~ ~ 1000
scoreboard players set @s Music 260
scoreboard players set @s Health 100
tag @s remove seen_room_name