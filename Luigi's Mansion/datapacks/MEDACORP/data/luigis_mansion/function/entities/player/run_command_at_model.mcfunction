scoreboard players operation #temp ID = @s ID
execute as @e[tag=luigi,tag=!dead] if score @s ID = #temp ID run tag @s add this_luigi
scoreboard players reset #temp ID
$execute at @e[tag=this_luigi,limit=1] run $(command)
tag @e[tag=this_luigi,limit=1] remove this_luigi