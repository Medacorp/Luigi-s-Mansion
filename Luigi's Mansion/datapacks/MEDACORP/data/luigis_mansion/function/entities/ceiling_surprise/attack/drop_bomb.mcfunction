scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"drop_bomb"}

$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data entity set value {damage:{}}
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:spawn_entities/bomb
tag @s[scores={ActionTime=41}] add laugh
tag @s[scores={ActionTime=41}] remove attack
scoreboard players set @s[scores={ActionTime=41}] ActionTime 0