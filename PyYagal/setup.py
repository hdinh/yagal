#------------------------------------------------------------------------------
# Imports
#------------------------------------------------------------------------------
import sys
import os.path

from distutils.core import setup
from distutils.extension import Extension

#from setuptools import find_packages

#------------------------------------------------------------------------------
# Configuration
#------------------------------------------------------------------------------

script_dir = os.path.dirname(__file__)

# not actively testing with anything else, just to be safe
if sys.version_info < (2,7):
    print("ERRROR: PyYagal rquires at least Python 2.7 or later")
    sys.exit(1)

requires = ['setuptools', 'cython']

if sys.platform.startswith('win'):
    lib_ext = '.dll'
elif sys.platform == 'darwin':
    lib_ext = '.dylib'
else:
    lib_ext = '.so'

package_data = {'yagal': ['*.pxd', '*' + lib_ext]}

#------------------------------------------------------------------------------
# Extensions
#------------------------------------------------------------------------------

cmdclass = {}

try:
    from Cython.Distutils import build_ext
    cmdclass['build_ext'] = build_ext
except:
    pass

extensions = [Extension("yagal", [os.path.join(script_dir, "yagal.pyx")])]

#------------------------------------------------------------------------------
# Main setup
#------------------------------------------------------------------------------

setup(
    name = 'yagal',
    cmdclass = cmdclass,
    ext_modules = extensions,
    package_data = package_data,
    url = "https://github.com/hdinh/yagal",
    #packages = find_packages(),
    install_requires=requires,
    classifiers = [
        'Development Status :: 1 - Planning',
        'Intended Audience :: Developers',
        'Intended Audience :: Science/Research',
        'Programming Language :: Python',
        'Topic :: Software Development :: Libraries :: Python Modules',
        'Operating System :: Unix',
        'Operating System :: POSIX :: Linux',
        'Operating System :: MacOS :: MacOS X',
        'Operating System :: Microsoft :: Windows',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.7',
    ]
)
