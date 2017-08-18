import testinfra


def test_apparmor_complain_profile(host):
    apparmor = host.file("/etc/apparmor.d/usr.sbin.rsyslog")
    assert apparmor.contains("complain")
