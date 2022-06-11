execute unless entity @s[scores={ActionTime=0..}] if entity @s[tag=key,tag=!no_spawn_sound] run playsound luigis_mansion:item.key.spawn player @a ~ ~ ~ 1
execute unless entity @s[scores={ActionTime=0..}] run scoreboard players set @s ActionTime 0
execute if entity @s[tag=key,tag=!rotated,tag=!display] run function luigis_mansion:entities/item/key_rotate
scoreboard players add @s SpawnTime 1
tag @s[scores={SpawnTime=20}] add vacuumable
tag @s[scores={SpawnTime=600},tag=!eternal] add dead
tag @s remove item_is_pulled
tag @s[scores={SpawnTime=..19}] add item_is_pulled

execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute at @s run function #luigis_mansion:entities/item/physics
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ

execute if entity @s[tag=picked_up] run function #luigis_mansion:entities/item/picked_up
tag @s[tag=picked_up] add dead
tag @a[tag=collector] remove collector
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall