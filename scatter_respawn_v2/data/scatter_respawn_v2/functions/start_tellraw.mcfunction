tellraw @a "リス地バラバラクラフトスタート！"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=0}] run tellraw @a "この試合ではマップ外報告がありません。"

execute if entity @e[tag=sr_PlayCounter,scores={sr_report=1,sr_timelimit=36000}] run tellraw @a "残り時間が20分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=2,sr_timelimit=36000}] run tellraw @a "残り時間が20,10分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=3,sr_timelimit=36000}] run tellraw @a "残り時間が20,10,5分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=4,sr_timelimit=36000}] run tellraw @a "残り時間が20,15,10,5分になると、マップ外にいる人が発表されます。"

execute if entity @e[tag=sr_PlayCounter,scores={sr_report=1,sr_timelimit=54000}] run tellraw @a "残り時間が20分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=2,sr_timelimit=54000}] run tellraw @a "残り時間が20,10分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=3,sr_timelimit=54000}] run tellraw @a "残り時間が30,20,10分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=4,sr_timelimit=54000}] run tellraw @a "残り時間が30,20,10,5分になると、マップ外にいる人が発表されます。"

execute if entity @e[tag=sr_PlayCounter,scores={sr_report=1,sr_timelimit=72000}] run tellraw @a "残り時間が30分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=2,sr_timelimit=72000}] run tellraw @a "残り時間が30,10分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=3,sr_timelimit=72000}] run tellraw @a "残り時間が40,20,5分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=4,sr_timelimit=72000}] run tellraw @a "残り時間が30,30,15,5分になると、マップ外にいる人が発表されます。"

execute if entity @e[tag=sr_PlayCounter,scores={sr_report=1,sr_timelimit=108000}] run tellraw @a "残り時間が45分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=2,sr_timelimit=108000}] run tellraw @a "残り時間が60,30分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=3,sr_timelimit=108000}] run tellraw @a "残り時間が60,30,5分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=4,sr_timelimit=108000}] run tellraw @a "残り時間が60,40,20,5分になると、マップ外にいる人が発表されます。"

execute if entity @e[tag=sr_PlayCounter,scores={sr_report=1,sr_timelimit=144000}] run tellraw @a "残り時間が60分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=2,sr_timelimit=144000}] run tellraw @a "残り時間が80,40分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=3,sr_timelimit=144000}] run tellraw @a "残り時間が80,40,10分になると、マップ外にいる人が発表されます。"
execute if entity @e[tag=sr_PlayCounter,scores={sr_report=4,sr_timelimit=144000}] run tellraw @a "残り時間が90,60,30,10分になると、マップ外にいる人が発表されます。"