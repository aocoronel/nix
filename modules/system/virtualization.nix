{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    libvirt
    virt-manager
    qemu
    uefi-run
    lxc
    swtpm
    dosfstools
  ];
  virtualisation.libvirtd = {
    allowedBridges = [
      "nm-bridge"
      "virbr0"
    ];
    enable = true;
    qemu.runAsRoot = false;
  };
  # virtualisation.waydroid.enable = true;
}
