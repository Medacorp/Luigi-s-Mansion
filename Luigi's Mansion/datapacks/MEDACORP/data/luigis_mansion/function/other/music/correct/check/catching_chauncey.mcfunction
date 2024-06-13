execute if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}},tag=hurt,tag=!ball] run tag @s add catching_chauncey
execute if entity @s[scores={MusicGroup=0,MusicType=15},tag=catching_chauncey] run function luigis_mansion:other/music/set/force/catching_chauncey
execute if entity @s[scores={MusicGroup=0,MusicType=32},tag=!catching_chauncey] run function luigis_mansion:other/music/set/force/chauncey_battle_skip_intro
tag @s remove catching_chauncey
