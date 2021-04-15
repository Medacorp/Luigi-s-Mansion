execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Tags:["interact","gameboy_horror_scan"],Duration:1}
scoreboard players operation #temp Room = @s Room
execute as @e[tag=interact,limit=1] at @s run function luigis_mansion:room/interactions
kill @e[tag=interact,limit=1]
scoreboard players reset #temp Room
tag @s add target