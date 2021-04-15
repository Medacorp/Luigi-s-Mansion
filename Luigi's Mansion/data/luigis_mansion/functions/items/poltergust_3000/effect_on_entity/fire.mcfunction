execute if entity @s[tag=vacuumable] run function luigis_mansion:items/poltergust_3000/effect_on_entity/dust
tag @s[tag=vacuumable,tag=spark] add explode
execute unless entity @s[tag=haunted_object,tag=!moving] unless entity @s[tag=haunted_music_sheet,scores={WaitTime=..0}] run tag @s[tag=vacuumable,tag=!spark,tag=!ball,tag=!boolossus,tag=!item] add element_death
execute unless entity @s[tag=haunted_object,tag=!moving] unless entity @s[tag=haunted_music_sheet,scores={WaitTime=..0}] run tag @s[tag=vacuumable,tag=!spark,tag=!ball,tag=!boolossus,tag=!item,tag=!ghost] add dead
execute unless entity @s[tag=haunted_object,tag=!moving] unless entity @s[tag=haunted_music_sheet,scores={WaitTime=..0}] if entity @s[tag=vacuumable,tag=!ball,tag=!boolossus,tag=!item] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
tag @s[tag=ghost,tag=!burning_heart,tag=!watery_heart,tag=!vacuumable,tag=!portrait_ghost,tag=!boo,tag=!hurt_animation,tag=!vanish,tag=!appear,tag=!fleeing] add element_hurt
execute if entity @s[tag=ghost,tag=!burning_heart,tag=!watery_heart,tag=!vacuumable,tag=!portrait_ghost,tag=!boo,tag=!hurt_animation,tag=!vanish,tag=!appear,tag=!fleeing] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
tag @s[tag=sir_weston,scores={Dialog=423..}] add melt
scoreboard players set @s[tag=vacuumable,tag=boolossus] Dialog 0
tag @s[tag=fake_door] add dead
tag @s[tag=shivers] add burning