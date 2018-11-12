kate:
  pkg.installed

konsole:
  pkg.installed

/home/xubuntu/.config/katesyntaxhighlightingrc:
  file.managed:
    - source: salt://kate/katesyntaxhighlightingrc

/home/xubuntu/.config/katepartrc:
  file.managed:
    - source: salt://kate/katepartrc

