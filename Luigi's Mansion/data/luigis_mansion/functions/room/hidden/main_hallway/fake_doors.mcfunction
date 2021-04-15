execute positioned 699 102 13 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/west
execute if entity @a[tag=blackout,limit=1] positioned 699 102 -8 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/west
execute if entity @a[tag=blackout,limit=1] positioned 677 102 18 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/north
execute if entity @a[tag=blackout,limit=1] positioned 677 102 24 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/south
execute if entity @a[tag=blackout,limit=1] positioned 659 102 -3 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/south
scoreboard players set #main_hallway FakeDoors 1