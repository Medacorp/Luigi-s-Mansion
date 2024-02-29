execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo.health
execute if score #temp Time matches 0 run tag @s add dying
execute if score #temp Time matches 1..25000 unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run tag @s add reattach_backwards
execute if score #temp Time matches 25001.. unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run tag @s add reattach
execute if score #temp Time matches 1.. unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"king_boo"}}},limit=1] run function luigis_mansion:entities/bowser_head/ai/normal/attack
scoreboard players reset #temp Time