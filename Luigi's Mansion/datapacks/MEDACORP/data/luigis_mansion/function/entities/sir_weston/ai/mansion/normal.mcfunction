execute unless entity @s[scores={Dialog=92..}] run tag @s add visible
execute unless entity @s[scores={Dialog=1..}] run tag @s[tag=portrait_ghost_hide] remove visible
scoreboard players add @s[scores={Dialog=92..}] Dialog 1
scoreboard players add @s[scores={Dialog=32..91},tag=in_fire] Dialog 1
scoreboard players add @s[scores={Dialog=1..31}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] unless entity @e[tag=same_room,tag=sir_weston_campfire,tag=!lit,limit=1] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
execute if entity @s[scores={Dialog=30}] if data storage luigis_mansion:data current_state.current_data.technical_data{sir_weston_spoke:1b} run scoreboard players set @s Dialog 31
execute if entity @s[scores={Dialog=30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"sir_weston"},progress:0,room:0}
execute if entity @s[scores={Dialog=30}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
execute if entity @s[scores={Dialog=31..}] as @a[tag=same_room] run function luigis_mansion:other/music/set/danger
scoreboard players add @s[scores={Dialog=32..91}] PathStep 1
execute at @s[scores={PathStep=20}] run playsound luigis_mansion:entity.sir_weston.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={PathStep=20..50,VulnerableTime=0}] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={PathStep=60}] rotated ~ 0 run function luigis_mansion:entities/sir_weston/ai/mansion/normal/spawn_ice_spikes
scoreboard players set @s[scores={PathStep=80}] PathStep 0
execute if entity @s[scores={Dialog=92}] run playsound luigis_mansion:entity.sir_weston.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=92}] run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~1.2 ~ 0.6 0.6 0.6 0 30
scoreboard players set @s[scores={Dialog=92}] VulnerableTime 40
scoreboard players set @s[scores={Dialog=92}] PathStep 0
scoreboard players set @s[scores={Dialog=132}] Dialog 72

data modify entity @s[scores={Dialog=31..91}] data.animation set value {namespace:"luigis_mansion",id:"spawn_ice_spikes"}
data modify entity @s[scores={Dialog=92..}] data.animation set value {namespace:"luigis_mansion",id:"melted"}
execute unless entity @s[scores={Dialog=31..}] run data remove entity @s data.animation

scoreboard players operation @s[scores={Dialog=..91}] MeltProgress = @s Dialog
scoreboard players remove @s MeltProgress 32