scoreboard players set @s[x=713,y=8,z=-10,dx=7,dy=9,dz=60] Room 11
scoreboard players set @s[x=686,y=8,z=30,dx=26,dy=9,dz=8] Room 12
scoreboard players set @s[x=679,y=8,z=3,dx=6,dy=9,dz=42] Room 13
scoreboard players set @s[x=712,y=8,z=-62,dx=8,dy=9,dz=20] Room 22
scoreboard players set @s[x=737,y=8,z=-58,dx=14,dy=9,dz=20] Room 23

execute if entity @s[tag=!visible,nbt=!{data:{path:{}}},tag=!reached_target] run function luigis_mansion:entities/ghost/set_specific_path {index:0}
execute if entity @s[tag=visible,nbt=!{data:{path:{}}},tag=!reached_target] unless entity @s[scores={ActionTime=1..}] run function luigis_mansion:entities/ghost/set_specific_path {index:2}
scoreboard players add @s[scores={ActionTime=1..}] ActionTime 1
scoreboard players set @s[tag=in_fire,tag=!visible] ActionTime 1
tag @s[tag=in_fire] add visible
tag @s[tag=visible] add burning
scoreboard players set @s[scores={ActionTime=1}] TargetTask 0
execute if entity @s[scores={ActionTime=1}] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
execute if entity @s[scores={ActionTime=1}] unless data storage luigis_mansion:data current_state.current_data.technical_data{shivers_spoke:1b} run tellraw @a[tag=same_room] {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.shivers",color:"green"},{type:"translatable",translate:"luigis_mansion:message.shivers.fire"}]}
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shivers_spoke:1b}
execute if entity @s[scores={ActionTime=21}] run playsound luigis_mansion:entity.shivers.realize hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=21}] Sound 50
execute if entity @s[scores={ActionTime=41}] run function luigis_mansion:entities/ghost/set_specific_path {index:1}
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
data modify entity @s[scores={ActionTime=21}] data.animation set value {namespace:"luigis_mansion",id:"panic"}
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"run"}
scoreboard players set @s[scores={ActionTime=41}] ActionTime 0
scoreboard players set @s[tag=reached_target] ActionTime 41
tag @s[tag=reached_target] add visible
tag @s[tag=reached_target] remove reached_target
teleport @s[scores={ActionTime=41}] ~ ~ ~ -120 0
execute if entity @s[scores={ActionTime=58..81}] run scoreboard players set #temp Move 7
execute at @s[scores={ActionTime=58..81}] facing 744 11 -51 run function luigis_mansion:entities/ghost/move_forward_force
execute if entity @s[scores={ActionTime=61}] run playsound luigis_mansion:entity.shivers.calm_down hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=81}] VulnerableTime 80
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
data modify entity @s[scores={ActionTime=61}] data.animation set value {namespace:"luigis_mansion",id:"sit_down"}
data modify entity @s[scores={ActionTime=81}] data.animation set value {namespace:"luigis_mansion",id:"burn"}
data modify entity @s[scores={ActionTime=161}] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
tag @s[scores={ActionTime=221}] add full_reset
tag @s[scores={ActionTime=221}] add vanish
scoreboard players set @s[scores={ActionTime=221}] ActionTime 0

execute if entity @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"run"}}}] run playsound luigis_mansion:entity.shivers.panic hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"run"}}}] Sound 40
execute if entity @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"burn"}}}] run playsound luigis_mansion:entity.shivers.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"burn"}}}] Sound 10

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @s add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} run tag @s add remove_from_existence

execute at @s[tag=visible] if entity @e[tag=same_room,tag=luigi,distance=..1.6,limit=1] run function luigis_mansion:entities/shivers/collide