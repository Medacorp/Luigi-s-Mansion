teleport @s[scores={PositionIntZ=23}] ~ ~ ~-1
teleport @s[scores={PositionIntX=780..782,PositionIntZ=5}] ~ ~ ~1
teleport @s[scores={PositionIntX=783..795,PositionIntZ=5}] ~ ~ ~-2
teleport @s[scores={PositionIntX=796}] ~-1 ~ ~
teleport @s[scores={PositionIntX=779}] ~-2 ~ ~

teleport @s[scores={PositionIntY=76}] ~ ~1 ~
execute if entity @s[scores={PositionIntY=84,PositionIntX=788..789,PositionIntZ=21..22}] run function luigis_mansion:room/default_position_in_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute unless data storage luigis_mansion:data current_state.current_data.mansion_id run teleport @s[scores={PositionIntY=84,PositionIntX=788..789,PositionIntZ=21..22}] ~ ~-1 ~
execute unless entity @s[scores={PositionIntX=788..789,PositionIntZ=21..22}] run teleport @s[scores={PositionIntY=84}] ~ ~-1 ~