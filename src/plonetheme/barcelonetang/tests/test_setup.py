# -*- coding: utf-8 -*-
"""Test Setup of plonetheme.barcelonetang."""

from plone import api
from plone.browserlayer.utils import registered_layers
from plonetheme.barcelonetang import config
from plonetheme.barcelonetang import testing

import unittest


class TestSetup(unittest.TestCase):
    """Validate setup process for plonetheme.barcelonetang."""

    layer = testing.PLONETHEME_BARCELONETANG_INTEGRATION_TESTING

    def setUp(self):
        """Custom shared utility setup for tests."""
        self.portal = self.layer['portal']
        self.installer = api.portal.get_tool('portal_quickinstaller')

    def test_product_installed(self):
        """Validate that our product is installed."""
        self.assertTrue(
            self.installer.isProductInstalled(config.PROJECT_NAME)
        )

    def test_addon_layer(self):
        """Validate that the browserlayer for our product is installed."""
        layers = [l.getName() for l in registered_layers()]
        self.assertIn('IPlonethemeBarcelonetangLayer', layers)

    def test_plone_app_theming_installed(self):
        """Validate that plone.app.theming is installed."""
        qi = self.portal.portal_quickinstaller
        product = 'plone.app.theming'
        if qi.isProductAvailable(product):
            self.assertTrue(qi.isProductInstalled(product))
        else:
            self.assertTrue(product in qi.listInstallableProfiles())

    def test_spirit_plone_theming_installed(self):
        """Validate that spirit.plone.theming is installed."""
        qi = self.portal.portal_quickinstaller
        product = 'spirit.plone.theming'
        if qi.isProductAvailable(product):
            self.assertTrue(qi.isProductInstalled(product))
        else:
            self.assertTrue(product in qi.listInstallableProfiles())


class TestUninstall(unittest.TestCase):
    """Validate uninstall process for plonetheme.barcelonetang."""

    layer = testing.PLONETHEME_BARCELONETANG_INTEGRATION_TESTING

    def setUp(self):
        """Custom shared utility setup for tests."""
        self.portal = self.layer['portal']
        self.installer = api.portal.get_tool('portal_quickinstaller')
        self.installer.uninstallProducts([config.PROJECT_NAME])

    def test_product_uninstalled(self):
        """Validate that our product is uninstalled."""
        self.assertFalse(self.installer.isProductInstalled(
            config.PROJECT_NAME,
        ))

    def test_addon_layer_removed(self):
        """Validate that the browserlayer is removed."""
        layers = [l.getName() for l in registered_layers()]
        self.assertNotIn('IPlonethemeBarcelonetangLayer', layers)
