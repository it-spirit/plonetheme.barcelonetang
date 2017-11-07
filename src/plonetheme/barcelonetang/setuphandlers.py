# -*- coding: utf-8 -*-
"""Post install import steps for ps.diazo.quito."""

from Products.CMFPlone.interfaces import INonInstallable
from zope.interface import implementer


@implementer(INonInstallable)
class HiddenProfiles(object):
    """Hidden GS profiles."""

    def getNonInstallableProfiles(self):
        """Do not show on Plone's list of installable profiles."""
        return [
            'plonetheme.barcelonetang:testfixture',
            'plonetheme.barcelonetang:uninstall',
        ]


def post_install(context):
    """Post install script"""
    # Do something at the end of the installation of this package.


def uninstall(context):
    """Uninstall script"""
    # Do something at the end of the uninstallation of this package.
