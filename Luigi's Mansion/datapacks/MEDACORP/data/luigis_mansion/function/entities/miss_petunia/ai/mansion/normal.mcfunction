scoreboard players add @s[scores={Dialog=2..60}] Dialog 1
execute positioned ~3 ~ ~ if block ^ ^ ^2 minecraft:air run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1

tag @s[scores={Dialog=3..61},tag=!visible] add visible
execute if entity @s[scores={Dialog=1},tag=visible] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=61,VulnerableTime=0},tag=visible] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=20}] run playsound luigis_mansion:entity.miss_petunia.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=20..59}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=50}] run playsound luigis_mansion:entity.miss_petunia.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=59}] run function luigis_mansion:entities/miss_petunia/ai/mansion/normal/spit_water
execute if entity @s[scores={Dialog=60,VulnerableTime=0}] run teleport @s ~ ~ ~ ~ 0
execute if entity @s[scores={Dialog=60..61,VulnerableTime=0}] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute if entity @s[scores={Dialog=2..,VulnerableTime=0},tag=in_ice] run playsound luigis_mansion:entity.miss_petunia.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=2..},tag=in_ice] VulnerableTime 60
scoreboard players set @s[scores={Dialog=2..60},tag=in_ice] Dialog 61
execute if entity @s[scores={Dialog=61,VulnerableTime=1..}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=61},tag=in_ice] unless data storage luigis_mansion:data current_state.current_data.technical_data{miss_petunia_spoke:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.miss_petunia","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.miss_petunia.freeze"}]}
execute if entity @s[scores={Dialog=61},tag=in_ice] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {miss_petunia_spoke:1b}

data modify entity @s[scores={Dialog=20..49}] data.animation set value {namespace:"luigis_mansion",id:"panic"}
data modify entity @s[scores={Dialog=50..59}] data.animation set value {namespace:"luigis_mansion",id:"spit"}
data modify entity @s[scores={VulnerableTime=1..}] data.animation set value {namespace:"luigis_mansion",id:"shiver"}
execute unless entity @s[scores={Dialog=20..59}] run data remove entity @s[scores={VulnerableTime=0}] data.animation

execute if entity @s[scores={VulnerableTime=0,Sound=0}] unless entity @s[scores={Dialog=20..59}] run playsound luigis_mansion:entity.miss_petunia.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[scores={Dialog=20..59}] run scoreboard players set @s[scores={VulnerableTime=0,Sound=0}] Sound 40

execute if entity @s[scores={VulnerableTime=0}] run tag @e[tag=same_room,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"showering_shadow"}}}] remove invisible
execute if entity @s[scores={VulnerableTime=1..}] run tag @e[tag=same_room,limit=1,nbt={data:{entity:{namespace:"luigis_mansion",id:"showering_shadow"}}}] add invisible