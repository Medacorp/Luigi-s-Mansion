teleport @s[scores={PositionIntZ=23}] ~ ~ ~-1
teleport @s[scores={PositionIntX=780..782,PositionIntZ=5}] ~ ~ ~1
teleport @s[scores={PositionIntX=783..795,PositionIntZ=5}] ~ ~ ~-2
teleport @s[scores={PositionIntX=796}] ~-1 ~ ~
teleport @s[scores={PositionIntX=779}] ~-2 ~ ~

teleport @s[scores={PositionIntY=76}] ~ ~1 ~
execute if entity @s[scores={PositionIntY=84,PositionIntX=788..789,PositionIntZ=21..22}] run function #luigis_mansion:room/underground_lab/spectator_enter_mansion
execute unless entity @s[scores={PositionIntX=788..789,PositionIntZ=21..22}] run teleport @s[scores={PositionIntY=84}] ~ ~-1 ~