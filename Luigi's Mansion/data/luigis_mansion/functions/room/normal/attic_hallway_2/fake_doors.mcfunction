execute positioned 694 120 31 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/attic/south
execute positioned 694 120 25 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/attic/north
scoreboard players set #attic_hallway_2 FakeDoors 1