execute if entity @e[tag=same_room,tag=luigi,distance=..1.6,limit=1] run function luigis_mansion:entities/mr_luggs/collide

tag @s[tag=!visible] add visible
execute unless entity @s[scores={Dialog=1..}] run scoreboard players set @s Dialog 0
execute unless entity @s[scores={Dialog=1..}] run tag @s[tag=portrait_ghost_hide] remove visible
execute unless entity @s[scores={Dialog=2..}] if entity @s[tag=visible] run data modify entity @e[tag=mr_luggs_food,limit=1] equipment.head.components."minecraft:item_model" set value "luigis_mansion:furniture/food"
execute if entity @s[tag=!visible] run data modify entity @e[tag=mr_luggs_food,limit=1] equipment.head.components."minecraft:item_model" set value "luigis_mansion:empty"
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run tag @e[tag=same_room,tag=light_me,tag=lit] add large_flame
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=light_me,tag=!lit] run scoreboard players set @s Dialog 1
execute if entity @s[scores={Dialog=0..9}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={Dialog=10..54}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.slightly_decreased
execute if entity @s[scores={Dialog=55..99}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.largely_decreased
scoreboard players add @s[scores={Dialog=100..140}] Dialog 1
execute if entity @e[tag=mr_luggs_food,tag=was_in_vacuum,limit=1] run scoreboard players add @s[scores={Dialog=1..99}] Dialog 1
execute if entity @s[scores={Dialog=100}] as @e[tag=mr_luggs_food,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open
execute if entity @s[scores={Dialog=2..99}] run tag @e[tag=hidden,nbt={data:{entity:{namespace:"luigis_mansion",id:"waiter"}}}] add spawn
execute if entity @s[scores={Dialog=2..99}] if entity @e[tag=same_room,nbt={data:{entity:{namespace:"luigis_mansion",id:"waiter"}}},tag=attack] run scoreboard players set @s Dialog 1
scoreboard players add @s[scores={Dialog=161..}] Dialog 1
scoreboard players set @s[scores={Dialog=156..160},tag=owner_complain] Time 0
scoreboard players add @s[scores={Dialog=156..160},tag=owner_complain] Dialog 1
scoreboard players add @s[scores={Dialog=155,Time=3}] Dialog 1
scoreboard players set @s[scores={Dialog=151..154},tag=owner_complain] Time 0
scoreboard players add @s[scores={Dialog=151..154},tag=owner_complain] Dialog 1
scoreboard players add @s[scores={Dialog=150,Time=3}] Dialog 1
scoreboard players set @s[scores={Dialog=147..149},tag=owner_complain] Time 0
scoreboard players add @s[scores={Dialog=147..149},tag=owner_complain] Dialog 1
scoreboard players add @s[scores={Dialog=146,Time=3}] Dialog 1
scoreboard players set @s[scores={Dialog=144..145},tag=owner_complain] Time 0
scoreboard players add @s[scores={Dialog=144..145},tag=owner_complain] Dialog 1
scoreboard players add @s[scores={Dialog=143,Time=3}] Dialog 1
scoreboard players set @s[scores={Dialog=142},tag=owner_complain] Time 0
scoreboard players add @s[scores={Dialog=142},tag=owner_complain] Dialog 1
scoreboard players add @s[scores={Dialog=141,Time=3}] Dialog 1
tag @s remove owner_complain

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

execute if entity @s[scores={Dialog=100..}] run tag @e[tag=same_room,tag=waiter,tag=attack] add complain
execute if entity @s[scores={Dialog=100..}] run tag @e[tag=same_room,tag=waiter,tag=attack] remove attack
data modify entity @s[scores={Dialog=101}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.mr_luggs.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=141..}] as @a[tag=same_room] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=141..160}] positioned ~ ~1 ~ facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet positioned ~ ~-1 ~ run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={Dialog=161}] data.animation set value {namespace:"luigis_mansion",id:"sigh"}
execute if entity @s[scores={Dialog=161}] run playsound luigis_mansion:entity.mr_luggs.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=161}] run scoreboard players set @s VulnerableTime 80
data modify entity @s[scores={Dialog=241}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
execute if entity @s[scores={Dialog=261}] run playsound luigis_mansion:entity.mr_luggs.complain_repeat hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=281..}] Dialog 155

scoreboard players remove @s[scores={Dialog=101..},nbt={data:{animation:{namespace:"luigis_mansion",id:"spit"}}}] AnimationProgress 1
execute if entity @s[scores={Dialog=101..,AnimationProgress=-1},tag=long_spit] run playsound luigis_mansion:entity.mr_luggs.spit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=101..,AnimationProgress=-15},tag=!long_spit] run playsound luigis_mansion:entity.mr_luggs.spit_repeat hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=101..,AnimationProgress=-15}] run function luigis_mansion:entities/mr_luggs/ai/mansion/normal/spit_fire
tag @s[scores={Dialog=101..,AnimationProgress=..-15}] remove long_spit
scoreboard players set @s[scores={Dialog=101..,AnimationProgress=..-20}] AnimationProgress 0
execute unless entity @s[scores={AnimationProgress=..-15}] unless entity @s[scores={AnimationProgress=-2..-1}] run data modify entity @s[scores={Dialog=141..160}] data.animation set value {namespace:"luigis_mansion",id:"rage"}
execute unless entity @e[tag=mr_luggs_attack,limit=1] run data modify entity @s[scores={Dialog=142}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
execute unless entity @e[tag=mr_luggs_attack,limit=1] run data modify entity @s[scores={Dialog=144..145}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
execute unless entity @e[tag=mr_luggs_attack,limit=1] run data modify entity @s[scores={Dialog=147..149}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
execute unless entity @e[tag=mr_luggs_attack,limit=1] run data modify entity @s[scores={Dialog=151..154}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
execute unless entity @e[tag=mr_luggs_attack,limit=1] run data modify entity @s[scores={Dialog=156..160}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
scoreboard players add @s[scores={Dialog=101..},nbt={data:{animation:{namespace:"luigis_mansion",id:"rage"}}}] AnimationProgress 1
scoreboard players add @s[scores={Dialog=101..,AnimationProgress=20..}] Time 1
scoreboard players set @s[scores={Dialog=101..,AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[scores={Dialog=101..,AnimationProgress=1..15},nbt={data:{animation:{namespace:"luigis_mansion",id:"spit"}}}] run tag @s add long_spit
scoreboard players set @s[scores={Dialog=101..,AnimationProgress=1..},nbt={data:{animation:{namespace:"luigis_mansion",id:"spit"}}}] AnimationProgress 0
scoreboard players set @s[scores={Dialog=101..,AnimationProgress=1..},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"rage"}}}] AnimationProgress 0
scoreboard players set @s[scores={Dialog=101..,AnimationProgress=..-1},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"spit"}}}] AnimationProgress 0
scoreboard players set @s[scores={Dialog=101..},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"rage"}}}] Time 0