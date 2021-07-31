scoreboard players set @s VulnerableTime 2147483647
execute if entity @s[tag=!laugh] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
tag @s add laugh
execute unless block 708 102 -16 minecraft:iron_trapdoor run function luigis_mansion:room/normal/fortune_tellers_room/add_blockade