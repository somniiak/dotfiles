### Minimal Xorg
```
xf86-input-libinput
xorg-minimal
xorg-fonts
```

Definitely don't install `xf86-video-amdgpu` - it's obsolete and causes bugs (rearranging desktop icons in Xfce). `modesetting` driver included in xorg is the modern standard.

### Probably
```
gnome-themes-extra
```
