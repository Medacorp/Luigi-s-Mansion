scoreboard players set #temp Move 40
scoreboard players add @s[tag=move] SpawnTime 1
function luigis_mansion:entities/billiards_ball/move_forward
execute at @s[tag=move,scores={SpawnTime=8}] run tag @e[tag=billiards_ball,distance=..2] add vacuumable
tag @s[tag=move,scores={SpawnTime=8}] add dead