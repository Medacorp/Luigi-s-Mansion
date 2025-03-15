execute if entity @e[tag=same_room,tag=luigi,distance=..1.6,limit=1] run function luigis_mansion:entities/mr_luggs/collide

tag @s[tag=!visible] add visible
execute unless entity @s[scores={Dialog=1..}] run scoreboard players set @s Dialog 0
execute unless entity @s[scores={Dialog=1..}] run tag @s[tag=portrait_ghost_hide] remove visible
execute unless entity @s[scores={Dialog=2..}] if entity @s[tag=visible] run data modify entity @e[tag=mr_luggs_food,limit=1] equipment.head.id set value "minecraft:diamond_pickaxe"
execute if entity @s[tag=!visible] run data modify entity @e[tag=mr_luggs_food,limit=1] equipment.head.id set value "minecraft:stone_button"
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run tag @e[tag=same_room,tag=light_me,tag=lit] add large_flame
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run scoreboard players set @s Dialog 1
execute if entity @s[scores={Dialog=0..20}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={Dialog=21..50}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.slightly_decreased
execute if entity @s[scores={Dialog=51..80}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.decreased
execute if entity @s[scores={Dialog=81..99}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.largely_descreased
scoreboard players add @s[scores={Dialog=100..}] Dialog 1
execute if entity @e[tag=mr_luggs_food,tag=was_in_vacuum,limit=1] run scoreboard players add @s[scores={Dialog=1..99}] Dialog 1
execute if entity @s[scores={Dialog=100}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.empty
execute if entity @s[scores={Dialog=2..99}] run tag @e[tag=hidden,nbt={data:{entity:{namespace:"luigis_mansion",id:"waiter"}}}] add spawn
execute if entity @s[scores={Dialog=2..99}] if entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"waiter"}}},tag=attack] run scoreboard players set @s Dialog 1

execute unless entity @s[scores={Dialog=100..}] run scoreboard players add @s ActionTime 1
data modify entity @s[scores={Dialog=..99,ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"eat"}
execute if entity @s[scores={Dialog=..99,ActionTime=1}] run particle minecraft:dust{color:16770560,scale:1f} ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=1}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=11}] run particle minecraft:dust{color:16770560,scale:1f} ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=11}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=21}] run particle minecraft:dust{color:16770560,scale:1f} ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=21}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=31}] run particle minecraft:dust{color:16770560,scale:1f} ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=31}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=41}] run particle minecraft:dust{color:16770560,scale:1f} ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=41}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=51}] run particle minecraft:dust{color:16770560,scale:1f} ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=51}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=61}] run particle minecraft:dust{color:16770560,scale:1f} ^0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=61}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
execute if entity @s[scores={Dialog=..99,ActionTime=71}] run particle minecraft:dust{color:16770560,scale:1f} ^-0.3 ^1.1 ^1 0.3 0.3 0.3 0 5
execute if entity @s[scores={Dialog=..99,ActionTime=71}] run playsound luigis_mansion:entity.mr_luggs.eat hostile @a[tag=same_room] ^ ^1 ^1 4
data remove entity @s[scores={Dialog=..99,ActionTime=80}] data.animation
execute if entity @s[scores={Dialog=..99,ActionTime=80}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
execute if entity @s[scores={Dialog=..99,ActionTime=100}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
execute if entity @s[scores={Dialog=..99,ActionTime=120}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
execute if entity @s[scores={Dialog=..99,ActionTime=140}] run playsound luigis_mansion:entity.mr_luggs.hit_table hostile @a[tag=same_room] ^ ^ ^2 4
scoreboard players set @s[scores={Dialog=..99,ActionTime=150}] ActionTime 0
scoreboard players set @s[scores={Dialog=101}] ActionTime 0

execute if entity @s[scores={Dialog=100..}] run tag @e[tag=same_room,tag=waiter,tag=attack] add complain
execute if entity @s[scores={Dialog=100..}] run tag @e[tag=same_room,tag=waiter,tag=attack] remove attack
data modify entity @s[scores={Dialog=101}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
data modify entity @s[scores={Dialog=141}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
data modify entity @s[scores={Dialog=201}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
data modify entity @s[scores={Dialog=221}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
data modify entity @s[scores={Dialog=301}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
data modify entity @s[scores={Dialog=361}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
data modify entity @s[scores={Dialog=421}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
data modify entity @s[scores={Dialog=481}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
data modify entity @s[scores={Dialog=521}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
data modify entity @s[scores={Dialog=601}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
data modify entity @s[scores={Dialog=661}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
data modify entity @s[scores={Dialog=761}] data.animation set value {namespace:"luigis_mansion",id:"sigh"}
data modify entity @s[scores={Dialog=861}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.mr_luggs.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=141..}] as @a[tag=same_room] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=141..781}] positioned ~ ~1 ~ facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=201}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=221}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=301}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=321}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=361}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=361}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=421}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=441}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=461}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=461}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=481}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=481}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=521}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=541}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=561}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=561}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=581}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=581}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=601}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=601}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=661}] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=681}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=701}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=701}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=721}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=721}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=741}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=741}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=761}] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=761}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
execute if entity @s[scores={Dialog=761}] run playsound luigis_mansion:entity.mr_luggs.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=781}] run scoreboard players set @s VulnerableTime 80
execute if entity @s[scores={Dialog=881}] run playsound luigis_mansion:entity.mr_luggs.complain_repeat hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=901}] Dialog 600