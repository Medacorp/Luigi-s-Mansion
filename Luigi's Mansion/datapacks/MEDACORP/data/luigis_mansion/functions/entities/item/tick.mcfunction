execute unless entity @s[scores={ActionTime=0..}] run scoreboard players set @s ActionTime 0
scoreboard players add @s SpawnTime 1
tag @s[scores={SpawnTime=40}] add vacuumable
tag @s[scores={SpawnTime=600},tag=!eternal] add dead
tag @s remove item_is_pulled
tag @s[scores={SpawnTime=..19}] add item_is_pulled

execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute at @s run function #luigis_mansion:entities/item/physics
execute if data entity @s ArmorItems[3].tag.particle at @s run function luigis_mansion:entities/item/particle with entity @s ArmorItems[3].tag.particle
execute if data entity @s ArmorItems[3].tag.particle_trail at @s run function luigis_mansion:entities/item/particle_trail with entity @s ArmorItems[3].tag
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ

execute if entity @s[tag=picked_up] run function luigis_mansion:entities/item/picked_up with entity @s ArmorItems[3].tag
tag @s[tag=picked_up] add dead
tag @a[tag=collector] remove collector
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall