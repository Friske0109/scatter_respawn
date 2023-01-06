#MAP
forceload add 0 0 0 0
forceload add 1024 1024 1024 1024
execute unless entity @e[tag=sr_MapCenter] run summon armor_stand 1024 0 1024 {NoGravity:true,Marker:true,Invisible:true,Tags:["sr_MapCenter"]}
execute at @e[tag=sr_MapCenter] run forceload add ~4100 ~2050 ~4090 ~2040
execute at @e[tag=sr_MapCenter] run tp @e[tag=sr_MapCenter] ~4096 ~ ~2048
execute at @e[tag=sr_MapCenter] run spreadplayers ~ ~ 512 1024 false @a[tag=!sr_observer]
execute at @e[tag=sr_MapCenter] run tp @a[tag=sr_observer] ~ ~ ~

#score
scoreboard objectives add sr_timer dummy
scoreboard objectives add sr_timerT dummy
scoreboard objectives add sr_timerM dummy
scoreboard objectives add sr_timerS dummy
scoreboard objectives add sr_ingame dummy
scoreboard objectives add sr_together dummy
scoreboard objectives add sr_people dummy
scoreboard objectives add sr_timer20 dummy
scoreboard objectives add sr_timer60 dummy
scoreboard objectives add sr_difficulty dummy
scoreboard objectives add sr_posx dummy
scoreboard objectives add sr_posy dummy
scoreboard objectives add sr_posz dummy
scoreboard players reset @e sr_timer
scoreboard players reset @e sr_timerT
scoreboard players reset @e sr_ingame
scoreboard players reset @e sr_together
scoreboard players reset @e sr_people
scoreboard players reset @e sr_timer20
scoreboard players reset @e sr_timer60
scoreboard players reset @e sr_timerM
scoreboard players reset @e sr_timerS
scoreboard players reset @e sr_difficulty
scoreboard players reset @e sr_posx
scoreboard players reset @e sr_posy
scoreboard players reset @e sr_posz
scoreboard players set @e[tag=sr_MapCenter] sr_ingame 1
scoreboard players set @e[tag=sr_MapCenter] sr_timer 72000
scoreboard players set @e[tag=sr_MapCenter] sr_timer20 20
scoreboard players set @e[tag=sr_MapCenter] sr_timer60 60
clear @a
gamemode survival @a[tag=!sr_observer]
gamemode spectator @a[tag=sr_observer]

#NoP
execute store result score @e[tag=sr_MapCenter] sr_people run execute at @a[tag=!sr_observer] run execute if entity @a[tag=!sr_observer]

#title_and_tellraw
title @a times 10 100 10
tag @e remove sr_withinrange
execute unless entity @e[tag=sr_MapCenter,scores={sr_difficulty=1..}] run tellraw @a "難易度がeasyに設定されています。残り時間が40,20,10分になるとマップ外にいる人が発表されます。"
execute if entity @e[tag=sr_MapCenter,scores={sr_difficulty=1}] run tellraw @a "難易度がnormalに設定されています。残り時間が30分になるとマップ外にいる人が発表されます。"
execute if entity @e[tag=sr_MapCenter,scores={sr_difficulty=2}] run tellraw @a "難易度がhardに設定されています。ゲームを通してマップ外にいる人の発表はありません。"

#SpawnMarker
kill @e[tag=sr_SpawnMarker]
execute at @a[tag=!sr_observer] run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:true,Marker:true,Invisible:true,Tags:["sr_SpawnMarker"]}
execute at @e[tag=sr_SpawnMarker] run execute store result score @e[tag=sr_SpawnMarker,sort=nearest,limit=1] sr_player run scoreboard players get @p sr_player
execute at @e[tag=sr_SpawnMarker] run spawnpoint @p[tag=!sr_observer] ~ ~ ~

#bossbar
bossbar add display_timer "残り時間"
bossbar set display_timer players @a
bossbar set display_timer max 3600
bossbar set display_timer style notched_6

#Centerpos
execute at @e[tag=sr_MapCenter] run execute store result score @e[sort=nearest,limit=1] sr_posx run data get entity @e[sort=nearest,limit=1] Pos[0]
execute at @e[tag=sr_MapCenter] run execute store result score @e[sort=nearest,limit=1] sr_posy run data get entity @e[sort=nearest,limit=1] Pos[1]
execute at @e[tag=sr_MapCenter] run execute store result score @e[sort=nearest,limit=1] sr_posz run data get entity @e[sort=nearest,limit=1] Pos[2]

#SpawnMarker_CustomName
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

