scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=120}] run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=120}] run playsound luigis_mansion:entity.chauncey.cry hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=140}] run playsound luigis_mansion:entity.chauncey.cry hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=120}] positioned 723 45 -19938 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 723 45 -19932 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 723 45 -19926 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 716 45 -19938 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 716 45 -19932 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 716 45 -19926 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 723 43 -19919 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 720.0 48 -19919 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 716 43 -19919 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 725 48 -19917 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 714 48 -19917 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 723 43 -19911 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 718 43 -19911 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 723 46 -19906 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 718 46 -19906 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 721 44 -19910 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned 716 44 -19910 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=330..420}] run teleport @s ~ ~0.1 ~
scoreboard players set @s[scores={Dialog=400}] AnimationProg 0
tag @s[scores={Dialog=400}] add look_down
tag @s[scores={Dialog=440}] remove look_down
tag @s[scores={Dialog=440}] add scream
execute if entity @s[scores={Dialog=440}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=460}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=480}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=500}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={Dialog=520}] remove scream
tag @s[scores={Dialog=520}] add grab_rambler
tag @s[scores={Dialog=540}] remove grab_rambler
tag @s[scores={Dialog=540}] add rambling
tag @s[scores={Dialog=580}] remove rambling
tag @s[scores={Dialog=580}] add wink
tag @s[scores={Dialog=590}] remove wink
tag @s[scores={Dialog=590}] add rambling
tag @s[scores={Dialog=630}] remove rambling
tag @s[scores={Dialog=630}] add attack
tag @s[scores={Dialog=670}] add intro_done
scoreboard players set @s[scores={Dialog=670}] Dialog 0