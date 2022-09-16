project(tfs)

# *****************************************************************************
# Cmake Features
# *****************************************************************************
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Global gives error when building spdlog
# Avoid changes by cmake/make on the source tree
# https://gitlab.kitware.com/cmake/cmake/issues/18403
set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

# Make will print more details
set(CMAKE_VERBOSE_MAKEFILE OFF)

# Generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


# *****************************************************************************
# Options
# *****************************************************************************
option(OPTIONS_ENABLE_OPENMP "Enable Open Multi-Processing support." ON)
option(DEBUG_LOG "Enable Debug Log" OFF)


# *****************************************************************************
# Client
# *****************************************************************************
if (MSVC)
  add_executable(${PROJECT_NAME} "" ../cmake/otservbr-global.rc)
else()
  add_executable(${PROJECT_NAME} "")
endif()


# *****************************************************************************
# Options Code
# *****************************************************************************

# === OpenMP ===
if(OPTIONS_ENABLE_OPENMP)
  log_option_enabled("openmp")
  find_package(OpenMP)
  if(OpenMP_CXX_FOUND)
      target_link_libraries(${PROJECT_NAME} PUBLIC OpenMP::OpenMP_CXX)
  endif()
else()
  log_option_disabled("openmp")
endif()

# === IPO ===
check_ipo_supported(RESULT result OUTPUT output)
if(result)
  set_property(TARGET ${PROJECT_NAME} PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
else()
  message(WARNING "IPO is not supported: ${output}")
endif()

# cmake -DDEBUG_LOG=ON ..
if(CMAKE_BUILD_TYPE MATCHES Debug)
  target_compile_definitions(${PROJECT_NAME} PRIVATE -DDEBUG_LOG=ON )
  log_option_enabled("DEBUG LOG")
  else()
  log_option_disabled("DEBUG LOG")
endif(CMAKE_BUILD_TYPE MATCHES Debug)


# *****************************************************************************
# Packages / Libs
# *****************************************************************************
if (MSVC)
	find_package(Boost 1.53.0 COMPONENTS system filesystem iostreams date_time REQUIRED)
	find_package(cryptopp CONFIG REQUIRED)
	set(CRYPTOPP_LIBRARIES "cryptopp-static")
	find_package(CURL REQUIRED)
	find_package(jsoncpp REQUIRED)
	find_package(LuaJIT REQUIRED)
	find_package(MySQL REQUIRED)
	find_package(PugiXML REQUIRED)
	find_package(spdlog CONFIG REQUIRED)
	find_package(Threads REQUIRED)
else()
	find_package(Boost REQUIRED COMPONENTS system filesystem iostreams date_time)
	find_package(CryptoPP CONFIG REQUIRED)
	find_package(CURL CONFIG REQUIRED)
	find_package(jsoncpp CONFIG REQUIRED)
	find_package(LuaJIT REQUIRED)
	find_package(pugixml CONFIG REQUIRED)
	find_package(spdlog CONFIG REQUIRED)
	find_package(Threads REQUIRED)
	find_package(unofficial-libmariadb CONFIG REQUIRED)
endif (MSVC)

include(GNUInstallDirs)

if (NOT DEFINED DISABLE_STATS OR NOT DISABLE_STATS)
	ADD_DEFINITIONS(-DSTATS_ENABLED)
endif ()

# *****************************************************************************
# otserver configuration
# *****************************************************************************
target_sources(${PROJECT_NAME}
	PRIVATE
		configmanager.cpp
		mounts.cpp
		outfit.cpp
		combat.cpp
		condition.cpp
		spells.cpp
		creature.cpp
		chat.cpp
		monster.cpp
		monsters.cpp
		npc.cpp
		account.cpp
		familiars.cpp
		groups.cpp
		guild.cpp
		party.cpp
		imbuements.cpp
		ban.cpp
		waitlist.cpp
		player.cpp
		vocation.cpp
		spawn.cpp
		database.cpp
		databasemanager.cpp
		databasetasks.cpp
		game.cpp
		gamestore.cpp
		position.cpp
		teleport.cpp
		scheduler.cpp
		tasks.cpp
		fileloader.cpp
		iobestiary.cpp
		ioguild.cpp
		iologindata.cpp
		iomap.cpp
		iomapserialize.cpp
		iomarket.cpp
    ioprey.cpp
		bed.cpp
		container.cpp
		depotchest.cpp
		depotlocker.cpp
		inbox.cpp
		mailbox.cpp
		reward.cpp
		rewardchest.cpp
		cylinder.cpp
		decay.cpp
		item.cpp
		items.cpp
		thing.cpp
		tile.cpp
		trashholder.cpp
		weapons.cpp
		creaturecallback.cpp
		actions.cpp
		creatureevent.cpp
		events.cpp
		movement.cpp
		raids.cpp
		talkaction.cpp
		baseevents.cpp
		globalevent.cpp
		modules.cpp
		luascript.cpp
		scripts.cpp
		house.cpp
		housetile.cpp
		map.cpp
		otpch.cpp
		otserv.cpp
		rsa.cpp
		xtea.cpp
		connection.cpp
		networkmessage.cpp
		outputmessage.cpp
		protocol.cpp
		protocolgame.cpp
		protocollogin.cpp
		protocolstatus.cpp
		webhook.cpp
		server.cpp
		signals.cpp
		stats.cpp
		pathfinding.cpp
		tools.cpp
		wildcardtree.cpp
)

if (MSVC)

target_include_directories(${PROJECT_NAME}
	PRIVATE
		${CMAKE_SOURCE_DIR}/src
		${MYSQL_INCLUDE_DIR}
		${LUA_INCLUDE_DIR}
		${Boost_INCLUDE_DIRS}
		${PUGIXML_INCLUDE_DIR}
		${CRYPTOPP_INCLUDE_DIR}
		${CURL_INCLUDE_DIRS}
		$<TARGET_PROPERTY:jsoncpp_lib,INTERFACE_INCLUDE_DIRECTORIES>)

target_link_libraries(${PROJECT_NAME}
	PRIVATE
		${MYSQL_CLIENT_LIBS}
		${LUA_LIBRARIES}
		${Boost_LIBRARY_DIRS}
		${Boost_LIBRARIES}
		${PUGIXML_LIBRARIES}
		${CRYPTOPP_LIBRARIES}
		${CMAKE_THREAD_LIBS_INIT}
		${CURL_LIBRARIES}
		jsoncpp_lib
		spdlog::spdlog
)

else()

	target_include_directories(${PROJECT_NAME}
		PRIVATE
			${CMAKE_SOURCE_DIR}/src
			${LUA_INCLUDE_DIR}
	)

	target_link_libraries(${PROJECT_NAME}
		PRIVATE
			Boost::boost
			Boost::date_time
			Boost::filesystem
			Boost::iostreams
			Boost::system
			cryptopp-static
			CURL::libcurl
			jsoncpp_static
			unofficial::libmariadb 
			unofficial::mariadbclient		
			pugixml::pugixml
			spdlog::spdlog
			Threads::Threads
			${LUA_LIBRARIES}
	)

endif (MSVC)

# print all variables
# get_cmake_property(_variableNames VARIABLES)
# list (SORT _variableNames)
# foreach (_variableName ${_variableNames})
#     message(STATUS "${_variableName}=${${_variableName}}")
# endforeach()

set_target_properties(${PROJECT_NAME}
		PROPERTIES
			RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
