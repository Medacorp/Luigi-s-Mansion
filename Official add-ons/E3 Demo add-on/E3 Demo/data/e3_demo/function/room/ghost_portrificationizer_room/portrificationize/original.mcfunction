execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.neville{portrificationized:0b,health:0} run tag @s add portrificationizing
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.lydia{portrificationized:0b,health:0} run tag @s add portrificationizing
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.miss_petunia{portrificationized:0b,health:0} run tag @s add portrificationizing
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.spooky{portrificationized:0b,health:0} run tag @s add portrificationizing
tag @s[tag=e_gadd,tag=portrificationize_dialog] remove portrificationizing
execute if entity @s[tag=e_gadd,tag=portrificationizing] unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"e3_demo",id:"portrificationizing"},room:-3,progress:0,portraits:{}}
tag @s[tag=e_gadd,tag=portrificationizing] remove portrificationizing