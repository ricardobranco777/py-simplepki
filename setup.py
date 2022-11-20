#!/usr/bin/env python3
"""
Setup script
"""

from setuptools import setup


def read(path):
    """
    Read a file
    """
    with open(path, encoding="utf-8") as file:
        return file.read()


setup(
    name='simplepki',
    version="0.1.0a",
    description="Simple PKI for testing TLS",
    long_description=read('README.md'),
    long_description_content_type="text/markdown",
    author="Ricardo Branco",
    author_email='rbranco@suse.de',
    url='https://github.com/ricardobranco777/py-simplepki',
    package_dir={'simplepki': '.'},
    # packages=find_packages(),
    include_package_data=True,
    python_requires='>=3.6',
    install_requires=read('requirements.txt'),
    license='MIT License',
    zip_safe=False,
    keywords='simplepki',
    scripts=['simplepki'],
    classifiers=[
        'Development Status :: 4 - Beta',
        'Environment :: Console',
        'Intended Audience :: Developers',
        'Intended Audience :: System Administrators',
        'Topic :: Security :: Cryptography',
        'License :: OSI Approved :: '
        'MIT License',
        'Natural Language :: English',
        'Operating System :: Unix',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
        'Programming Language :: Python :: 3.8',
        'Programming Language :: Python :: 3.9',
        'Programming Language :: Python :: 3.10',
        'Programming Language :: Python :: 3 :: Only',
    ],
)
