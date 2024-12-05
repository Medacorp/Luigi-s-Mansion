scoreboard players operation #temp KillerID = @s KillerID
execute as @e[tag=player] if score @s ID = #temp KillerID run tag @s add killer
function luigis_mansion:entities/ghost/capture with entity @a[tag=killer,limit=1]
function luigis_mansion:other/drop_loot
scoreboard players reset #temp KillerID
tag @e[tag=killer] remove killer
tag @s add dead