cmake_minimum_required(VERSION 3.10)
project(tpcc_mysql C)

#set(CMAKE_C_STANDARD 11)

#set (MYSQL_INCLUDE_PATHS
#        "/usr/local/opt/mysql/include"
#        "/usr/mysql/include"
#        "/usr/local/include"
#        "/usr/include"
#        )
#        "/Users/andy/code/src/percona-server/include/"

find_path(MYSQL_INCLUDE_DIR NAMES mysql.h mariadb/mysql.h mysql.h.pp PATHS ${MYSQL_INCLUDE_PATHS} PATH_SUFFIXES mysql)

include_directories(src /usr/local/Cellar/mysql/5.7.22/include/mysql)
#/Users/andy/code/src/percona-server/include/ /Users/andy/code/src/percona-server/libbinlogevents/export/

set(MYSQL_INCLUDE_DIR ${MYSQL_INCLUDE_DIR} ${MYSQL_INCLUDE_DIR}/mysql)


#add_executable
#file(GLOB SOURCES
set(SOURCE_FILES
        src/delivery.c
        src/driver.c
        src/load.c
        src/main.c
        src/neword.c
        src/ordstat.c
        src/parse_port.h
        src/payment.c
        src/rthist.c
        src/rthist.h
        src/sb_percentile.c
        src/sb_percentile.h
        src/sequence.c
        src/sequence.h
        src/slev.c
        src/spt_proc.c
        src/spt_proc.h
        src/support.c
        src/tpc.h
        src/trans_if.h)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_executable(tpcc_mysql ${SOURCE_FILES})


#add_custom_target(tpcc_mysql COMMAND make -C ${tpcc_mysql_SOURCE_DIR}/src
#        CLION_EXE_DIR=${PROJECT_BINARY_DIR})
add_custom_target(tpcc_load COMMAND make -C ${tpcc_mysql_SOURCE_DIR}/src
        CLION_EXE_DIR=${PROJECT_BINARY_DIR})