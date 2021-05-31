execute positioned 713 11 26 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/west
execute if entity @a[tag=blackout,limit=1] positioned 713 11 5 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/west
scoreboard players set #hallway_3 FakeDoors 1