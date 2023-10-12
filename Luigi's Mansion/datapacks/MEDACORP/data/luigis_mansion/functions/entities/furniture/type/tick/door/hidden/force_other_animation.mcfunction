#boo woods-foyer
execute if entity @s[x=755.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door] in minecraft:overworld run tag @e[x=721.0,y=102,z=8.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=755.0,y=11,z=6.5,distance=..0.7,tag=furniture,tag=door] in minecraft:overworld run tag @e[x=721.0,y=102,z=7.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute in minecraft:overworld if entity @s[x=721.0,y=102,z=8.5,distance=..0.7,tag=furniture,tag=door] in luigis_mansion:hidden run tag @e[x=755.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute in minecraft:overworld if entity @s[x=721.0,y=102,z=7.5,distance=..0.7,tag=furniture,tag=door] in luigis_mansion:hidden run tag @e[x=755.0,y=11,z=6.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 1-parlor
execute if entity @s[x=737.0,y=20,z=7.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=728.0,y=20,z=-11.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=737.0,y=20,z=6.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=728.0,y=20,z=-12.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=728.0,y=20,z=-11.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=737.0,y=20,z=7.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=728.0,y=20,z=-12.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=737.0,y=20,z=6.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#parlor-anteroom
execute if entity @s[x=714.0,y=20,z=-5.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=694.0,y=20,z=-10.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=694.0,y=20,z=-10.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=714.0,y=20,z=-5.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#anteroom-wardrobe room
execute if entity @s[x=689.5,y=20,z=-26.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.5,y=20,z=-41.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=682.5,y=20,z=-41.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=689.5,y=20,z=-26.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#wardrobe room-balcony 1
execute if entity @s[x=684.5,y=20,z=-59.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=679.5,y=111,z=-23.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=679.5,y=111,z=-23.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=684.5,y=20,z=-59.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 1-hallway 2
execute if entity @s[x=739.5,y=20,z=-2.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=726.5,y=20,z=-27.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=726.5,y=20,z=-27.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=739.5,y=20,z=-2.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 2-study
execute if entity @s[x=724.0,y=20,z=-31.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=716.0,y=20,z=-32.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=716.0,y=20,z=-32.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=724.0,y=20,z=-31.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 2-master bedroom
execute if entity @s[x=724.0,y=20,z=-59.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=698.0,y=111,z=-35.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=698.0,y=111,z=-35.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=724.0,y=20,z=-59.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 2-nursery
execute if entity @s[x=729.0,y=20,z=-50.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=739.0,y=20,z=-42.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=739.0,y=20,z=-42.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=729.0,y=20,z=-50.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#foyer-hallway 3
execute if entity @s[x=744.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=11,z=21.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=744.0,y=11,z=6.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=11,z=20.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=719.0,y=11,z=21.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=744.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=719.0,y=11,z=20.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=744.0,y=11,z=6.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 3-hallway 7
execute if entity @s[x=716.5,y=11,z=49.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=716.5,y=11,z=59.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=716.5,y=11,z=59.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=716.5,y=11,z=49.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 6-bathroom 1
execute if entity @s[x=673.5,y=11,z=5.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=654.5,y=11,z=-1.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=654.5,y=11,z=-1.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=673.5,y=11,z=5.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 4-ball room
execute if entity @s[x=707.5,y=11,z=37.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=706.5,y=11,z=54.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=706.5,y=11,z=54.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=707.5,y=11,z=37.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#ball room-storage room
execute if entity @s[x=697.0,y=11,z=79.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=690.0,y=11,z=79.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=690.0,y=11,z=79.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=697.0,y=11,z=79.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 5-washroom 1
execute if entity @s[x=682.5,y=11,z=5.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=664.5,y=11,z=-20.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=664.5,y=11,z=-20.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.5,y=11,z=5.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 3-fortune tellers room
execute if entity @s[x=719.0,y=11,z=43.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=736.0,y=11,z=47.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=736.0,y=11,z=47.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=11,z=43.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#fortune tellers room-mirror room
execute if entity @s[x=741.5,y=11,z=53.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=741.5,y=11,z=59.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=741.5,y=11,z=59.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=741.5,y=11,z=53.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 3-laundry room
execute if entity @s[x=716.5,y=11,z=-8.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=716.5,y=11,z=-43.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=716.5,y=11,z=-43.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=716.5,y=11,z=-8.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#laundry room-butlers room
execute if entity @s[x=719.0,y=11,z=-49.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=739.0,y=11,z=-45.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=739.0,y=11,z=-45.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=11,z=-49.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 5-conservatory
execute if entity @s[x=680.0,y=11,z=15.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=663.0,y=11,z=21.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=663.0,y=11,z=21.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=680.0,y=11,z=15.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 4-dining room
execute if entity @s[x=706.5,y=11,z=32.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=704.5,y=11,z=-14.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=704.5,y=11,z=-14.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=706.5,y=11,z=32.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#dining room-kitchen
execute if entity @s[x=704.5,y=11,z=-41.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=704.5,y=11,z=-47.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=705.5,y=11,z=-41.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=705.5,y=11,z=-47.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=704.5,y=11,z=-47.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=704.5,y=11,z=-41.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=705.5,y=11,z=-47.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=705.5,y=11,z=-41.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#kitchen-boneyard
execute if entity @s[x=699.0,y=11,z=-72.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=685.0,y=102,z=-37.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=685.0,y=102,z=-37.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=699.0,y=11,z=-72.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 6-courtyard
execute if entity @s[x=669.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=653.0,y=102,z=-5.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=653.0,y=102,z=-5.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=669.0,y=11,z=7.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#courtyard-rec room
execute if entity @s[x=653.0,y=102,z=53.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=639.0,y=11,z=73.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=639.0,y=11,z=73.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=653.0,y=102,z=53.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#rec room-hallway 8
execute if entity @s[x=648.0,y=11,z=59.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=661.0,y=11,z=59.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=661.0,y=11,z=59.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=648.0,y=11,z=59.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 5-hallway 8
execute if entity @s[x=682.5,y=11,z=44.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=663.5,y=11,z=53.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=663.5,y=11,z=53.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.5,y=11,z=44.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 8-tea room
execute if entity @s[x=661.0,y=20,z=59.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=648.0,y=20,z=59.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=648.0,y=20,z=59.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=661.0,y=20,z=59.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 8-hallway 9
execute if entity @s[x=663.5,y=20,z=53.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.5,y=20,z=44.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=682.5,y=20,z=44.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=663.5,y=20,z=53.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 9-washroom 2
execute if entity @s[x=682.5,y=20,z=5.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=664.5,y=20,z=-20.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=664.5,y=20,z=-20.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.5,y=20,z=5.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 10-bathroom 2
execute if entity @s[x=673.5,y=20,z=5.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=654.5,y=20,z=-1.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=654.5,y=20,z=-1.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=673.5,y=20,z=5.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 10-nanas room
execute if entity @s[x=673.5,y=20,z=10.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=658.5,y=20,z=18.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=658.5,y=20,z=18.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=673.5,y=20,z=10.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 11-astral hall
execute if entity @s[x=691.5,y=20,z=37.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=666.5,y=20,z=88.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=666.5,y=20,z=88.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=691.5,y=20,z=37.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#astral hall-observatory
execute if entity @s[x=666.5,y=20,z=107.0,distance=..0.7,tag=furniture,tag=door] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run tag @e[x=666.5,y=20,z=88.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=666.5,y=20,z=107.0,distance=..0.7,tag=furniture,tag=door] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run tag @e[x=691.5,y=20,z=37.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=666.5,y=20,z=107.0,distance=..0.7,tag=furniture,tag=door] if data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run tag @e[x=645.5,y=20,z=89.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=645.5,y=20,z=89.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=666.5,y=20,z=107.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 5-billiards room
execute if entity @s[x=685.0,y=11,z=10.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=675.0,y=11,z=-54.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=675.0,y=11,z=-54.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=685.0,y=11,z=10.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#billiards room-projection room
execute if entity @s[x=681.5,y=11,z=-50.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=681.5,y=11,z=-29.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=681.5,y=11,z=-29.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=681.5,y=11,z=-50.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 2-the twins room
execute if entity @s[x=729.0,y=20,z=-40.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=738.0,y=20,z=-28.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=738.0,y=20,z=-28.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=729.0,y=20,z=-40.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 15-safari room
execute if entity @s[x=719.0,y=29,z=59.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=734.0,y=29,z=54.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=734.0,y=29,z=54.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=29,z=59.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#safari room-hallway 16
execute if entity @s[x=738.5,y=29,z=51.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=753.5,y=29,z=31.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=753.5,y=29,z=31.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=738.5,y=29,z=51.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 17-balcony 2
execute if entity @s[x=726.0,y=29,z=28.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.0,y=120,z=28.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=682.0,y=120,z=28.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=726.0,y=29,z=28.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#balcony 2-hallway 18
execute if entity @s[x=682.0,y=120,z=-12.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=725.0,y=29,z=-28.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=725.0,y=29,z=-28.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=682.0,y=120,z=-12.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 19-telephone room
execute if entity @s[x=752.5,y=29,z=-26.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=749.5,y=29,z=-18.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=749.5,y=29,z=-18.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=752.5,y=29,z=-26.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 7-breaker room
execute if entity @s[x=714.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=699.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=699.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=714.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 7-cellar
execute if entity @s[x=719.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=736.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=736.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=2,z=62.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#cellar-hallway 20
execute if entity @s[x=741.5,y=2,z=59.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=726.5,y=2,z=36.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=726.5,y=2,z=36.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=741.5,y=2,z=59.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 21-hallway 22
execute if entity @s[x=701.0,y=2,z=33.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=685.0,y=2,z=33.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=685.0,y=2,z=33.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=701.0,y=2,z=33.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#telephone room-clockwork room
execute if entity @s[x=738.0,y=29,z=9.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=698.0,y=120,z=19.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=698.0,y=120,z=19.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=738.0,y=29,z=9.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 19-armory
execute if entity @s[x=752.5,y=29,z=-31.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=757.5,y=29,z=-40.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=757.5,y=29,z=-40.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=752.5,y=29,z=-31.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#armory-ceramics studio
execute if entity @s[x=746.0,y=29,z=-42.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=712.0,y=29,z=-44.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=712.0,y=29,z=-44.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=746.0,y=29,z=-42.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 21-pipe room
execute if entity @s[x=706.5,y=2,z=31.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=693.5,y=2,z=20.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=693.5,y=2,z=20.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=706.5,y=2,z=31.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 20-cold storage
execute if entity @s[x=726.5,y=2,z=31.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=735.5,y=2,z=20.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=735.5,y=2,z=20.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=726.5,y=2,z=31.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 13-sitting room
execute if entity @s[x=719.0,y=20,z=45.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=736.0,y=20,z=49.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=736.0,y=20,z=49.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=719.0,y=20,z=45.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#sitting room-guest room
execute if entity @s[x=741.5,y=20,z=53.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=741.5,y=20,z=59.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=741.5,y=20,z=59.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=741.5,y=20,z=53.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 17-the artists studio
execute if entity @s[x=736.5,y=29,z=31.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=699.5,y=29,z=72.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=699.5,y=29,z=72.0,distance=..0.7,tag=furniture,tag=door] run tag @e[x=736.5,y=29,z=31.0,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
#hallway 22-secret altar
execute if entity @s[x=653.0,y=2,z=33.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=653.0,y=93,z=33.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation
execute if entity @s[x=653.0,y=93,z=33.5,distance=..0.7,tag=furniture,tag=door] run tag @e[x=655.0,y=2,z=33.5,distance=..0.7,tag=furniture,tag=door,limit=1] add forced_animation