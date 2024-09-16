set(LUNA_SOURCE_FILES ${LUNA_SOURCE_FILES}
    ${CMAKE_CURRENT_SOURCE_DIR}/entity.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/font.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/game.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/hud.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/main.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/matrix.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/messages.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/osWrapper.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/pad.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/ped.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/physical.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/playerPed.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/quaternion.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/radar.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/rw.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/world.cc

    ${CMAKE_CURRENT_SOURCE_DIR}/task/task.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/task/taskComplexDie.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/task/taskManager.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/task/taskSimplePlayerOnFoot.cc

    PARENT_SCOPE
)
