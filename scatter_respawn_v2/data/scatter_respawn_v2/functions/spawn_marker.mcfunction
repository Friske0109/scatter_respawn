#spawn

execute at @a[tag=sr_player] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Marker:ture,Invisible:true,Tags:["sr_SpawnMarker"]}
execute at @e[tag=sr_SpawnMarker] run execute store result score @e[tag=sr_SpawnMarker,sort=nearest,limit=1] sr_player run scoreboard players get @p sr_player


#name

setblock 0 0 0 minecraft:oak_sign
setblock 0 1 0 minecraft:oak_sign
setblock 0 2 0 minecraft:oak_sign
setblock 0 3 0 minecraft:oak_sign

data merge block 0 0 0 {Text1:'["",{"selector":"@a[scores={sr_player=1}]"}]',Text2:'["",{"selector":"@a[scores={sr_player=2}]"}]',Text3:'["",{"selector":"@a[scores={sr_player=3}]"}]',Text4:'["",{"selector":"@a[scores={sr_player=4}]"}]'}
data merge block 0 1 0 {Text1:'["",{"selector":"@a[scores={sr_player=5}]"}]',Text2:'["",{"selector":"@a[scores={sr_player=6}]"}]',Text3:'["",{"selector":"@a[scores={sr_player=7}]"}]',Text4:'["",{"selector":"@a[scores={sr_player=8}]"}]'}
data merge block 0 2 0 {Text1:'["",{"selector":"@a[scores={sr_player=9}]"}]',Text2:'["",{"selector":"@a[scores={sr_player=10}]"}]',Text3:'["",{"selector":"@a[scores={sr_player=11}]"}]',Text4:'["",{"selector":"@a[scores={sr_player=12}]"}]'}
data merge block 0 3 0 {Text1:'["",{"selector":"@a[scores={sr_player=13}]"}]',Text2:'["",{"selector":"@a[scores={sr_player=14}]"}]',Text3:'["",{"selector":"@a[scores={sr_player=15}]"}]',Text4:'["",{"selector":"@a[scores={sr_player=16}]"}]'}

data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=1},limit=1] CustomName set from block 0 0 0 Text1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=2},limit=1] CustomName set from block 0 0 0 Text2
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=3},limit=1] CustomName set from block 0 0 0 Text3
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=4},limit=1] CustomName set from block 0 0 0 Text4

data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=5},limit=1] CustomName set from block 0 1 0 Text1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=6},limit=1] CustomName set from block 0 1 0 Text2
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=7},limit=1] CustomName set from block 0 1 0 Text3
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=8},limit=1] CustomName set from block 0 1 0 Text4

data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=9},limit=1] CustomName set from block 0 2 0 Text1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=10},limit=1] CustomName set from block 0 2 0 Text2
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=11},limit=1] CustomName set from block 0 2 0 Text3
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=12},limit=1] CustomName set from block 0 2 0 Text4

data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=13},limit=1] CustomName set from block 0 3 0 Text1
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=14},limit=1] CustomName set from block 0 3 0 Text2
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=15},limit=1] CustomName set from block 0 3 0 Text3
data modify entity @e[tag=sr_SpawnMarker,scores={sr_player=16},limit=1] CustomName set from block 0 3 0 Text4
