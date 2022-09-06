scoreboard players set #temp Move 20
function luigis_mansion:entities/moving_ice/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:spawn_entities/ice_spikes
scoreboard players set @s[scores={ActionTime=6}] ActionTime 0
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall