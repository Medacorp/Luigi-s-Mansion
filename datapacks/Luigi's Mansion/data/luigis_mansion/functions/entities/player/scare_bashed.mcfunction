effect give @s minecraft:slowness 1 9 true
execute at @s run playsound luigis_mansion:entity.player.scare_bashed player @a[tag=same_room] ~ ~ ~ 1
summon minecraft:marker ~ ~ ~ {Tags:["temp"]}
execute at @s facing entity @e[type=minecraft:marker,tag=temp] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
kill @e[type=minecraft:marker,tag=temp,limit=1]
scoreboard players reset @s MaxHealthTime