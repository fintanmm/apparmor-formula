import testinfra


def test_apparmor_is_installed(host):
    apparmor = host.package("apparmor")
    assert apparmor.is_installed


def test_apparmor_running_and_enabled(host):
    apparmor = host.service("apparmor")
    assert apparmor.is_running
    assert apparmor.is_enabled


def test_config_file(host):
    apparmor = host.file("/etc/apparmor/parser.conf")
    assert apparmor.contains("verbose")
