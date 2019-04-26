#
# "make all" to build necessary executables.
#


LIBS=		`mysql_config --libs_r`
#-lrt

INC=		-I. `mysql_config --include`

#DEFS=		-DDEBUG

CFLAGS=		-w -O3 -g

TRANSACTIONS=	neword.o payment.o ordstat.o delivery.o slev.o
OBJS=		main.o spt_proc.o driver.o support.o sequence.o rthist.o sb_percentile.o $(TRANSACTIONS)

.SUFFIXES:
.SUFFIXES: .o .c

SAN=
#-g -fno-omit-frame-pointer -DSANITIZER -fsanitize=address -fsanitize-address-use-after-scope

.c.o:
	$(CC) $(SAN) $(CFLAGS) $(INC) $(DEFS) -c $*.c

all: ../tpcc_start ../tpcc_load

../tpcc_load : load.o support.o
	$(CC) $(SAN) load.o support.o $(LIBS) -o ../tpcc_load

../tpcc_start : $(OBJS)
	$(CC) $(SAN) $(OBJS) $(LIBS) -o ../tpcc_start

clean :
	rm -f *.o

#-g -fno-omit-frame-pointer -DSANITIZER -fsanitize=address -fsanitize-address-use-after-scope

#option (SANITIZE "Enable sanitizer: address, memory, thread, undefined" "")
#
#set (SAN_FLAGS "${SAN_FLAGS} -g -fno-omit-frame-pointer -DSANITIZER")
#
#if (SANITIZE)
#    if (SANITIZE STREQUAL "address")
#        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${SAN_FLAGS} -fsanitize=address -fsanitize-address-use-after-scope")
#        set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${SAN_FLAGS} -fsanitize=address -fsanitize-address-use-after-scope")
#        set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=address -fsanitize-address-use-after-scope")
#        if (MAKE_STATIC_LIBRARIES AND CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
#            set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libasan")
#        endif ()
#    elseif (SANITIZE STREQUAL "memory")
#        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${SAN_FLAGS} -fsanitize=memory")
#        set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${SAN_FLAGS} -fsanitize=memory")
#        set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=memory")
#        if (MAKE_STATIC_LIBRARIES AND CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
#            set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libmsan")
#        endif ()
#    elseif (SANITIZE STREQUAL "thread")
#        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${SAN_FLAGS} -fsanitize=thread")
#        set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${SAN_FLAGS} -fsanitize=thread")
#        set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=thread")
#        if (MAKE_STATIC_LIBRARIES AND CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
#            set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libtsan")
#        endif ()
#    elseif (SANITIZE STREQUAL "undefined")
#        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${SAN_FLAGS} -fsanitize=undefined -fno-sanitize-recover=all")
#        set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${SAN_FLAGS} -fsanitize=undefined -fno-sanitize-recover=all")
#        set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=undefined")
#        if (MAKE_STATIC_LIBRARIES AND CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
#            set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libubsan")
#        endif ()
#    else ()
#        message (FATAL_ERROR "Unknown sanitizer type: ${SANITIZE}")
#    endif ()
#endif()