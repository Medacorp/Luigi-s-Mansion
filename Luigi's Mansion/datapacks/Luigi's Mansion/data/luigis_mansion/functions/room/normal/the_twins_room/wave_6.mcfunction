setblock 738 20 40 minecraft:air
setblock 742 20 46 minecraft:air
setblock 747 20 43 minecraft:air
setblock 747 20 37 minecraft:air
setblock 742 20 34 minecraft:air
scoreboard players set #the_twins_room Wave 6
kill @e[scores={Room=49},type=minecraft:marker,tag=ghost]
execute as @a[scores={Room=49},gamemode=!spectator] run function luigis_mansion:other/music/set/danger