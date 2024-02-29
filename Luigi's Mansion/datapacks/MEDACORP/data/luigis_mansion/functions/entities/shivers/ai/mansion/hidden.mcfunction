execute if entity @s[tag=!visible,nbt=!{data:{path:{}}}] run function luigis_mansion:entities/ghost/set_specific_path {index:0}
execute if entity @s[tag=visible,nbt=!{data:{path:{}}}] unless entity @s[scores={ActionTime=1..}] run function luigis_mansion:entities/ghost/set_specific_path {index:2}
scoreboard players add @s[scores={ActionTime=1..}] ActionTime 1
scoreboard players set @s[tag=in_fire,tag=!visible] ActionTime 1
tag @s[tag=in_fire] add visible
tag @s[tag=visible] add burning
scoreboard players set @s[scores={ActionTime=1}] TargetTask 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000 
execute if entity @s[scores={ActionTime=1}] as @a[tag=same_room,scores={Music=..30}] unless entity @s[scores={HealthMusic=1..}] run scoreboard players set @s Music 30
data modify entity @s[scores={ActionTime=1}] ArmorItems[3].tag.luigis_mansion.scan_message set value {sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.shivers.scan.2"}'}
execute if entity @s[scores={ActionTime=1}] unless data storage luigis_mansion:data current_state.current_data.technical_data{shivers_spoke:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.shivers","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.shivers.fire"}]}
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shivers_spoke:1b}
execute if entity @s[scores={ActionTime=21}] run playsound luigis_mansion:entity.shivers.realize hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=21}] Sound 50
execute if entity @s[scores={ActionTime=41}] run function luigis_mansion:entities/ghost/set_specific_path {index:1}
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
data modify entity @s[scores={ActionTime=21}] data.animation set value {namespace:"luigis_mansion",id:"panic"}
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"run"}
scoreboard players reset @s[scores={ActionTime=41}] ActionTime
scoreboard players set @s[tag=reached_target] ActionTime 41
teleport @s[scores={Dialog=41}] ~ ~ ~ -120 0
execute if entity @s[scores={Dialog=58..81}] run scoreboard players set #temp Move 5
execute at @s[scores={Dialog=58..81}] facing 744.3 11 -51 run function luigis_mansion:entities/ghost/move_forward_force
execute if entity @s[scores={Dialog=61}] run playsound luigis_mansion:entity.shivers.calm_down hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=81}] VulnerableTime 80
data modify entity @s[scores={Dialog=41}] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
data modify entity @s[scores={Dialog=61}] data.animation set value {namespace:"luigis_mansion",id:"sit_down"}
data modify entity @s[scores={Dialog=81}] data.animation set value {namespace:"luigis_mansion",id:"burn"}
data modify entity @s[scores={Dialog=161}] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
tag @s[scores={Dialog=221}] add full_reset
tag @s[scores={Dialog=221}] add vanish

execute if entity @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"run"}}}] run playsound luigis_mansion:entity.shivers.panic hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"run"}}}] Sound 40
execute if entity @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"burn"}}}] run playsound luigis_mansion:entity.shivers.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"burn"}}}] Sound 10

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @s add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} run tag @s add remove_from_existence

execute at @s[tag=visible] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1.6,limit=1] run function luigis_mansion:entities/shivers/collide