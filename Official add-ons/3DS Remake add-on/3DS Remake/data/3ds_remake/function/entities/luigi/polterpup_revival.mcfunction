function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=100..140}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=100..140}] run scoreboard players set @a[tag=same_room] Music 320
execute if entity @s[scores={Dialog=120}] run scoreboard players operation #temp ID = @s ID
execute if entity @s[scores={Dialog=120},tag=flipped_gravity] run data modify storage luigis_mansion:data entity set value {tags:["flipped_gravity"]}
execute at @s[scores={Dialog=120},tag=!flipped_gravity] unless score #mirrored Selected matches 1 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID rotated as @s run function 3ds_remake:spawn_entities/ghost/polterpup
execute at @s[scores={Dialog=120},tag=flipped_gravity] unless score #mirrored Selected matches 1 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID rotated as @s run function 3ds_remake:spawn_entities/ghost/polterpup
execute at @s[scores={Dialog=120},tag=!flipped_gravity] if score #mirrored Selected matches 1 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID rotated as @s run function 3ds_remake:spawn_entities/ghost/polterpup
execute at @s[scores={Dialog=120},tag=flipped_gravity] if score #mirrored Selected matches 1 as @e[type=minecraft:armor_stand,tag=luigi_model,tag=head] if score @s ID = #temp ID rotated as @s run function 3ds_remake:spawn_entities/ghost/polterpup
execute if entity @s[scores={Dialog=120}] run scoreboard players reset #temp ID
execute if entity @s[scores={Dialog=140}] run playsound 3ds_remake:music.polterpup music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=420}] run function luigis_mansion:entities/luigi/get_owner_memory
execute if entity @s[scores={Dialog=420}] run data modify storage luigis_mansion:data my_memory.revived_by set value "3ds_remake:polterpup"
execute if entity @s[scores={Dialog=420}] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[scores={Dialog=420}] run data remove storage luigis_mansion:data my_memory
tag @s[scores={Dialog=420}] add revived_animation
tag @s[scores={Dialog=460}] remove revived_by_polterpup
scoreboard players reset @s[scores={Dialog=460}] Dialog