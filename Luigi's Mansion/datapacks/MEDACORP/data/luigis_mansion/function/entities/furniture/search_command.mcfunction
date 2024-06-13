execute store result score #temp ID run scoreboard players get @s SearcherID
execute as @a[tag=!spectator] if score @s ID = #temp ID run tag @s add searcher
$execute at @a[tag=searcher] run $(search_command)
tag @e[tag=searcher,limit=1] remove searcher
scoreboard players reset #temp ID