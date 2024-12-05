scoreboard players add @s[scores={Dialog=125..}] Dialog 1
scoreboard players add @s[scores={Dialog=124},tag=in_water] Dialog 1
scoreboard players add @s[scores={Dialog=64..123}] Dialog 1
scoreboard players add @s[scores={Dialog=63},tag=in_water] Dialog 1
scoreboard players add @s[scores={Dialog=3..62}] Dialog 1
scoreboard players add @s[scores={Dialog=2},tag=in_water] Dialog 1
scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute if entity @e[tag=same_room,tag=luigi,limit=1] unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_spoke:1b} run scoreboard players set @s[scores={Dialog=1}] Dialog 2
execute if entity @s[scores={Dialog=1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"sue_pea"},progress:0}
execute if entity @s[scores={Dialog=1}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
tag @s[scores={Dialog=2..124}] remove visible
tag @s[scores={Dialog=2..124},tag=portrait_ghost_hide] add visible
execute if entity @s[scores={Dialog=3}] run playsound luigis_mansion:entity.sue_pea.complain hostile @a[tag=same_room] ~ ~ ~ 1000
teleport @s[scores={Dialog=3..22}] ^ ^-0.05 ^0.05
teleport @s[scores={Dialog=43..62}] ^ ^0.05 ^-0.05
execute if entity @s[scores={Dialog=64}] run playsound luigis_mansion:entity.sue_pea.complain2 hostile @a[tag=same_room] ~ ~ ~ 1000
teleport @s[scores={Dialog=64..83}] ^ ^-0.05 ^0.05
teleport @s[scores={Dialog=104..123}] ^ ^0.05 ^-0.05
execute if entity @s[scores={Dialog=125}] unless data storage luigis_mansion:data current_state.current_data.technical_data{sue_pea_snored:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.sue_pea","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.sue_pea.3"}]}
execute if entity @s[scores={Dialog=125}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_snored:1b}
execute if entity @s[scores={Dialog=125..}] as @a[tag=same_room] run function luigis_mansion:other/music/set/danger
tag @s[scores={Dialog=125}] add visible
execute if entity @s[scores={Dialog=125}] run tag @e[tag=same_room,tag=haunted_clown_doll] add enabled
scoreboard players set @s[scores={Dialog=125}] VulnerableTime 100
execute if entity @s[scores={Dialog=125}] run playsound luigis_mansion:entity.sue_pea.wake_up hostile @a[tag=same_room] ~ ~ ~ 1000
teleport @s[scores={Dialog=125..144}] ^ ^-0.07 ^0.05
teleport @s[scores={Dialog=246..265}] ^ ^0.07 ^-0.05
tag @s[scores={Dialog=225}] remove visible
scoreboard players set @s[scores={Dialog=265}] Dialog 124

data remove entity @s data.animation
data modify entity @s[scores={Dialog=3..62}] data.animation set value {namespace:"luigis_mansion",id:"watered"}
data modify entity @s[scores={Dialog=64..123}] data.animation set value {namespace:"luigis_mansion",id:"watered"}
data modify entity @s[scores={Dialog=125..}] data.animation set value {namespace:"luigis_mansion",id:"wake_up"}
