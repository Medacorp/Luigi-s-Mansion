execute unless entity @s[tag=!death_animation,tag=!revived_animation] run tag @s remove riding_poltergust
tag @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move] remove riding_poltergust

execute unless score @s SlipX matches 0 at @s[tag=riding_poltergust,scores={TeleportDelayTimer=0}] run function luigis_mansion:entities/luigi/riding_poltergust/slip_x
execute unless score @s SlipZ matches 0 at @s[tag=riding_poltergust,scores={TeleportDelayTimer=0}] run function luigis_mansion:entities/luigi/riding_poltergust/slip_z

execute store result score #temp SlipX run data get entity @s Pos[0] 100
execute store result score #temp SlipZ run data get entity @s Pos[2] 100
scoreboard players operation #temp SlipX -= @s PositionX
scoreboard players operation #temp SlipZ -= @s PositionZ
execute if score #temp SlipX matches 21.. run scoreboard players set #temp SlipX 20
execute if score #temp SlipX matches ..-21 run scoreboard players set #temp SlipX -20
execute if score #temp SlipZ matches 21.. run scoreboard players set #temp SlipZ 20
execute if score #temp SlipZ matches ..-21 run scoreboard players set #temp SlipZ -20
scoreboard players operation @s SlipX += #temp SlipX
scoreboard players operation @s SlipZ += #temp SlipZ
scoreboard players reset #temp SlipX
scoreboard players reset #temp SlipZ
scoreboard players set @s[tag=x_stop] SlipX 0
scoreboard players set @s[tag=z_stop] SlipZ 0
scoreboard players set @s[tag=!riding_poltergust] SlipX 0
scoreboard players set @s[tag=!riding_poltergust] SlipZ 0
tag @s remove x_stop
tag @s remove z_stop