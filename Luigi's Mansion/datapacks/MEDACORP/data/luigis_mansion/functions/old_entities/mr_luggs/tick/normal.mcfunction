execute if entity @s[tag=!visible,tag=!vanish] run function luigis_mansion:old_entities/ghost/turn_visible
execute if entity @s[tag=!visible] unless entity @e[tag=this_food] positioned ^ ^0.9 ^2 run scoreboard players operation @e[tag=food,distance=..0.7,limit=1] GhostNr = @s GhostNr
execute unless entity @s[scores={Dialog=1..}] run scoreboard players set @s Dialog 0
execute unless entity @s[scores={Dialog=1..}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:old_entities/ghost/turn_invisible
execute unless entity @s[scores={Dialog=2..}] if entity @s[tag=visible] run item replace entity @e[tag=this_food,limit=1] armor.head with minecraft:diamond_pickaxe{Unbreakable:1b,Damage:4,CustomModelData:11}
execute if entity @s[tag=!visible] run item replace entity @e[tag=this_food,limit=1] armor.head with minecraft:air
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run tag @e[tag=same_room,tag=light_me,tag=lit] add large_flame
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run scoreboard players set @a[tag=same_room,tag=!spectator,scores={Music=..29}] Music 30
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run scoreboard players set @s Dialog 1
execute if entity @s[scores={Dialog=0..20}] run teleport @e[tag=this_food,limit=1] ^ ^0.4 ^2
execute if entity @s[scores={Dialog=21..50}] run teleport @e[tag=this_food,limit=1] ^ ^0.2 ^2
execute if entity @s[scores={Dialog=51..80}] run teleport @e[tag=this_food,limit=1] ^ ^0 ^2
execute if entity @s[scores={Dialog=81..99}] run teleport @e[tag=this_food,limit=1] ^ ^-0.2 ^2
scoreboard players add @s[scores={Dialog=100..}] Dialog 1
execute if entity @s[scores={Dialog=101}] run kill @e[tag=this_food,limit=1]
execute if entity @s[scores={Dialog=2..99}] run tag @e[tag=hidden,nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"waiter"}}}}]}] add spawn

execute unless entity @s[scores={Dialog=100..},tag=!vanish] run scoreboard players add @s ActionTime 1
execute if entity @s[scores={Dialog=..99,ActionTime=1}] run particle minecraft:dust 1 0.9 0 1 ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=1}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=11}] run particle minecraft:dust 1 0.9 0 1 ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=11}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=21}] run particle minecraft:dust 1 0.9 0 1 ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=21}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=31}] run particle minecraft:dust 1 0.9 0 1 ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=31}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=41}] run particle minecraft:dust 1 0.9 0 1 ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=41}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=51}] run particle minecraft:dust 1 0.9 0 1 ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=51}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=61}] run particle minecraft:dust 1 0.9 0 1 ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=61}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=71}] run particle minecraft:dust 1 0.9 0 1 ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=71}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
scoreboard players set @s[scores={Dialog=..99,ActionTime=80}] AnimationProgress 0
tag @s[scores={Dialog=..99,ActionTime=80}] add hit_table
execute if entity @s[scores={Dialog=..99,ActionTime=80}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
execute if entity @s[scores={Dialog=..99,ActionTime=100}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
execute if entity @s[scores={Dialog=..99,ActionTime=120}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
execute if entity @s[scores={Dialog=..99,ActionTime=140}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
scoreboard players set @s[scores={Dialog=..99,ActionTime=150}] AnimationProgress 0
scoreboard players set @s[scores={Dialog=..99,ActionTime=150}] ActionTime 0
scoreboard players set @s[scores={Dialog=101}] ActionTime 0
tag @s[scores={ActionTime=0}] remove hit_table

scoreboard players set @s[scores={Dialog=101}] AnimationProgress 0
tag @s[scores={Dialog=101}] add complain
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.mr_luggs.complain hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=141}] remove complain
tag @s[scores={Dialog=141}] add rage
execute if entity @s[scores={Dialog=141..}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=141..781}] positioned ~ ~1 ~ facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=201}] remove rage
tag @s[scores={Dialog=201}] add spit
execute if entity @s[scores={Dialog=201}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=221}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
tag @s[scores={Dialog=221}] add rage
tag @s[scores={Dialog=221}] remove spit
tag @s[scores={Dialog=301}] remove rage
tag @s[scores={Dialog=301}] add spit
execute if entity @s[scores={Dialog=301}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=321}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=361}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=361}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
tag @s[scores={Dialog=361}] add rage
tag @s[scores={Dialog=361}] remove spit
tag @s[scores={Dialog=421}] remove rage
tag @s[scores={Dialog=421}] add spit
execute if entity @s[scores={Dialog=421}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=441}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=461}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=461}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=481}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=481}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
tag @s[scores={Dialog=481}] add rage
tag @s[scores={Dialog=481}] remove spit
tag @s[scores={Dialog=521}] remove rage
tag @s[scores={Dialog=521}] add spit
execute if entity @s[scores={Dialog=521}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=541}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=561}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=561}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=581}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=581}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=601}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=601}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
tag @s[scores={Dialog=601}] add rage
tag @s[scores={Dialog=601}] remove spit
tag @s[scores={Dialog=661}] remove rage
tag @s[scores={Dialog=661}] add spit
execute if entity @s[scores={Dialog=661}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=681}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=701}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=701}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=721}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=721}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=741}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=741}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
execute if entity @s[scores={Dialog=761}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=761}] run function luigis_mansion:old_entities/mr_luggs/spit_fire
tag @s[scores={Dialog=761}] add sigh
tag @s[scores={Dialog=761}] remove spit
execute if entity @s[scores={Dialog=761}] run playsound luigis_mansion:entity.mr_luggs.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=781}] run scoreboard players set @s VulnerableTime 80
execute if entity @s[scores={Dialog=861}] run scoreboard players set @s AnimationProgress 0
tag @s[scores={Dialog=861}] add complain
tag @s[scores={Dialog=861}] remove sigh
execute if entity @s[scores={Dialog=881}] run playsound luigis_mansion:entity.mr_luggs.complain_repeat hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=901}] remove complain
tag @s[scores={Dialog=901}] add rage
scoreboard players set @s[scores={Dialog=901}] Dialog 601

execute at @s[tag=hit_table] run function luigis_mansion:old_animations/mr_luggs/hit_table
execute at @s[tag=complain] run function luigis_mansion:old_animations/mr_luggs/complain
execute at @s[tag=rage] run function luigis_mansion:old_animations/mr_luggs/rage
execute at @s[tag=spit] run function luigis_mansion:old_animations/mr_luggs/spit
execute at @s[tag=sigh,tag=!vanish] run function luigis_mansion:old_animations/mr_luggs/sigh
execute at @s[tag=!sigh,tag=!complain,tag=!hit_table,tag=!rage,tag=!spit,tag=!vanish] run function luigis_mansion:old_animations/mr_luggs/idle