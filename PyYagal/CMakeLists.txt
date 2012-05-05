find_package(PythonLibs REQUIRED)

# TODO: ughhhh.....
execute_process(COMMAND python ${CMAKE_CURRENT_LIST_DIR}/setup.py build_ext --inplace)
execute_process(COMMAND mv yagal.so ${CMAKE_CURRENT_LIST_DIR}/../bin)

