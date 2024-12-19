execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=split] run tag @s add split_boolossus
execute if entity @s[scores={MusicGroup=0,MusicType=17},tag=split_boolossus] run function luigis_mansion:other/music/set/force/split_boolossus
execute if entity @s[scores={MusicGroup=0,MusicType=34},tag=!split_boolossus] run function luigis_mansion:other/music/set/force/boolossus_battle_skip_intro
tag @s remove split_boolossus
