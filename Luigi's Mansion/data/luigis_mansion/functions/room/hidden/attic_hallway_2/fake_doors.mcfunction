execute positioned 694 120 -16 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/attic/north
execute positioned 694 120 -10 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/attic/south
scoreboard players set #attic_hallway_2 FakeDoors 1