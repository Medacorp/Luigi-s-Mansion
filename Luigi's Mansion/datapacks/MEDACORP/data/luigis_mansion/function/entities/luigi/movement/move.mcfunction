$teleport @s ~$(x) ~ ~$(z)
execute at @s if data storage luigis_mansion:data luigi.movement{y:"positive"} run teleport @s ~ ~0.1 ~
execute at @s if data storage luigis_mansion:data luigi.movement{y:"negative"} run teleport @s ~ ~-0.1 ~
execute unless data storage luigis_mansion:data luigi.movement{y:"none"} run tag @s add alter_y
execute unless data storage luigis_mansion:data luigi.movement{x:0f,z:0f} run tag @s add third_person_movement_walking
execute at @s[tag=!flipped_gravity,tag=!debug_phase_through_walls] run function luigis_mansion:entities/luigi/movement/collision
execute at @s[tag=flipped_gravity,scores={Shrunk=0},tag=!debug_phase_through_walls] run function luigis_mansion:entities/luigi/movement/collision_flipped
execute at @s[tag=flipped_gravity,scores={Shrunk=1..},tag=!debug_phase_through_walls] run function luigis_mansion:entities/luigi/movement/collision_flipped_shrunk