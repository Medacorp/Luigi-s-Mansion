execute positioned 735 29 -29 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/attic/north
execute positioned 735 29 -26 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/attic/south
scoreboard players set #hallway_18 FakeDoors 1