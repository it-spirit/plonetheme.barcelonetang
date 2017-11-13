# -*- coding: utf-8 -*-
"""Test Layer for ps.diazo.quito."""

from plone.app.contenttypes.testing import PLONE_APP_CONTENTTYPES_FIXTURE
from plone.app.robotframework.testing import REMOTE_LIBRARY_BUNDLE_FIXTURE
from plone.app.testing import applyProfile
from plone.app.testing import FunctionalTesting
from plone.app.testing import IntegrationTesting
from plone.app.testing import PloneSandboxLayer
from plone.testing import Layer
from plone.testing import z2


class PlonethemeBarcelonetangLayer(PloneSandboxLayer):
    """Custom Test Layer for plonetheme.barcelonetang."""

    defaultBases = (PLONE_APP_CONTENTTYPES_FIXTURE, )

    def setUpZope(self, app, configurationContext):
        """Set up Zope for testing."""
        # Load ZCML
        import plonetheme.barcelonetang
        self.loadZCML(package=plonetheme.barcelonetang)

    def setUpPloneSite(self, portal):
        applyProfile(portal, 'plonetheme.barcelonetang:default')
        applyProfile(portal, 'plone.app.contenttypes:plone-content')
        applyProfile(portal, 'plonetheme.barcelonetang:testfixture')


PLONETHEME_BARCELONETANG_FIXTURE = PlonethemeBarcelonetangLayer()


PLONETHEME_BARCELONETANG_INTEGRATION_TESTING = IntegrationTesting(
    bases=(PLONETHEME_BARCELONETANG_FIXTURE, ),
    name='PlonethemeBarcelonetangLayer:IntegrationTesting'
)


PLONETHEME_BARCELONETANG_FUNCTIONAL_TESTING = FunctionalTesting(
    bases=(PLONETHEME_BARCELONETANG_FIXTURE, ),
    name='PlonethemeBarcelonetangLayer:FunctionalTesting'
)


PLONETHEME_BARCELONETANG_ACCEPTANCE_TESTING = FunctionalTesting(
    bases=(
        PLONETHEME_BARCELONETANG_FIXTURE,
        REMOTE_LIBRARY_BUNDLE_FIXTURE,
        z2.ZSERVER_FIXTURE
    ),
    name='PlonethemeBarcelonetangLayer:AcceptanceTesting'
)


ROBOT_TESTING = Layer(name='plonetheme.barcelonetang:Robot')
