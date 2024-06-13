setblock 738 20 -25 minecraft:air
setblock 742 20 -31 minecraft:air
setblock 747 20 -28 minecraft:air
setblock 747 20 -22 minecraft:air
setblock 742 20 -19 minecraft:air
tag @e[tag=hide_and_seek_box,scores={Room=49}] add remove_from_existence
scoreboard players reset #the_twins_room Time
scoreboard players set #the_twins_room Wave 6
execute as @a[scores={Room=49}] run function luigis_mansion:other/music/set/danger