scoreboard players add @s SpawnTime 1
tag @s[scores={SpawnTime=40}] add affected_by_vacuum
tag @s[scores={SpawnTime=600},tag=!eternal] add dead
tag @s remove bounced_already

execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute at @s[tag=in_vacuum] run function luigis_mansion:entities/item/pull with entity @s ArmorItems[3].tag.luigis_mansion
execute at @s run function luigis_mansion:entities/item/physics with entity @s ArmorItems[3].tag.luigis_mansion.physics
execute if data entity @s ArmorItems[3].tag.luigis_mansion.particle at @s run function luigis_mansion:entities/item/particle with entity @s ArmorItems[3].tag.luigis_mansion.particle
execute if data entity @s ArmorItems[3].tag.luigis_mansion.particle_trail at @s run function luigis_mansion:entities/item/particle_trail with entity @s ArmorItems[3].tag.luigis_mansion
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ

execute if entity @s[tag=picked_up] run function luigis_mansion:entities/item/picked_up with entity @s ArmorItems[3].tag.luigis_mansion.item
tag @s[tag=picked_up] add dead
tag @a[tag=collector] remove collector