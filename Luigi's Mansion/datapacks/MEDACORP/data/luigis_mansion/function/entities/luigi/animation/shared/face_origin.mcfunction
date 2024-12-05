summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
function luigis_mansion:entities/luigi/move/execute {execute:"at @s facing entity @e[type=minecraft:marker,tag=temp] feet",teleport:"~ ~ ~ ~ 0"}
kill @e[type=minecraft:marker,tag=temp,limit=1]