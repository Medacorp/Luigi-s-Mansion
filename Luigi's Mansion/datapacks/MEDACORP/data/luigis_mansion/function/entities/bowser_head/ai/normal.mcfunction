execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo.health
execute if score #temp Time matches 1..20000 unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] run tag @s add reattach_backwards
execute if score #temp Time matches 20001.. unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] run tag @s add reattach
execute if score #temp Time matches 1.. if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},tag=same_room,limit=1] run function luigis_mansion:entities/bowser_head/ai/normal/attack
execute if score #temp Time matches 0 run data remove entity @s[tag=!dying] data.animation
scoreboard players reset #temp Time