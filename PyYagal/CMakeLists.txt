FIND_PACKAGE(PythonLibs REQUIRED)

ADD_CUSTOM_COMMAND(
    OUTPUT pyyagal
    COMMAND python ${CMAKE_CURRENT_LIST_DIR}/setup.py build_ext --inplace
    COMMAND mv yagal.so ${CMAKE_CURRENT_LIST_DIR}/../bin
)

ADD_CUSTOM_TARGET(PyYagal ALL DEPENDS pyyagal)
