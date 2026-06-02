scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"spawn_entity"}

$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=1}] add successful_spawn
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:entities/ceiling_surprise/attack/spawn_entity_search with entity @s
data modify entity @s[scores={ActionTime=1},tag=successful_spawn] data.loot set from entity @s data.loot_storage.attack
execute if data entity @s[scores={ActionTime=1},tag=successful_spawn] data.loot run data modify entity @s data.loot.contents[].variables.owner set from entity @s UUID
execute if data entity @s[scores={ActionTime=1},tag=successful_spawn] data.loot run function luigis_mansion:other/drop_loot
tag @s[scores={ActionTime=41},tag=successful_spawn] add laugh
tag @s[scores={ActionTime=41},tag=!successful_spawn] add complain
tag @s[scores={ActionTime=41}] remove attack
scoreboard players set @s[scores={ActionTime=41}] ActionTime 0