execute if entity @e[tag=boolossus,tag=split] run tag @s add catching_boolossus
execute if entity @s[scores={MusicGroup=0,MusicType=17},tag=catching_boolossus] run function luigis_mansion:other/music/set/force/catching_boolossus
execute if entity @s[scores={MusicGroup=0,MusicType=34},tag=!catching_boolossus] run function luigis_mansion:other/music/set/force/boolossus_battle_skip_intro
tag @s remove catching_boolossus
