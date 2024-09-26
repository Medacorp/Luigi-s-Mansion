execute store result score #temp Time run random value 1..100
$execute if score #temp Time matches ..$(chance) run tag @s add always_pull_players
scoreboard players reset #temp Time