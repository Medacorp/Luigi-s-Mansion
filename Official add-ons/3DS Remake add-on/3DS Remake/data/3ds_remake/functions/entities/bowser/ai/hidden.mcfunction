execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/bowser/battle_intro/hidden
execute if entity @s[tag=intro_done,tag=decapitate] run function 3ds_remake:entities/bowser/ai/hidden/decapitate
execute if entity @s[tag=intro_done,tag=!decapitate] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},limit=1] run function luigis_mansion:entities/bowser/ai/hidden/choice
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo{health:0} run tag @s add dying