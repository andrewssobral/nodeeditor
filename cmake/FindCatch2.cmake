find_package(Catch2 CONFIG QUIET)
if(NOT Catch2_FOUND)
    message("Catch2_path is ${Catch2_path}")
    find_path(CATCH2_INCLUDE_DIR catch.hpp PATH ${Catch2_path})
    message("Catch2 include dir: ${CATCH2_INCLUDE_DIR}")
    add_library(Catch2::Catch INTERFACE IMPORTED)
    set_target_properties(Catch2::Catch PROPERTIES
            INTERFACE_INCLUDE_DIRECTORIES ${CATCH2_INCLUDE_DIR}
            )
endif()

