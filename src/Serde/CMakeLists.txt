set(LUNA_SOURCE_FILES
    Deserialiser.cc
    BitDeserialiser.cc
    BitSerialiser.cc
)

add_library(LunaSerde STATIC ${LUNA_SOURCE_FILES})
