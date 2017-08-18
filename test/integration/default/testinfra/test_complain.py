import testinfra


def test_apparmor_complain_profile(host):
    apparmor = host.file("/etc/apparmor.d/usr.sbin.rsyslog")
    status = apparmor.check_output("aa-status > /apparmor-output")
    status_file = host.file("/apparmor-output")
    assert status_file.contains("1 profiles are in complain mode")
