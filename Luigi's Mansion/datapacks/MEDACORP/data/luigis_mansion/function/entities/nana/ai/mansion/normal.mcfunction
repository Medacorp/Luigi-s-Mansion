execute positioned ~-1 ~-1.1875 ~-1 run tag @e[type=minecraft:armor_stand,nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=spit,dx=1,dy=3,dz=1] add hit_me
tag @e[type=minecraft:armor_stand,nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=hit_me,limit=1] add remove_from_existence
scoreboard players add @s[scores={Dialog=25..}] Dialog 1
scoreboard players add @s[scores={Dialog=23}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=hit_me,limit=1] run scoreboard players set @s[scores={Dialog=13..22}] Dialog 23
scoreboard players add @s[scores={Dialog=13..21}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=hit_me,limit=1] run scoreboard players set @s[scores={Dialog=3..12}] Dialog 13
scoreboard players add @s[scores={Dialog=3..11}] Dialog 1
execute if entity @e[type=minecraft:armor_stand,nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=hit_me,limit=1] run scoreboard players set @s[scores={Dialog=2}] Dialog 3
execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=vacuumable,limit=1] run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1

execute unless data entity @s data.path run function luigis_mansion:entities/ghost/set_specific_path {index:0}
scoreboard players set @s TargetTask 0
tag @s[scores={Dialog=1..2}] add visible
tag @s[scores={Dialog=1},tag=portrait_ghost_hide] remove visible
execute if entity @s[scores={Dialog=2}] if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=can_spit,limit=1] run scoreboard players set @s TargetTask 5
execute if entity @s[scores={Dialog=3}] run playsound luigis_mansion:entity.nana.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=12}] if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=can_spit,limit=1] run scoreboard players set @s TargetTask 5
execute if entity @s[scores={Dialog=12}] if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/ai/mansion/normal/try_shoot
execute if entity @s[scores={Dialog=13}] run playsound luigis_mansion:entity.nana.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=22}] if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=can_spit,limit=1] run scoreboard players set @s TargetTask 5
execute if entity @s[scores={Dialog=22}] if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}},tag=can_spit,limit=1,distance=..6] run function luigis_mansion:entities/nana/ai/mansion/normal/try_shoot
tag @s[scores={Dialog=24}] add visible
scoreboard players set @s[scores={Dialog=24}] VulnerableTime 2147483647
execute if entity @s[scores={Dialog=24,Sound=0}] run playsound luigis_mansion:entity.nana.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=24,Sound=0}] run scoreboard players set @s Sound 40

execute store result score @s Wave if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}}]
execute if entity @s[scores={Dialog=..2,Wave=2}] run scoreboard players set @s Dialog 25
execute if entity @s[scores={Dialog=..12,Wave=1}] run scoreboard players set @s Dialog 25
execute if entity @s[scores={Dialog=..22,Wave=0}] run scoreboard players set @s Dialog 25
execute if entity @s[scores={Dialog=25}] run scoreboard players set #nanas_room Wave -1
execute if entity @s[scores={Dialog=25}] run playsound luigis_mansion:entity.nana.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=25}] run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"wool"}}}] add remove_from_existence
tag @s[scores={Dialog=55}] remove visible
tag @s[scores={Dialog=65}] add remove_from_existence

data remove entity @s data.animation
data modify entity @s[scores={Dialog=3..11}] data.animation set value {namespace:"luigis_mansion",id:"scream"}
data modify entity @s[scores={Dialog=13..21}] data.animation set value {namespace:"luigis_mansion",id:"scream"}
data modify entity @s[scores={Dialog=23..24}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
data modify entity @s[scores={Dialog=25..}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}

execute if entity @e[tag=same_room,tag=luigi,distance=..1.6,limit=1] run function luigis_mansion:entities/nana/collide