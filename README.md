veewee-templates
================

The only template is Debian 'Jessie' 8.0, which uses the beta 2 release of the i386 netinst cd.
Based on veewee's original [Debian-7.6.0-i386-netboot](https://github.com/jedi4ever/veewee/tree/master/templates/Debian-7.6.0-i386-netboot) template.
The original template doesn't preseed correctly, so some modifications to boot line and preseed.cfg were required.

## Notes

1. Some postinstall files like chef, puppet and ruby are disabled. Enable them if required.
2. GRUB still may ask questions.
3. The guest's apt uses host's apt-cacher-ng by default. Disable `apt-proxy.sh` postinstall entry if you don't want this behaviour.
