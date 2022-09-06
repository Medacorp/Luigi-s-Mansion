execute positioned 739 23 65 rotated -110 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
execute positioned 739 23 68.0 rotated -90 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
execute positioned 739 23 70 rotated -70 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
execute positioned 747 21 58 rotated -45 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
execute positioned 743 23 55 rotated 0 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
execute positioned 745 23 55 rotated 0 0 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_teddy_bear
execute positioned 741 20 63 run function luigis_beta_mansion:spawn_entities/ghost/can_spawn_now/body_slammer/orange
execute positioned 744 20 65 if predicate luigis_mansion:50_50 run function luigis_beta_mansion:spawn_entities/ghost/can_spawn_now/ghost/orange
execute unless entity @e[x=744.5,y=20,z=65.5,distance=..0.7,tag=beta_ghost] positioned 748 20 57 run function luigis_beta_mansion:spawn_entities/ghost/can_spawn_now/ghost/orange
execute positioned 748 20 55 run function luigis_beta_mansion:spawn_entities/vacuumable/shining_ghost/white
execute positioned 748 20 55 run function luigis_beta_mansion:spawn_entities/vacuumable/shining_ghost/white
execute positioned 744 20 71 run function luigis_beta_mansion:spawn_entities/vacuumable/shining_ghost/white
execute positioned 744 20 71 run function luigis_beta_mansion:spawn_entities/vacuumable/shining_ghost/white
scoreboard players set #childs_room Wave 1