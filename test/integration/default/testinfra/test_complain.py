import testinfra


def test_apparmor_complain_profile(host):
    aa_status = Command.check_output("aa-status")
    assert "1 profiles are in complain mode" in aa_status
