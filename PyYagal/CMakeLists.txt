find_package(PythonLibs REQUIRED)

# Build the cython libraries using python disttools
execute_process(COMMAND python ${CMAKE_CURRENT_LIST_DIR}/setup.py build_ext --inplace)
file(MAKE_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/../bin)

# Move the built dlls to the bin directory
IF(WIN32)
    file(TO_CMAKE_PATH ${CMAKE_CURRENT_LIST_DIR}/../yagal.pyd ${CMAKE_CURRENT_LIST_DIR}/../bin)
ELSE(WIN32)
    execute_process(COMMAND mv yagal.so ${CMAKE_CURRENT_LIST_DIR}/../bin)
ENDIF(WIN32)

