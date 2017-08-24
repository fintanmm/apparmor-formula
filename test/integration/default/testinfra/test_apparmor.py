import testinfra


def test_apparmor_is_installed(host):
    apparmor = host.package("apparmor")
    assert apparmor.is_installed


def test_apparmor_utils_is_installed(host):
    apparmor_utils = host.package("apparmor-utils")
    assert apparmor_utils.is_installed


def test_apparmor_is_loaded(host):
    apparmor_status = host.check_output("apparmor_status")
    assert "apparmor module is loaded." in apparmor_status
    assert "apparmor filesystem is not mounted." in apparmor_status


def test_apparmor_running_and_enabled(host):
    apparmor = host.service("apparmor")
    assert apparmor.is_running
    assert apparmor.is_enabled


def test_config_file(host):
    apparmor = host.file("/etc/apparmor/parser.conf")
    assert apparmor.contains("verbose")
