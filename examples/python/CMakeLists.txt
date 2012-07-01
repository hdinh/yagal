# Just copy the file to bin, ugly but it works for now...
ADD_CUSTOM_COMMAND(
    OUTPUT pythonexamples
    COMMAND cp max_ones.py "${LIBRARY_OUTPUT_PATH}"
)

ADD_CUSTOM_TARGET(PythonExamples ALL DEPENDS pythonexamples)
