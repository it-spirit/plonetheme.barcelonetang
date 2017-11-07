# -*- coding: utf-8 -*-
"""Installer for the plonetheme.barcelonetang package."""

from setuptools import find_packages
from setuptools import setup


long_description = '\n\n'.join([
    open('README.rst').read(),
    open('CONTRIBUTORS.rst').read(),
    open('CHANGES.rst').read(),
])


install_requires = [
    'Products.GenericSetup>=1.8.2',
    'plone.api',
    'plone.app.theming',
    'plonetheme.barceloneta',
    'setuptools',
    'z3c.jbot',
],


setup(
    name='plonetheme.barcelonetang',
    version='1.0.dev0',
    description="The NG default theme for Plone 5",
    long_description=long_description,
    # Get more from https://pypi.python.org/pypi?%3Aaction=list_classifiers
    classifiers=[
        "Environment :: Web Environment",
        "Framework :: Plone",
        "Framework :: Plone :: 5.1rc1",
        "Programming Language :: Python",
        "Programming Language :: Python :: 2.7",
        "Operating System :: OS Independent",
        "License :: OSI Approved :: GNU General Public License v2 (GPLv2)",
    ],
    keywords='Python Plone',
    author='Thomas Massmann',
    author_email='thomas.massmann@it-spir.it',
    url='https://github.com/it-spirit/plonetheme.barcelonetang',
    download_url='https://pypi.python.org/pypi/plonetheme.barcelonetang',
    license='GPL version 2',
    packages=find_packages('src', exclude=['ez_setup']),
    namespace_packages=['plonetheme'],
    package_dir={'': 'src'},
    include_package_data=True,
    zip_safe=False,
    install_requires=install_requires,
    extras_require={
        'test': [
            'plone.app.contenttypes',
            'plone.app.robotframework[debug]',
            'plone.app.testing',
            'robotframework-selenium2screenshots',
        ],
    },
    entry_points="""
    [z3c.autoinclude.plugin]
    target = plone
    """,
)
