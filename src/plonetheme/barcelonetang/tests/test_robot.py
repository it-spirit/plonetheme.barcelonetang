# -*- coding: utf-8 -*-
"""Test UI with robot framework."""

from plone import api
from plone.testing import layered
from plonetheme.barcelonetang import testing

import os
import robotsuite
import unittest


def test_suite():
    """Create the robot test suite."""
    suite = unittest.TestSuite()
    no_robot = 'NO_ROBOT' in os.environ.keys()
    if no_robot or api.env.plone_version() < '4.2':
        # No robot tests for Plone 4.1.x
        return suite

    current_dir = os.path.abspath(os.path.dirname(__file__))
    robot_dir = os.path.join(current_dir, 'robot')
    robot_tests = [
        os.path.join('robot', doc)
        for doc in os.listdir(robot_dir)
        if doc.startswith('test') and doc.endswith('.robot')
    ]
    for test in robot_tests:
        suite.addTests([
            layered(
                robotsuite.RobotTestSuite(test),
                layer=testing.ROBOT_TESTING,
            ),
        ])
    return suite
