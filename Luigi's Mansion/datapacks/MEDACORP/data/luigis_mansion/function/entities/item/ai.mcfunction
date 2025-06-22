$teleport @s ~ ~$(physics_offset) ~
scoreboard players add @s Move 0
scoreboard players add @s SpawnTime 1
tag @s[scores={SpawnTime=40}] add affected_by_vacuum
execute if entity @s[tag=!eternal,scores={SpawnTime=260..}] run function luigis_mansion:entities/item/despawning
tag @s remove bounced_already

execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute at @s[tag=in_vacuum] facing entity @e[tag=vacuuming_me,sort=nearest,limit=1] feet positioned ~ ~0.1 ~ run function luigis_mansion:entities/item/pull
execute at @s run function luigis_mansion:entities/item/physics with entity @s data.physics
execute if data entity @s data.particle at @s run function luigis_mansion:entities/item/particle with entity @s data.particle
execute if data entity @s data.particle_trail at @s run function luigis_mansion:entities/item/particle_trail with entity @s data
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ

execute at @s[tag=picked_up,tag=!dead] run function luigis_mansion:entities/item/picked_up with entity @s data.item
tag @s[tag=picked_up,tag=!captured] add dead
tag @e[tag=collector] remove collector
$execute at @s run teleport @s ~ ~-$(physics_offset) ~