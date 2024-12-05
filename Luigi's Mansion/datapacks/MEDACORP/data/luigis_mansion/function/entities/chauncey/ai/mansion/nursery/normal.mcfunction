execute positioned ~-0.5 ~ ~-0.5 if entity @e[type=minecraft:armor_stand,tag=ball,tag=spit,dx=0,dy=1,dz=0] run scoreboard players add @s[scores={Dialog=131}] Dialog 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_spoke:1b} run scoreboard players add @s[scores={Dialog=130}] Dialog 1
scoreboard players add @s[scores={Dialog=50..129}] Dialog 1
execute if entity @e[tag=rocking_horse,tag=same_room,tag=was_shaking,limit=1] run scoreboard players add @s[scores={Dialog=1..49}] Dialog 1
execute unless entity @e[tag=rocking_horse,tag=same_room,tag=was_shaking,limit=1] run scoreboard players remove @s[scores={Dialog=2..49}] Dialog 3
execute unless entity @s[scores={Dialog=1..}] unless entity @s[scores={Dialog=..-1}] run scoreboard players add @s Dialog 1
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"sleep"}
tag @s[scores={Dialog=1..51}] add visible
tag @s[scores={Dialog=1..50},tag=portrait_ghost_hide] remove visible
execute if entity @s[scores={Dialog=2}] if predicate luigis_mansion:50_50 run data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"wake_up"}
data modify entity @s[scores={Dialog=10},nbt=!{data:{animation:{namespace:"luigis_mansion",id:"wake_up"}}}] data.animation set value {namespace:"luigis_mansion",id:"scream_wake"}
execute if entity @s[scores={Dialog=10},nbt={data:{animation:{namespace:"luigis_mansion",id:"wake_up"}}}] run playsound luigis_mansion:entity.chauncey.cry_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30},nbt={data:{animation:{namespace:"luigis_mansion",id:"wake_up"}}}] run playsound luigis_mansion:entity.chauncey.cry_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=10},nbt={data:{animation:{namespace:"luigis_mansion",id:"scream_wake"}}}] run playsound luigis_mansion:entity.chauncey.scream_wake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=30},nbt={data:{animation:{namespace:"luigis_mansion",id:"scream_wake"}}}] run playsound luigis_mansion:entity.chauncey.scream_wake hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={Dialog=51}] 748 21 70
execute if entity @s[scores={Dialog=51}] unless data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_spoke:1b} run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"chauncey_lets_play"},progress:0}
execute if entity @s[scores={Dialog=51}] unless data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_spoke:1b} store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={Dialog=51}] run tag @e[tag=same_room,tag=furniture,tag=door] add blockade
data modify entity @s[scores={Dialog=51}] data.animation set value {namespace:"luigis_mansion",id:"yawn"}
execute if entity @s[scores={Dialog=52..},tag=!attack,tag=!vanish] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=90}] run playsound luigis_mansion:entity.chauncey.yawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={Dialog=130}] data.animation set value {namespace:"luigis_mansion",id:"move"}

data modify entity @s[scores={Dialog=131},nbt=!{data:{animation:{}}}] data.animation set value {namespace:"luigis_mansion",id:"move"}
execute if entity @s[scores={Dialog=131}] as @a[tag=same_room] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=131},tag=!attack,tag=!laugh,tag=!complain] run tag @e[tag=haunted_teddy_bear,tag=same_room] add enabled
execute if entity @s[scores={Dialog=131}] unless entity @s[tag=!laugh,tag=!complain,tag=!attack] run tag @e[tag=haunted_teddy_bear,tag=same_room] remove enabled
tag @s[scores={Dialog=131},tag=!attack,tag=!laugh,tag=!complain,tag=!rambling,tag=!grab_rambler] add move
execute if entity @s[scores={Dialog=131}] if entity @e[tag=haunted_teddy_bear,tag=same_room,scores={WaitTime=60..79}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"grab_rambler"}
execute if entity @s[scores={Dialog=131}] if entity @e[tag=haunted_teddy_bear,tag=same_room,scores={WaitTime=80..}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"ramble"}
execute if entity @s[scores={Dialog=131},tag=!attack,tag=!laugh,tag=!complain] unless entity @e[tag=haunted_teddy_bear,tag=same_room,scores={WaitTime=60..}] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[scores={Dialog=131}] run scoreboard players set @s TargetTask 0
execute if entity @s[scores={Dialog=131},tag=!attack,tag=!laugh,tag=!complain] unless entity @e[tag=haunted_teddy_bear,tag=same_room,scores={WaitTime=60..}] run scoreboard players set @s TargetTask 1

execute if entity @s[scores={Dialog=132}] run tag @e[tag=haunted_teddy_bear,tag=same_room] remove enabled
scoreboard players set @s[scores={Dialog=132}] ActionTime 0
scoreboard players set @s[scores={Dialog=132}] TargetTask 0
tag @s[scores={Dialog=132}] remove attack
tag @s[scores={Dialog=132}] remove laugh
tag @s[scores={Dialog=132..}] remove complain
execute if entity @s[scores={Dialog=132}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"chauncey"},progress:0}
execute if entity @s[scores={Dialog=132}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
scoreboard players add @s[scores={Dialog=132}] Dialog 1