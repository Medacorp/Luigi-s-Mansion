setblock 738 20 -25 minecraft:air
setblock 744 20 -31 minecraft:air
setblock 747 20 -28 minecraft:air
setblock 747 20 -22 minecraft:air
setblock 744 20 -19 minecraft:air
scoreboard players set #twins_room Wave 6
kill @e[scores={Room=49},type=minecraft:marker,tag=ghost]
execute as @a[scores={Room=49},gamemode=!spectator] run function luigis_mansion:other/music/set/danger