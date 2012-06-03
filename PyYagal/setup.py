from distutils.core import setup
from distutils.extension import Extension
#from Cython.Distutils import build_ext

from setuptools import find_packages

import os.path
script_dir = os.path.dirname(__file__)

#ext_modules = [Extension("yagal", [os.path.join(script_dir, "yagal.pyx")])]
#ext_modules = [Extension("yagal")]

setup(
  name = 'yagal',
  #cmdclass = {'build_ext': build_ext},
  #ext_modules = ext_modules,
  url="https://github.com/hdinh/yagal",
  packages = find_packages(),
)
