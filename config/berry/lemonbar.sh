#!/bin/sh

BG="#E6A0B4FA"

Workspaces() {
  for i in $(seq 0 3)
  do
    echo -n " %{A:berryc switch_workspace $i:} $(echo $i + 1 | bc) %{A} "
  done
}

Date() {
  LANG=C date +"%Y/%m/%d (%a)"
}

Clock() {
  LANG=C date +"%H:%M %S"
}

while :
do
  echo "%{B${BG}}$(Workspaces)%{B-}%{r}%{B${BG}} $(Date) %{B-} %{B${BG}} $(Clock) %{B-}"
  sleep 1
done | lemonbar -g 1914x24+3+3 -B '#00FFFFFF' -F '#000064' -p | sh
