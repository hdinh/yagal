find_package(PythonLibs REQUIRED)

execute_process(COMMAND ${PYTHON_EXECUTABLE} setup.py build_ext --inplace)
