execute if entity @e[tag=boo,tag=!ball,tag=!bomb,tag=same_room] run function luigis_mansion:other/music/set/catching_boo
execute unless entity @e[tag=boo,tag=!ball,tag=!bomb,tag=same_room] if entity @s[scores={MusicGroup=0,MusicType=30}] run function luigis_mansion:other/music/set/silence
