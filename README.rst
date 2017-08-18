================
apparmor-formula
================

A saltstack formula that for managing Apparmor.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``apparmor``
------------

Installs the apparmor package, and starts the associated apparmor service.

``apparmor.complain``
------------

Places apparmor profiles into complain mode.

``apparmor.enforce``
------------

Places apparmor profiles into enforce mode.

``apparmor.disable``
------------

Places apparmor profiles into disabled mode.