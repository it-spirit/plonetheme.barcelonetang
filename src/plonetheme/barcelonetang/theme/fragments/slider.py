# -*- coding: utf-8 -*-
"""Slider view methods."""


def load_content(self):
    """Load content."""
    item = self.data.get('images')
    if not item:
        return
    item = self.context.portal_catalog(UID=item)
    if len(item) > 0:
        return item[0].getObject()


def images(self):
    """Return list of images for the slider."""
    content = self.load_content()
    if content is None:
        return
    return content.restrictedTraverse('@@contentlisting')(portal_type='Image')
