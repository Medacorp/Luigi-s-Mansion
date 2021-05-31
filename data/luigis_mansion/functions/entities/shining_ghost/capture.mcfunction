scoreboard players operation #temp KillerID = @s KillerID
execute as @a[gamemode=!spectator] if score @s ID = #temp KillerID run tag @s add killer
function luigis_mansion:entities/ghost/capture
scoreboard players reset #temp KillerID
tag @a remove killer