execute positioned 713 11 26 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/west
execute if entity @a[tag=blackout,limit=1] positioned 713 11 5 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/west
execute if entity @a[tag=blackout,limit=1] positioned 691 11 31 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/north
execute if entity @a[tag=blackout,limit=1] positioned 691 11 37 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/south
execute if entity @a[tag=blackout,limit=1] positioned 673 11 10 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/south
scoreboard players set #main_hallway FakeDoors 1