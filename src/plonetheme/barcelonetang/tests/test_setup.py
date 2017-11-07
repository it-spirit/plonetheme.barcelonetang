# -*- coding: utf-8 -*-
"""Setup tests for this package."""
from plone import api
from plonetheme.barcelonetang.testing import PLONETHEME_BARCELONETANG_INTEGRATION_TESTING  # noqa

import unittest


class TestSetup(unittest.TestCase):
    """Test that plonetheme.barcelonetang is properly installed."""

    layer = PLONETHEME_BARCELONETANG_INTEGRATION_TESTING

    def setUp(self):
        """Custom shared utility setup for tests."""
        self.portal = self.layer['portal']
        self.installer = api.portal.get_tool('portal_quickinstaller')

    def test_product_installed(self):
        """Test if plonetheme.barcelonetang is installed."""
        self.assertTrue(self.installer.isProductInstalled(
            'plonetheme.barcelonetang'))

    def test_browserlayer(self):
        """Test that IPlonethemeBarcelonetangLayer is registered."""
        from plonetheme.barcelonetang.interfaces import (
            IPlonethemeBarcelonetangLayer)
        from plone.browserlayer import utils
        self.assertIn(IPlonethemeBarcelonetangLayer, utils.registered_layers())


class TestUninstall(unittest.TestCase):

    layer = PLONETHEME_BARCELONETANG_INTEGRATION_TESTING

    def setUp(self):
        self.portal = self.layer['portal']
        self.installer = api.portal.get_tool('portal_quickinstaller')
        self.installer.uninstallProducts(['plonetheme.barcelonetang'])

    def test_product_uninstalled(self):
        """Test if plonetheme.barcelonetang is cleanly uninstalled."""
        self.assertFalse(self.installer.isProductInstalled(
            'plonetheme.barcelonetang'))

    def test_browserlayer_removed(self):
        """Test that IPlonethemeBarcelonetangLayer is removed."""
        from plonetheme.barcelonetang.interfaces import \
            IPlonethemeBarcelonetangLayer
        from plone.browserlayer import utils
        self.assertNotIn(IPlonethemeBarcelonetangLayer, utils.registered_layers())
