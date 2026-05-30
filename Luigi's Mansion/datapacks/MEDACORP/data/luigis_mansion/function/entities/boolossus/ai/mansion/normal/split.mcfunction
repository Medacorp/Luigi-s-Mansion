scoreboard players set @s HomeY 2700
execute if entity @e[tag=same_room,tag=expelling_ice,distance=..10,limit=1] run tag @s[scores={Wave=81..599},tag=!attack,tag=!laugh,tag=agressive] add flee
execute if entity @s[scores={Sound=0,Dialog=0},tag=!in_ice,tag=flee] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0,Dialog=0},tag=!in_ice,tag=flee] Sound 40

tag @s[scores={Wave=..30}] add flee
tag @s[scores={Wave=..30}] add flee_no_target
execute if entity @s[scores={Wave=..30}] run scoreboard players set #temp Move 15
execute if entity @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Wave=80,Health=15}] run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},scores={Dialog=0}] add laugh
execute if entity @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Wave=80,Health=8..14}] if predicate luigis_mansion:boolossus/laugh_chance run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},scores={Dialog=0}] add laugh
execute if entity @s[tag=laugh] run function luigis_mansion:entities/boolossus/laugh

execute if entity @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Wave=81..580,Dialog=0},tag=!agressive] if entity @e[tag=same_room,tag=luigi,distance=..5] if predicate luigis_mansion:boolossus/taunt_chance run tag @s add taunt
execute if entity @s[tag=taunt] run function luigis_mansion:entities/boolossus/taunt
execute if entity @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Wave=81..580,Dialog=0},tag=agressive] at @e[tag=same_room,tag=luigi,distance=..5] positioned ^ ^ ^-2.5 if entity @s[distance=..2.5] run function luigis_mansion:entities/ghost/set_target_to_attack
execute if entity @s[tag=attack,tag=!laugh,tag=!taunt,scores={Dialog=0},tag=agressive] run function luigis_mansion:entities/boolossus/attack/dash

execute if entity @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Time=600..,Dialog=0,Wave=..599}] run function luigis_mansion:entities/boolossus/rotate
execute at @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Dialog=0,Wave=..599}] unless entity @e[tag=same_room,tag=luigi,distance=..20] run function luigis_mansion:entities/boolossus/move/rubberbanding_boost
execute at @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Dialog=0,Wave=..599}] unless entity @e[tag=same_room,tag=luigi,distance=..15] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet run function luigis_mansion:entities/boolossus/move/rubberbanding
execute at @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Dialog=0,Wave=..599},tag=move_up,tag=!rubberbanding] run function luigis_mansion:entities/boolossus/move/up_split
execute at @s[tag=!flee,tag=!attack,tag=!laugh,tag=!taunt,scores={Dialog=0,Wave=..599},tag=!move_up,tag=!rubberbanding] run function luigis_mansion:entities/boolossus/move/down_split
tag @s remove wall
tag @s remove rubberbanding

scoreboard players set @s[tag=in_ice,scores={Dialog=0,Wave=41..599}] Dialog 100
data modify entity @s[scores={Dialog=100}] data.animation set value {namespace:"luigis_mansion",id:"frozen_solid"}
scoreboard players remove @s[scores={Dialog=1..}] Dialog 1
scoreboard players set @s[scores={Dialog=1..},tag=in_fire] Dialog 0
scoreboard players set @s[scores={Wave=600..}] Dialog 0
data remove entity @s[scores={Dialog=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"frozen_solid"}}}] data.animation
execute if entity @s[tag=vacuumable] if block ~ ~0.8 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute if entity @s[tag=vacuumable] if block ~ ~0.8 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
scoreboard players set @s[scores={Dialog=1..}] ActionTime 0
tag @s[scores={Dialog=1..}] add vacuumable
tag @s[scores={Dialog=1..}] add pulled_by_vacuum
tag @s[scores={Dialog=1..}] add pull_ignores_collision
tag @s[scores={Dialog=1..}] remove laugh
tag @s[scores={Dialog=1..}] remove taunt
tag @s[scores={Dialog=1..}] remove attack
tag @s[scores={Dialog=1..}] remove flee
tag @s[scores={Dialog=1..}] remove was_fleeing
tag @s[scores={Dialog=0}] remove pulled_by_vacuum
tag @s[scores={Dialog=0}] remove vacuumable

execute if entity @s[tag=flee,tag=!laugh,tag=!taunt,tag=!attack,scores={Dialog=0,Wave=..599}] run function luigis_mansion:entities/boolossus/flee_split

tag @s[tag=!flee] remove flee_no_target
data remove entity @s[tag=was_fleeing,tag=!flee] data.animation
tag @s remove was_fleeing
tag @s[tag=flee] add was_fleeing
tag @s remove flee

execute at @s[scores={Dialog=0}] if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/boolossus/collide_split

scoreboard players add @s[scores={Wave=..80}] Wave 1
tag @s add me
execute at @s[scores={Wave=81..}] if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=!me,limit=1] run scoreboard players add @s Wave 1
execute at @s[scores={Wave=600..}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=!me,limit=1] run scoreboard players set @s Wave 81
execute at @s unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=!me,limit=1] run tag @s add portrait_ghost_pop
tag @s remove me
execute if entity @s[scores={Wave=600}] unless entity @e[tag=to_me,limit=1] run tag @s add to_me
execute at @s[scores={Wave=600..},tag=!to_me] facing entity @e[tag=to_me,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Wave=600..},tag=to_me] ~ ~0.1 ~
execute if entity @s[scores={Wave=610..},tag=to_me] run particle minecraft:campfire_cosy_smoke ~ ~3 ~ 0.4 0.4 0.4 0 10 force
scoreboard players set @s[scores={Wave=600..}] Move 100
execute at @s[scores={Dialog=0,Wave=600..},tag=!to_me] run function luigis_mansion:entities/boolossus/move/forward
tag @s[scores={Wave=640}] add remove_from_existence
execute if entity @s[scores={Wave=640},tag=to_me] run function luigis_mansion:entities/boolossus/ai/mansion/normal/merge
