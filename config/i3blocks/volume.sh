#!/bin/bash

if [ "$(LANG=C pactl get-sink-mute $(pactl get-default-sink) | awk '{print $2}')" = "yes" ]; then
	echo "[        MUTE        ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')"
else
	case $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}') in
		100%) echo "[====================] MAX" ;;
		9[5-9]%)	echo "[===================>]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		9[0-4]%) echo "[==================> ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		8[5-9]%) echo "[=================>  ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		8[0-4]%) echo "[================>   ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		7[5-9]%) echo "[===============>    ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		7[0-4]%) echo "[==============>     ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		6[5-9]%) echo "[=============>      ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		6[0-4]%) echo "[============>       ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		5[5-9]%) echo "[===========>        ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		5[0-4]%) echo "[==========>         ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		4[5-9]%) echo "[=========>          ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		4[0-4]%) echo "[========>           ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		3[5-9]%) echo "[=======>            ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		3[0-4]%) echo "[======>             ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		2[5-9]%) echo "[=====>              ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		2[0-4]%) echo "[====>               ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		1[5-9]%) echo "[===>                ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		1[0-4]%) echo "[==>                 ]  $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		[5-9]%) echo "[=>                  ]   $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		[1-5]%) echo "[>                   ]   $(pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}')" ;;
		0%) echo "[                    ]   0%";;
		*) sleep 1 & exec ${0};;
	esac
fi
