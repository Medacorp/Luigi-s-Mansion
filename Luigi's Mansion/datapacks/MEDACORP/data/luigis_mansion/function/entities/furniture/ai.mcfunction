execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @s remove lit
$execute unless entity @s[tag=static,tag=!drop_loot] run function luigis_mansion:entities/furniture/type/$(furniture_type)
execute if entity @s[tag=mirror,tag=reflects_entities] if score #global_mirror_reflections Selected matches 1 run function luigis_mansion:entities/furniture/type/mirror
execute if entity @s[tag=elemental_source] run function luigis_mansion:entities/furniture/type/elemental_source
execute if entity @s[tag=lamp] run function luigis_mansion:entities/furniture/type/lamp
execute if entity @s[scores={FurnitureLightStrength=0..15}] run function luigis_mansion:entities/furniture/spawn/light
execute if entity @s[tag=spawn_particles] run function luigis_mansion:entities/furniture/spawn/particles

execute unless entity @s[tag=!shake,tag=!long_shake,tag=!was_shaking] run function luigis_mansion:entities/furniture/shake
execute unless entity @s[tag=no_dust,tag=no_loot] run function luigis_mansion:entities/furniture/loot