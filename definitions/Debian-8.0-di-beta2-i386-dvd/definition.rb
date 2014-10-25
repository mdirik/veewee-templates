Veewee::Definition.declare({
  :cpu_count => '1',
  :memory_size=> '512',
  :disk_size => '10140', :disk_format => 'VDI', :hostiocache => 'off',
  :os_type_id => 'Debian',
  :iso_file => "debian-jessie-DI-b2-i386-netinst.iso",
  :iso_src => "http://cdimage.debian.org/cdimage/jessie_di_beta_2/i386/iso-cd/debian-jessie-DI-b2-i386-netinst.iso",
  :iso_md5 => "790353ec24c717cb9ab40cfe9e79eb16",
  :iso_download_timeout => "1000",
  :boot_wait => "10", :boot_cmd_sequence => [
     '<Esc>',
     '/install.386/vmlinuz ',
     'initrd=/install.386/initrd.gz ',
     'locale=en_US ',
     'preseed/url=http://%IP%:%PORT%/preseed.cfg ',
     'debian-installer=en_US ',
     'auto ',
     'kbd-chooser/method=us ',
     'netcfg/get_hostname=%NAME% ',
     'netcfg/get_domain=vagrantup.com ',
     'fb=false ',
     'debconf/frontend=noninteractive ',
     'console-setup/ask_detect=false ',
     'console-keymaps-at/keymap=us ',
     'keyboard-configuration/xkb-keymap=us ',
     'DEBCONF_DEBUG=5 ',
     '<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => "300",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "halt -p",
  #~ :virtualbox => {
      #~ :vm_options => [
          #~ 'nic2' => 'bridged',
          #~ 'nictype2' => 'virtio',
          #~ 'bridgeadapter2' => 'wlan0'
      #~ ]
  #~ },
  :postinstall_files => [
    "apt-proxy.sh",
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => "10000"
})
