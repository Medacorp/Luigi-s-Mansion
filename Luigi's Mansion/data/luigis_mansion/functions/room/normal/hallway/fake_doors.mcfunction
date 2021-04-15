execute positioned 699 120 -21 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/attic/west
execute if entity @a[tag=blackout,limit=1] positioned 692 111 -3 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/south
execute if entity @a[tag=blackout,limit=1] positioned 677 111 -3 unless entity @e[distance=..0.7,tag=fake_door,limit=1] run function luigis_mansion:spawn_entities/fake_door/normal/south
scoreboard players set #hallway FakeDoors 1