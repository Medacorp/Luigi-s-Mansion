scoreboard players operation #temp ID = @s ID
execute as @a if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
$execute as @e[tag=this_player,limit=1] run $(command)
tag @e[tag=this_player,limit=1] remove this_player