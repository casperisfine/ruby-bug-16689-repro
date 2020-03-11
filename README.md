```
$ ruby -v
ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin19]
$ ruby crash.rb 
2.7.0
start repro (should crash after 14 dots)
......../Users/byroot/.rubies/ruby-2.7.0/lib/ruby/2.7.0/json/common.rb:156: [BUG] try to mark T_NONE object
ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin19]

-- Crash Report log information --------------------------------------------
   See Crash Report log file under the one of following:                    
     * ~/Library/Logs/DiagnosticReports                                     
     * /Library/Logs/DiagnosticReports                                      
   for more details.                                                        
Don't forget to include the above Crash Report log file in bug reports.     

-- Control frame information -----------------------------------------------
c:0006 p:---- s:0026 e:000025 CFUNC  :parse
c:0005 p:0033 s:0022 e:000021 METHOD ~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/json/common.rb:156
c:0004 p:0042 s:0016 e:000013 BLOCK  crash.rb:30 [FINISH]
c:0003 p:---- s:0011 e:000010 CFUNC  :loop
c:0002 p:0041 s:0007 E:0008c8 EVAL   crash.rb:28 [FINISH]
c:0001 p:0000 s:0003 E:0014a0 (none) [FINISH]

-- Ruby level backtrace information ----------------------------------------
crash.rb:28:in `<main>'
crash.rb:28:in `loop'
crash.rb:30:in `block in <main>'
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/json/common.rb:156:in `parse'
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/json/common.rb:156:in `parse'

-- C level backtrace information -------------------------------------------
~/.rubies/ruby-2.7.0/bin/ruby(rb_vm_bugreport+0x96) [0x1057dd1f6]
~/.rubies/ruby-2.7.0/bin/ruby(rb_bug+0xcc) [0x1057e9b86]
~/.rubies/ruby-2.7.0/bin/ruby(gc_mark_ptr+0x17a) [0x10563b72a]
~/.rubies/ruby-2.7.0/bin/ruby(mark_keyvalue+0x49) [0x10563c4d9]
~/.rubies/ruby-2.7.0/bin/ruby(st_general_foreach+0xa9) [0x105747389]
~/.rubies/ruby-2.7.0/bin/ruby(rb_st_foreach+0x33) [0x105747a53]
~/.rubies/ruby-2.7.0/bin/ruby(gc_mark_children+0x8e8) [0x105631078]
~/.rubies/ruby-2.7.0/bin/ruby(gc_mark_stacked_objects_incremental+0x9e) [0x105639e0e]
~/.rubies/ruby-2.7.0/bin/ruby(newobj_slowpath+0x50f) [0x105636e9f]
~/.rubies/ruby-2.7.0/bin/ruby(newobj_slowpath_wb_protected+0x14) [0x105636964]
~/.rubies/ruby-2.7.0/bin/ruby(rb_str_buf_new+0x1e) [0x10575314e]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_string+0x35) [0x109082e35]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0x437) [0x109081487]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0xee7) [0x109081f37]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0xee7) [0x109081f37]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0xee7) [0x109081f37]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0xee7) [0x109081f37]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0xee7) [0x109081f37]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0xee7) [0x109081f37]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(JSON_parse_value+0xee7) [0x109081f37]
~/.rubies/ruby-2.7.0/lib/ruby/2.7.0/x86_64-darwin19/json/ext/parser.bundle(cParser_parse+0x142) [0x109080c62]
~/.rubies/ruby-2.7.0/bin/ruby(vm_call_cfunc+0x170) [0x1057ce220]
~/.rubies/ruby-2.7.0/bin/ruby(vm_exec_core+0x38df) [0x1057b40af]
~/.rubies/ruby-2.7.0/bin/ruby(rb_vm_exec+0xadc) [0x1057c903c]
~/.rubies/ruby-2.7.0/bin/ruby(loop_i+0x29) [0x1057d8f99]
~/.rubies/ruby-2.7.0/bin/ruby(rb_vrescue2+0x114) [0x10561b024]
~/.rubies/ruby-2.7.0/bin/ruby(rb_rescue2+0x7b) [0x10561aeeb]
~/.rubies/ruby-2.7.0/bin/ruby(vm_call_cfunc+0x170) [0x1057ce220]
~/.rubies/ruby-2.7.0/bin/ruby(vm_exec_core+0x3782) [0x1057b3f52]
~/.rubies/ruby-2.7.0/bin/ruby(rb_vm_exec+0xadc) [0x1057c903c]
~/.rubies/ruby-2.7.0/bin/ruby(rb_ec_exec_node+0xc6) [0x10561a5a6]
~/.rubies/ruby-2.7.0/bin/ruby(ruby_run_node+0x55) [0x10561a485]
~/.rubies/ruby-2.7.0/bin/ruby(main+0x5d) [0x105571c9d]
```