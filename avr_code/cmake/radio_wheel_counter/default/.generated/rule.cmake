function(radio_wheel_counter_default_assemble_rule target)
    set(inputVar "${MP_CC};-c;${MP_EXTRA_AS_PRE};-mcpu=ATmega328PB;-x;assembler-with-cpp;-D__ATmega328PB__;-mdfp=/home/thebears/.mchp_packs/Microchip/ATmega_DFP/3.2.269/xc8;-Wl,--gc-sections;-O1;-ffunction-sections;-fdata-sections;-fshort-enums;-funsigned-char;-funsigned-bitfields;-Wall;-DXPRJ_default=default;-gdwarf-3;-mno-const-data-in-progmem;-Wa,--defsym=__MPLAB_BUILD=1;${INSTRUMENTED_TRACE_OPTIONS}")
    string(REGEX REPLACE "[,]+" "," noDoubleCommas "${inputVar}")
    string(REGEX REPLACE ",$" "" noDanglingCommas "${noDoubleCommas}")
    target_compile_options(${target} PRIVATE "${noDanglingCommas}")
endfunction()
function(radio_wheel_counter_default_assemblePreprocess_rule target)
    set(inputVar "-c;${MP_EXTRA_AS_PRE};-mcpu=ATmega328PB;-x;assembler-with-cpp;-D__ATmega328PB__;-mdfp=/home/thebears/.mchp_packs/Microchip/ATmega_DFP/3.2.269/xc8;-Wl,--gc-sections;-O1;-ffunction-sections;-fdata-sections;-fshort-enums;-funsigned-char;-funsigned-bitfields;-Wall;-DXPRJ_default=default;-gdwarf-3;-mno-const-data-in-progmem;-Wa,--defsym=__MPLAB_BUILD=1;${INSTRUMENTED_TRACE_OPTIONS}")
    string(REGEX REPLACE "[,]+" "," noDoubleCommas "${inputVar}")
    string(REGEX REPLACE ",$" "" noDanglingCommas "${noDoubleCommas}")
    target_compile_options(${target} PRIVATE "${noDanglingCommas}")
endfunction()
function(radio_wheel_counter_default_compile_rule target)
    set(inputVar "${MP_CC};${MP_EXTRA_CC_PRE};-mcpu=ATmega328PB;-c;-x;c;-D__ATmega328PB__;-mdfp=/home/thebears/.mchp_packs/Microchip/ATmega_DFP/3.2.269/xc8;-Wl,--gc-sections;-O1;-ffunction-sections;-fdata-sections;-fshort-enums;-funsigned-char;-funsigned-bitfields;-Wall;-DXPRJ_default=default;-gdwarf-3;-mno-const-data-in-progmem;${INSTRUMENTED_TRACE_OPTIONS};${FUNCTION_LEVEL_PROFILING_OPTIONS}")
    string(REGEX REPLACE "[,]+" "," noDoubleCommas "${inputVar}")
    string(REGEX REPLACE ",$" "" noDanglingCommas "${noDoubleCommas}")
    target_compile_options(${target} PRIVATE "${noDanglingCommas}")
endfunction()
function(radio_wheel_counter_default_link_rule target)
    set(inputVar "${MP_EXTRA_LD_PRE};-mcpu=ATmega328PB;-Wl,-Map=mem.map;-DXPRJ_default=default;-Wl,--defsym=__MPLAB_BUILD=1;-mdfp=/home/thebears/.mchp_packs/Microchip/ATmega_DFP/3.2.269/xc8;-Wl,--gc-sections;-O1;-ffunction-sections;-fdata-sections;-fshort-enums;-funsigned-char;-funsigned-bitfields;-Wall;-gdwarf-3;-mno-const-data-in-progmem;${INSTRUMENTED_TRACE_OPTIONS};${FUNCTION_LEVEL_PROFILING_OPTIONS};-Wl,--memorysummary,memoryfile.xml,;-Wl,--start-group;${LIBRARIES};-Wl,--end-group")
    string(REGEX REPLACE "[,]+" "," noDoubleCommas "${inputVar}")
    string(REGEX REPLACE ",$" "" noDanglingCommas "${noDoubleCommas}")
    target_link_options(${target} PRIVATE "${noDanglingCommas}")
endfunction()
