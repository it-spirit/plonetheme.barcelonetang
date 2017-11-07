# -*- coding: utf-8 -*-
from plone.app.contenttypes.testing import PLONE_APP_CONTENTTYPES_FIXTURE
from plone.app.robotframework.testing import REMOTE_LIBRARY_BUNDLE_FIXTURE
from plone.app.testing import applyProfile
from plone.app.testing import FunctionalTesting
from plone.app.testing import IntegrationTesting
from plone.app.testing import PloneSandboxLayer
from plone.testing import z2

import plonetheme.barcelonetang


class PlonethemeBarcelonetangLayer(PloneSandboxLayer):

    defaultBases = (PLONE_APP_CONTENTTYPES_FIXTURE,)

    def setUpZope(self, app, configurationContext):
        # Load any other ZCML that is required for your tests.
        # The z3c.autoinclude feature is disabled in the Plone fixture base
        # layer.
        self.loadZCML(package=plonetheme.barcelonetang)

    def setUpPloneSite(self, portal):
        applyProfile(portal, 'plonetheme.barcelonetang:default')


PLONETHEME_BARCELONETANG_FIXTURE = PlonethemeBarcelonetangLayer()


PLONETHEME_BARCELONETANG_INTEGRATION_TESTING = IntegrationTesting(
    bases=(PLONETHEME_BARCELONETANG_FIXTURE,),
    name='PlonethemeBarcelonetangLayer:IntegrationTesting'
)


PLONETHEME_BARCELONETANG_FUNCTIONAL_TESTING = FunctionalTesting(
    bases=(PLONETHEME_BARCELONETANG_FIXTURE,),
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
