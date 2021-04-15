scoreboard players operation #temp Move = @s Move
scoreboard players operation #temp ID = @s ID
tag @s add me
function luigis_mansion:entities/shot_ice/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=200}] add dead
execute if entity @a[distance=..0.7,gamemode=!spectator] run tag @s[tag=!player_shot] add hit
execute if entity @s[tag=hit] run effect give @a[distance=..0.7,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=hit] run scoreboard players set @a[distance=..0.7,gamemode=!spectator] ForcedDamage 4
tag @s[tag=hit] add dead
execute at @s as @e[distance=..0.7,tag=!shot_ice] run function luigis_mansion:items/poltergust_3000/effect_on_entity/ice
execute at @s unless block ~ ~ ~ minecraft:air run function luigis_mansion:items/poltergust_3000/effect_on_block/vacuum
execute at @s run function luigis_mansion:items/poltergust_3000/interact
execute at @s[tag=dead] run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1
scoreboard players reset #temp ID
tag @s remove me