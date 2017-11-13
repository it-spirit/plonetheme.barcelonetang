# -*- coding: utf-8 -*-
"""Installer for the plonetheme.barcelonetang package."""

from setuptools import find_packages
from setuptools import setup


version = '0.2'
description = 'The Barceloneta NG Theme for Plone 5.'
long_description = '\n\n'.join([
    open('README.rst').read(),
    open('CONTRIBUTORS.rst').read(),
    open('CHANGES.rst').read(),
])

install_requires = [
    'setuptools',
    # -*- Extra requirements: -*-
    'Products.GenericSetup>=1.8.2',
    'collective.themefragments',
    'collective.themesitesetup',
    'plone.api',
    'plone.app.theming',
    'spirit.plone.theming',
],

testfixture_requires = [
    'plone.app.mosaic',
    'plone.app.standardtiles',
    'webcouturier.dropdownmenu',
]


setup(
    name='plonetheme.barcelonetang',
    version=version,
    description=description,
    long_description=long_description,
    # Get more from https://pypi.python.org/pypi?%3Aaction=list_classifiers
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        'Environment :: Web Environment',
        'Framework :: Plone',
        'Framework :: Plone :: 5.0',
        'Framework :: Plone :: 5.1',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: GNU General Public License v2 (GPLv2)',
        'Programming Language :: Python',
        'Programming Language :: Python :: 2.7',
    ],
    keywords='plone diazo',
    author='it-spirit',
    author_email='development@it-spir.it',
    url='https://github.com/it-spirit/plonetheme.barcelonetang',
    download_url='https://pypi.python.org/pypi/plonetheme.barcelonetang',
    license='GPL version 2',
    packages=find_packages('src', exclude=['ez_setup']),
    package_dir={'': 'src'},
    namespace_packages=['plonetheme'],
    include_package_data=True,
    zip_safe=False,
    install_requires=install_requires,
    extras_require=dict(
        testfixture=testfixture_requires,
        test=[
            'plone.app.robotframework',
            'plone.app.testing',
            'robotframework-selenium2screenshots',
        ],
    ),
    entry_points="""
    [z3c.autoinclude.plugin]
    target = plone
    """,
)
