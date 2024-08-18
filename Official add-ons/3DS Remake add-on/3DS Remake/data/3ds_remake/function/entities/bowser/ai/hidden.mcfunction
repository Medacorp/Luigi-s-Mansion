execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/bowser/battle_intro/hidden
execute if entity @s[tag=intro_done,tag=decapitate] run function luigis_mansion:entities/bowser/ai/normal/decapitate with entity @s
execute if entity @s[tag=intro_done,tag=!decapitate,tag=!grabbing_head,tag=!headless_run] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"bowser_head"}}},limit=1] run function luigis_mansion:entities/bowser/ai/hidden/choice
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo{health:0} run tag @s add dying

execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~ ~2 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~ ~1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~ ~1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~2 ~ ~ if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-2 ~ ~ if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~1 ~ ~-1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~-1 ~ ~-1 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar
execute unless entity @s[tag=!walk,tag=!run,tag=!headless_run] positioned ~ ~ ~-2 if block ~ ~2 ~ minecraft:clay run function luigis_mansion:entities/bowser/attack/destroy_pillar