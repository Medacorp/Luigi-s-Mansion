scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.clockwork_soldier.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.clockwork_soldier.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0