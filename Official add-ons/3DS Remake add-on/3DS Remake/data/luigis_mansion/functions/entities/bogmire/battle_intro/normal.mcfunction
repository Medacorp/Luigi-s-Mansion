scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..459}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map,tag=!portrait_battle] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..40}] run scoreboard players set @a[tag=same_room,scores={ScareTime=20}] ScareTime 21
execute if entity @s[scores={Dialog=60..199}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map,tag=!portrait_battle] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=200}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map,tag=!portrait_battle] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=100}] run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=200}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={Dialog=200}] run function luigis_mansion:entities/ghost/turn_visible
execute if entity @s[scores={Dialog=201}] positioned ~0.35 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=202}] positioned ~0.7 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=203}] positioned ~1.05 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=204}] positioned ~1.4 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=205}] positioned ~1.75 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=206}] positioned ~2.1 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=207}] positioned ~2.45 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=208}] positioned ~2.8 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=209}] positioned ~3.15 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=210}] positioned ~3.5 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=211}] positioned ~3.85 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=212}] positioned ~4.2 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=213}] positioned ~4.55 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=214}] positioned ~4.9 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=215}] positioned ~5.25 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=216}] positioned ~5.6 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=217}] positioned ~5.95 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=218}] positioned ~6.3 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=219}] positioned ~6.65 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=220}] positioned ~7 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=221}] positioned ~7.35 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=222}] positioned ~7.7 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=223}] positioned ~8.05 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=224}] positioned ~8.4 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=225}] positioned ~8.75 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=226}] positioned ~9.1 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=227}] positioned ~9.45 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=228}] positioned ~9.8 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=229}] positioned ~10.15 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=230}] positioned ~10.5 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=231}] positioned ~10.85 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=232}] positioned ~11.2 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=233}] positioned ~11.55 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=234}] positioned ~11.9 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=235}] positioned ~12.25 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=236}] positioned ~12.6 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=237}] positioned ~12.95 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=238}] positioned ~13.3 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=239}] positioned ~13.65 ~-1.43 ~ run function luigis_mansion:entities/bogmire/create_shadow_intro
execute if entity @s[scores={Dialog=240}] positioned ~14 ~ ~ run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/big
execute if entity @s[scores={Dialog=240}] as @a[tag=same_room,tag=!portrait_battle] at @s facing entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"bogmire"}}]},scores={Dialog=240},limit=1] feet rotated ~ 0 positioned ^ ^ ^1 run function luigis_mansion:entities/player/scare/normal
execute if entity @s[scores={Dialog=240}] run tag @e[tag=bogmires_shadow] add vanish
execute if entity @s[scores={Dialog=241..460}] run scoreboard players set @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"black_bogmire"}}]},limit=1] SpawnTime 60
execute if entity @s[scores={Dialog=320}] run function luigis_mansion:entities/ghost/turn_invisible
execute if entity @s[scores={Dialog=460}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map,tag=!portrait_battle] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=460}] add intro_done
scoreboard players reset @s[scores={Dialog=460}] Dialog