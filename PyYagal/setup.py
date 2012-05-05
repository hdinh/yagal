from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

import os.path
script_dir = os.path.dirname(__file__)

ext_modules = [Extension("yagal", [os.path.join(script_dir, "yagal.pyx")])]

setup(
  name = 'Yagal',
  cmdclass = {'build_ext': build_ext},
  ext_modules = ext_modules
)
