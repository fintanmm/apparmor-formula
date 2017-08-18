import testinfra

def test_apparmor_is_installed(host):
    apparmor = host.package("apparmor")
    assert apparmor.is_installed

def test_config_file(host):
    apparmor = host.file("/etc/apparmor.conf")
