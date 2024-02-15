execute if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"bogmire"}}}}]},tag=hurt] run tag @s add catching_bogmire
execute if entity @s[scores={MusicGroup=0,MusicType=16},tag=catching_bogmire] run function luigis_mansion:other/music/set/force/catching_bogmire
execute if entity @s[scores={MusicGroup=0,MusicType=33},tag=!catching_bogmire] run function luigis_mansion:other/music/set/force/bogmire_battle_skip_intro
tag @s remove catching_bogmire
