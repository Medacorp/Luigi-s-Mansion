scoreboard players operation #temp KillerID = @s KillerID
execute as @a[tag=!spectator] if score @s ID = #temp KillerID run tag @s add killer
function luigis_mansion:entities/ghost/capture
function luigis_mansion:other/drop_loot
scoreboard players reset #temp KillerID
tag @a remove killer