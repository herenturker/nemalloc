
libnemalloc.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	48 83 ec 08          	sub    rsp,0x8
    2004:	48 8b 05 c5 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fc5]        # 6fd0 <__gmon_start__@Base>
    200b:	48 85 c0             	test   rax,rax
    200e:	74 02                	je     2012 <_init+0x12>
    2010:	ff d0                	call   rax
    2012:	48 83 c4 08          	add    rsp,0x8
    2016:	c3                   	ret

Disassembly of section .plt:

0000000000002020 <_Z12save_q_tablePKc@plt-0x10>:
    2020:	ff 35 ca 4f 00 00    	push   QWORD PTR [rip+0x4fca]        # 6ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 cc 4f 00 00    	jmp    QWORD PTR [rip+0x4fcc]        # 6ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002030 <_Z12save_q_tablePKc@plt>:
    2030:	ff 25 ca 4f 00 00    	jmp    QWORD PTR [rip+0x4fca]        # 7000 <_Z12save_q_tablePKc@@Base+0x2d00>
    2036:	68 00 00 00 00       	push   0x0
    203b:	e9 e0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002040 <printf@plt>:
    2040:	ff 25 c2 4f 00 00    	jmp    QWORD PTR [rip+0x4fc2]        # 7008 <printf@GLIBC_2.2.5>
    2046:	68 01 00 00 00       	push   0x1
    204b:	e9 d0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002050 <_Z13train_q_tablev@plt>:
    2050:	ff 25 ba 4f 00 00    	jmp    QWORD PTR [rip+0x4fba]        # 7010 <_Z13train_q_tablev@@Base+0x2cd0>
    2056:	68 02 00 00 00       	push   0x2
    205b:	e9 c0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002060 <_Z16calculate_rewardffb@plt>:
    2060:	ff 25 b2 4f 00 00    	jmp    QWORD PTR [rip+0x4fb2]        # 7018 <_Z16calculate_rewardffb@@Base+0x3638>
    2066:	68 03 00 00 00       	push   0x3
    206b:	e9 b0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002070 <_Z12load_q_tablePKc@plt>:
    2070:	ff 25 aa 4f 00 00    	jmp    QWORD PTR [rip+0x4faa]        # 7020 <_Z12load_q_tablePKc@@Base+0x2af0>
    2076:	68 04 00 00 00       	push   0x4
    207b:	e9 a0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002080 <_Z16add_page_to_poolP21page_metadata_entry_t@plt>:
    2080:	ff 25 a2 4f 00 00    	jmp    QWORD PTR [rip+0x4fa2]        # 7028 <_Z16add_page_to_poolP21page_metadata_entry_t@@Base+0x49a8>
    2086:	68 05 00 00 00       	push   0x5
    208b:	e9 90 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002090 <rand@plt>:
    2090:	ff 25 9a 4f 00 00    	jmp    QWORD PTR [rip+0x4f9a]        # 7030 <rand@GLIBC_2.2.5>
    2096:	68 06 00 00 00       	push   0x6
    209b:	e9 80 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020a0 <_Z14mark_slot_freeP21page_metadata_entry_ti@plt>:
    20a0:	ff 25 92 4f 00 00    	jmp    QWORD PTR [rip+0x4f92]        # 7038 <_Z14mark_slot_freeP21page_metadata_entry_ti@@Base+0x4598>
    20a6:	68 07 00 00 00       	push   0x7
    20ab:	e9 70 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>:
    20b0:	ff 25 8a 4f 00 00    	jmp    QWORD PTR [rip+0x4f8a]        # 7040 <_Z11unlock_pageP21page_metadata_entry_t@@Base+0x4a00>
    20b6:	68 08 00 00 00       	push   0x8
    20bb:	e9 60 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020c0 <_Z16choose_page_sizem@plt>:
    20c0:	ff 25 82 4f 00 00    	jmp    QWORD PTR [rip+0x4f82]        # 7048 <_Z16choose_page_sizem@@Base+0x40f8>
    20c6:	68 09 00 00 00       	push   0x9
    20cb:	e9 50 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020d0 <_Z6nefree14handle_entry_t@plt>:
    20d0:	ff 25 7a 4f 00 00    	jmp    QWORD PTR [rip+0x4f7a]        # 7050 <_Z6nefree14handle_entry_t@@Base+0x3f60>
    20d6:	68 0a 00 00 00       	push   0xa
    20db:	e9 40 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020e0 <__cxa_begin_catch@plt>:
    20e0:	ff 25 72 4f 00 00    	jmp    QWORD PTR [rip+0x4f72]        # 7058 <__cxa_begin_catch@CXXABI_1.3>
    20e6:	68 0b 00 00 00       	push   0xb
    20eb:	e9 30 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020f0 <_Z15simulate_actioniPfPim@plt>:
    20f0:	ff 25 6a 4f 00 00    	jmp    QWORD PTR [rip+0x4f6a]        # 7060 <_Z15simulate_actioniPfPim@@Base+0x3450>
    20f6:	68 0c 00 00 00       	push   0xc
    20fb:	e9 20 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002100 <memset@plt>:
    2100:	ff 25 62 4f 00 00    	jmp    QWORD PTR [rip+0x4f62]        # 7068 <memset@GLIBC_2.2.5>
    2106:	68 0d 00 00 00       	push   0xd
    210b:	e9 10 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002110 <_Z11create_pagem@plt>:
    2110:	ff 25 5a 4f 00 00    	jmp    QWORD PTR [rip+0x4f5a]        # 7070 <_Z11create_pagem@@Base+0x49a0>
    2116:	68 0e 00 00 00       	push   0xe
    211b:	e9 00 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002120 <_ZSt20__throw_system_errori@plt>:
    2120:	ff 25 52 4f 00 00    	jmp    QWORD PTR [rip+0x4f52]        # 7078 <_ZSt20__throw_system_errori@GLIBCXX_3.4.11>
    2126:	68 0f 00 00 00       	push   0xf
    212b:	e9 f0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002130 <pthread_join@plt>:
    2130:	ff 25 4a 4f 00 00    	jmp    QWORD PTR [rip+0x4f4a]        # 7080 <pthread_join@GLIBC_2.34>
    2136:	68 10 00 00 00       	push   0x10
    213b:	e9 e0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002140 <time@plt>:
    2140:	ff 25 42 4f 00 00    	jmp    QWORD PTR [rip+0x4f42]        # 7088 <time@GLIBC_2.2.5>
    2146:	68 11 00 00 00       	push   0x11
    214b:	e9 d0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002150 <pthread_once@plt>:
    2150:	ff 25 3a 4f 00 00    	jmp    QWORD PTR [rip+0x4f3a]        # 7090 <pthread_once@GLIBC_2.34>
    2156:	68 12 00 00 00       	push   0x12
    215b:	e9 c0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002160 <srand@plt>:
    2160:	ff 25 32 4f 00 00    	jmp    QWORD PTR [rip+0x4f32]        # 7098 <srand@GLIBC_2.2.5>
    2166:	68 13 00 00 00       	push   0x13
    216b:	e9 b0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002170 <fclose@plt>:
    2170:	ff 25 2a 4f 00 00    	jmp    QWORD PTR [rip+0x4f2a]        # 70a0 <fclose@GLIBC_2.2.5>
    2176:	68 14 00 00 00       	push   0x14
    217b:	e9 a0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002180 <_Z16get_random_statev@plt>:
    2180:	ff 25 22 4f 00 00    	jmp    QWORD PTR [rip+0x4f22]        # 70a8 <_Z16get_random_statev@@Base+0x37e8>
    2186:	68 15 00 00 00       	push   0x15
    218b:	e9 90 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002190 <_Z18allocate_from_poolm@plt>:
    2190:	ff 25 1a 4f 00 00    	jmp    QWORD PTR [rip+0x4f1a]        # 70b0 <_Z18allocate_from_poolm@@Base+0x4ad0>
    2196:	68 16 00 00 00       	push   0x16
    219b:	e9 80 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021a0 <fopen@plt>:
    21a0:	ff 25 12 4f 00 00    	jmp    QWORD PTR [rip+0x4f12]        # 70b8 <fopen@GLIBC_2.2.5>
    21a6:	68 17 00 00 00       	push   0x17
    21ab:	e9 70 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021b0 <_Z23start_compaction_threadv@plt>:
    21b0:	ff 25 0a 4f 00 00    	jmp    QWORD PTR [rip+0x4f0a]        # 70c0 <_Z23start_compaction_threadv@@Base+0x2990>
    21b6:	68 18 00 00 00       	push   0x18
    21bb:	e9 60 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021c0 <_Z7get_ptr14handle_entry_t@plt>:
    21c0:	ff 25 02 4f 00 00    	jmp    QWORD PTR [rip+0x4f02]        # 70c8 <_Z7get_ptr14handle_entry_t@@Base+0x3f58>
    21c6:	68 19 00 00 00       	push   0x19
    21cb:	e9 50 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021d0 <_Z14mark_slot_usedP21page_metadata_entry_ti@plt>:
    21d0:	ff 25 fa 4e 00 00    	jmp    QWORD PTR [rip+0x4efa]        # 70d0 <_Z14mark_slot_usedP21page_metadata_entry_ti@@Base+0x4670>
    21d6:	68 1a 00 00 00       	push   0x1a
    21db:	e9 40 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021e0 <usleep@plt>:
    21e0:	ff 25 f2 4e 00 00    	jmp    QWORD PTR [rip+0x4ef2]        # 70d8 <usleep@GLIBC_2.2.5>
    21e6:	68 1b 00 00 00       	push   0x1b
    21eb:	e9 30 fe ff ff       	jmp    2020 <_init+0x20>

00000000000021f0 <_Z22add_page_to_size_classP21page_metadata_entry_t@plt>:
    21f0:	ff 25 ea 4e 00 00    	jmp    QWORD PTR [rip+0x4eea]        # 70e0 <_Z22add_page_to_size_classP21page_metadata_entry_t@@Base+0x4a90>
    21f6:	68 1c 00 00 00       	push   0x1c
    21fb:	e9 20 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002200 <fread@plt>:
    2200:	ff 25 e2 4e 00 00    	jmp    QWORD PTR [rip+0x4ee2]        # 70e8 <fread@GLIBC_2.2.5>
    2206:	68 1d 00 00 00       	push   0x1d
    220b:	e9 10 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002210 <_Z12compact_pageP21page_metadata_entry_t@plt>:
    2210:	ff 25 da 4e 00 00    	jmp    QWORD PTR [rip+0x4eda]        # 70f0 <_Z12compact_pageP21page_metadata_entry_t@@Base+0x4600>
    2216:	68 1e 00 00 00       	push   0x1e
    221b:	e9 00 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002220 <_Z14update_q_tableiififf@plt>:
    2220:	ff 25 d2 4e 00 00    	jmp    QWORD PTR [rip+0x4ed2]        # 70f8 <_Z14update_q_tableiififf@@Base+0x3038>
    2226:	68 1f 00 00 00       	push   0x1f
    222b:	e9 f0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002230 <puts@plt>:
    2230:	ff 25 ca 4e 00 00    	jmp    QWORD PTR [rip+0x4eca]        # 7100 <puts@GLIBC_2.2.5>
    2236:	68 20 00 00 00       	push   0x20
    223b:	e9 e0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002240 <_Z14find_free_slotP21page_metadata_entry_t@plt>:
    2240:	ff 25 c2 4e 00 00    	jmp    QWORD PTR [rip+0x4ec2]        # 7108 <_Z14find_free_slotP21page_metadata_entry_t@@Base+0x48d8>
    2246:	68 21 00 00 00       	push   0x21
    224b:	e9 d0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002250 <compute_max_free_run@plt>:
    2250:	ff 25 ba 4e 00 00    	jmp    QWORD PTR [rip+0x4eba]        # 7110 <compute_max_free_run@@Base+0x4180>
    2256:	68 22 00 00 00       	push   0x22
    225b:	e9 c0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002260 <_Z22stop_compaction_threadv@plt>:
    2260:	ff 25 b2 4e 00 00    	jmp    QWORD PTR [rip+0x4eb2]        # 7118 <_Z22stop_compaction_threadv@@Base+0x2978>
    2266:	68 23 00 00 00       	push   0x23
    226b:	e9 b0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002270 <_Z17get_current_statem@plt>:
    2270:	ff 25 aa 4e 00 00    	jmp    QWORD PTR [rip+0x4eaa]        # 7120 <_Z17get_current_statem@@Base+0x2ff0>
    2276:	68 24 00 00 00       	push   0x24
    227b:	e9 a0 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002280 <_Z9lock_pageP21page_metadata_entry_t@plt>:
    2280:	ff 25 a2 4e 00 00    	jmp    QWORD PTR [rip+0x4ea2]        # 7128 <_Z9lock_pageP21page_metadata_entry_t@@Base+0x4b18>
    2286:	68 25 00 00 00       	push   0x25
    228b:	e9 90 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002290 <_Z14init_heap_poolm@plt>:
    2290:	ff 25 9a 4e 00 00    	jmp    QWORD PTR [rip+0x4e9a]        # 7130 <_Z14init_heap_poolm@@Base+0x4bd0>
    2296:	68 26 00 00 00       	push   0x26
    229b:	e9 80 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022a0 <_Z13select_actionif@plt>:
    22a0:	ff 25 92 4e 00 00    	jmp    QWORD PTR [rip+0x4e92]        # 7138 <_Z13select_actionif@@Base+0x3158>
    22a6:	68 27 00 00 00       	push   0x27
    22ab:	e9 70 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022b0 <__cxa_end_catch@plt>:
    22b0:	ff 25 8a 4e 00 00    	jmp    QWORD PTR [rip+0x4e8a]        # 7140 <__cxa_end_catch@CXXABI_1.3>
    22b6:	68 28 00 00 00       	push   0x28
    22bb:	e9 60 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022c0 <access@plt>:
    22c0:	ff 25 82 4e 00 00    	jmp    QWORD PTR [rip+0x4e82]        # 7148 <access@GLIBC_2.2.5>
    22c6:	68 29 00 00 00       	push   0x29
    22cb:	e9 50 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022d0 <__tls_get_addr@plt>:
    22d0:	ff 25 7a 4e 00 00    	jmp    QWORD PTR [rip+0x4e7a]        # 7150 <__tls_get_addr@GLIBC_2.3>
    22d6:	68 2a 00 00 00       	push   0x2a
    22db:	e9 40 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022e0 <__cxa_thread_atexit@plt>:
    22e0:	ff 25 72 4e 00 00    	jmp    QWORD PTR [rip+0x4e72]        # 7158 <__cxa_thread_atexit@CXXABI_1.3.7>
    22e6:	68 2b 00 00 00       	push   0x2b
    22eb:	e9 30 fd ff ff       	jmp    2020 <_init+0x20>

00000000000022f0 <_Z15init_simulationv@plt>:
    22f0:	ff 25 6a 4e 00 00    	jmp    QWORD PTR [rip+0x4e6a]        # 7160 <_Z15init_simulationv@@Base+0x3690>
    22f6:	68 2c 00 00 00       	push   0x2c
    22fb:	e9 20 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002300 <_Unwind_Resume@plt>:
    2300:	ff 25 62 4e 00 00    	jmp    QWORD PTR [rip+0x4e62]        # 7168 <_Unwind_Resume@GCC_3.0>
    2306:	68 2d 00 00 00       	push   0x2d
    230b:	e9 10 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002310 <mmap@plt>:
    2310:	ff 25 5a 4e 00 00    	jmp    QWORD PTR [rip+0x4e5a]        # 7170 <mmap@GLIBC_2.2.5>
    2316:	68 2e 00 00 00       	push   0x2e
    231b:	e9 00 fd ff ff       	jmp    2020 <_init+0x20>

0000000000002320 <_Z17init_thread_cachev@plt>:
    2320:	ff 25 52 4e 00 00    	jmp    QWORD PTR [rip+0x4e52]        # 7178 <_Z17init_thread_cachev@@Base+0x4138>
    2326:	68 2f 00 00 00       	push   0x2f
    232b:	e9 f0 fc ff ff       	jmp    2020 <_init+0x20>

0000000000002330 <_Z9move_slotjPv@plt>:
    2330:	ff 25 4a 4e 00 00    	jmp    QWORD PTR [rip+0x4e4a]        # 7180 <_Z9move_slotjPv@@Base+0x46a0>
    2336:	68 30 00 00 00       	push   0x30
    233b:	e9 e0 fc ff ff       	jmp    2020 <_init+0x20>

0000000000002340 <_Z22join_compaction_threadv@plt>:
    2340:	ff 25 42 4e 00 00    	jmp    QWORD PTR [rip+0x4e42]        # 7188 <_Z22join_compaction_threadv@@Base+0x29d8>
    2346:	68 31 00 00 00       	push   0x31
    234b:	e9 d0 fc ff ff       	jmp    2020 <_init+0x20>

0000000000002350 <pthread_create@plt>:
    2350:	ff 25 3a 4e 00 00    	jmp    QWORD PTR [rip+0x4e3a]        # 7190 <pthread_create@GLIBC_2.34>
    2356:	68 32 00 00 00       	push   0x32
    235b:	e9 c0 fc ff ff       	jmp    2020 <_init+0x20>

0000000000002360 <_Z32ensure_compaction_thread_startedv@plt>:
    2360:	ff 25 32 4e 00 00    	jmp    QWORD PTR [rip+0x4e32]        # 7198 <_Z32ensure_compaction_thread_startedv@@Base+0x29a8>
    2366:	68 33 00 00 00       	push   0x33
    236b:	e9 b0 fc ff ff       	jmp    2020 <_init+0x20>

0000000000002370 <fwrite@plt>:
    2370:	ff 25 2a 4e 00 00    	jmp    QWORD PTR [rip+0x4e2a]        # 71a0 <fwrite@GLIBC_2.2.5>
    2376:	68 34 00 00 00       	push   0x34
    237b:	e9 a0 fc ff ff       	jmp    2020 <_init+0x20>

Disassembly of section .plt.got:

0000000000002380 <__cxa_finalize@plt>:
    2380:	ff 25 8a 4b 00 00    	jmp    QWORD PTR [rip+0x4b8a]        # 6f10 <__cxa_finalize@GLIBC_2.2.5>
    2386:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000023a0 <_Z22compaction_thread_funcPv.cold>:
    23a0:	c5 f8 77             	vzeroupper
    23a3:	e8 38 fd ff ff       	call   20e0 <__cxa_begin_catch@plt>
    23a8:	e8 03 ff ff ff       	call   22b0 <__cxa_end_catch@plt>
    23ad:	e9 3b 23 00 00       	jmp    46ed <_Z22compaction_thread_funcPv+0x16d>

00000000000023b2 <_Z32ensure_compaction_thread_startedv.cold>:
    23b2:	89 c7                	mov    edi,eax
    23b4:	e8 67 fd ff ff       	call   2120 <_ZSt20__throw_system_errori@plt>
    23b9:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    23be:	c5 f8 77             	vzeroupper
    23c1:	66 48 8d 3d 5f 4b 00 	data16 lea rdi,[rip+0x4b5f]        # 6f28 <_ZSt15__once_callable@GLIBCXX_3.4.11>
    23c8:	00 
    23c9:	66 66 48 e8 ff fe ff 	data16 data16 rex.W call 22d0 <__tls_get_addr@plt>
    23d0:	ff 
    23d1:	31 d2                	xor    edx,edx
    23d3:	48 89 10             	mov    QWORD PTR [rax],rdx
    23d6:	66 48 8d 3d 9a 4b 00 	data16 lea rdi,[rip+0x4b9a]        # 6f78 <_ZSt11__once_call@GLIBCXX_3.4.11>
    23dd:	00 
    23de:	66 66 48 e8 ea fe ff 	data16 data16 rex.W call 22d0 <__tls_get_addr@plt>
    23e5:	ff 
    23e6:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    23eb:	31 c9                	xor    ecx,ecx
    23ed:	48 89 08             	mov    QWORD PTR [rax],rcx
    23f0:	e8 0b ff ff ff       	call   2300 <_Unwind_Resume@plt>
    23f5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    23fc:	00 00 00 
    23ff:	90                   	nop

0000000000002400 <_ZL16nemalloc_cleanupv>:
    2400:	48 83 ec 08          	sub    rsp,0x8
    2404:	e8 57 fe ff ff       	call   2260 <_Z22stop_compaction_threadv@plt>
    2409:	48 83 c4 08          	add    rsp,0x8
    240d:	e9 2e ff ff ff       	jmp    2340 <_Z22join_compaction_threadv@plt>
    2412:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2419:	00 00 00 
    241c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002420 <_ZL13nemalloc_initv>:
    2420:	53                   	push   rbx
    2421:	48 8d 1d d8 2b 00 00 	lea    rbx,[rip+0x2bd8]        # 5000 <_fini+0x76c>
    2428:	31 f6                	xor    esi,esi
    242a:	48 89 df             	mov    rdi,rbx
    242d:	e8 8e fe ff ff       	call   22c0 <access@plt>
    2432:	48 89 df             	mov    rdi,rbx
    2435:	e8 36 fc ff ff       	call   2070 <_Z12load_q_tablePKc@plt>
    243a:	bf 00 00 00 20       	mov    edi,0x20000000
    243f:	e8 4c fe ff ff       	call   2290 <_Z14init_heap_poolm@plt>
    2444:	48 8b 05 3d 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b3d]        # 6f88 <g_heap_pool@@Base-0x80b7fd8>
    244b:	48 83 78 08 00       	cmp    QWORD PTR [rax+0x8],0x0
    2450:	75 02                	jne    2454 <_ZL13nemalloc_initv+0x34>
    2452:	5b                   	pop    rbx
    2453:	c3                   	ret
    2454:	e8 c7 fe ff ff       	call   2320 <_Z17init_thread_cachev@plt>
    2459:	5b                   	pop    rbx
    245a:	e9 51 fd ff ff       	jmp    21b0 <_Z23start_compaction_threadv@plt>
    245f:	90                   	nop

0000000000002460 <main>:
    2460:	48 83 ec 08          	sub    rsp,0x8
    2464:	31 f6                	xor    esi,esi
    2466:	48 8d 3d 93 2b 00 00 	lea    rdi,[rip+0x2b93]        # 5000 <_fini+0x76c>
    246d:	e8 4e fe ff ff       	call   22c0 <access@plt>
    2472:	85 c0                	test   eax,eax
    2474:	75 07                	jne    247d <main+0x1d>
    2476:	31 c0                	xor    eax,eax
    2478:	48 83 c4 08          	add    rsp,0x8
    247c:	c3                   	ret
    247d:	e8 ce fb ff ff       	call   2050 <_Z13train_q_tablev@plt>
    2482:	eb f2                	jmp    2476 <main+0x16>
    2484:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    248b:	00 00 00 
    248e:	66 90                	xchg   ax,ax

0000000000002490 <deregister_tm_clones>:
    2490:	48 8d 3d 49 4d 00 00 	lea    rdi,[rip+0x4d49]        # 71e0 <completed.0>
    2497:	48 8d 05 42 4d 00 00 	lea    rax,[rip+0x4d42]        # 71e0 <completed.0>
    249e:	48 39 f8             	cmp    rax,rdi
    24a1:	74 15                	je     24b8 <deregister_tm_clones+0x28>
    24a3:	48 8b 05 16 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b16]        # 6fc0 <_ITM_deregisterTMCloneTable@Base>
    24aa:	48 85 c0             	test   rax,rax
    24ad:	74 09                	je     24b8 <deregister_tm_clones+0x28>
    24af:	ff e0                	jmp    rax
    24b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    24b8:	c3                   	ret
    24b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000024c0 <register_tm_clones>:
    24c0:	48 8d 3d 19 4d 00 00 	lea    rdi,[rip+0x4d19]        # 71e0 <completed.0>
    24c7:	48 8d 35 12 4d 00 00 	lea    rsi,[rip+0x4d12]        # 71e0 <completed.0>
    24ce:	48 29 fe             	sub    rsi,rdi
    24d1:	48 89 f0             	mov    rax,rsi
    24d4:	48 c1 ee 3f          	shr    rsi,0x3f
    24d8:	48 c1 f8 03          	sar    rax,0x3
    24dc:	48 01 c6             	add    rsi,rax
    24df:	48 d1 fe             	sar    rsi,1
    24e2:	74 14                	je     24f8 <register_tm_clones+0x38>
    24e4:	48 8b 05 ed 4a 00 00 	mov    rax,QWORD PTR [rip+0x4aed]        # 6fd8 <_ITM_registerTMCloneTable@Base>
    24eb:	48 85 c0             	test   rax,rax
    24ee:	74 08                	je     24f8 <register_tm_clones+0x38>
    24f0:	ff e0                	jmp    rax
    24f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    24f8:	c3                   	ret
    24f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000002500 <__do_global_dtors_aux>:
    2500:	f3 0f 1e fa          	endbr64
    2504:	80 3d d5 4c 00 00 00 	cmp    BYTE PTR [rip+0x4cd5],0x0        # 71e0 <completed.0>
    250b:	75 2b                	jne    2538 <__do_global_dtors_aux+0x38>
    250d:	55                   	push   rbp
    250e:	48 83 3d fa 49 00 00 	cmp    QWORD PTR [rip+0x49fa],0x0        # 6f10 <__cxa_finalize@GLIBC_2.2.5>
    2515:	00 
    2516:	48 89 e5             	mov    rbp,rsp
    2519:	74 0c                	je     2527 <__do_global_dtors_aux+0x27>
    251b:	48 8b 3d 86 4c 00 00 	mov    rdi,QWORD PTR [rip+0x4c86]        # 71a8 <__dso_handle>
    2522:	e8 59 fe ff ff       	call   2380 <__cxa_finalize@plt>
    2527:	e8 64 ff ff ff       	call   2490 <deregister_tm_clones>
    252c:	c6 05 ad 4c 00 00 01 	mov    BYTE PTR [rip+0x4cad],0x1        # 71e0 <completed.0>
    2533:	5d                   	pop    rbp
    2534:	c3                   	ret
    2535:	0f 1f 00             	nop    DWORD PTR [rax]
    2538:	c3                   	ret
    2539:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000002540 <frame_dummy>:
    2540:	f3 0f 1e fa          	endbr64
    2544:	e9 77 ff ff ff       	jmp    24c0 <register_tm_clones>
    2549:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2550:	00 00 00 
    2553:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    255a:	00 00 00 
    255d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000002560 <_Z14init_heap_poolm>:
    2560:	53                   	push   rbx
    2561:	45 31 c9             	xor    r9d,r9d
    2564:	48 89 fe             	mov    rsi,rdi
    2567:	48 89 fb             	mov    rbx,rdi
    256a:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
    2570:	31 ff                	xor    edi,edi
    2572:	b9 22 00 00 00       	mov    ecx,0x22
    2577:	ba 03 00 00 00       	mov    edx,0x3
    257c:	e8 8f fd ff ff       	call   2310 <mmap@plt>
    2581:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
    2585:	74 41                	je     25c8 <_Z14init_heap_poolm+0x68>
    2587:	48 8b 15 fa 49 00 00 	mov    rdx,QWORD PTR [rip+0x49fa]        # 6f88 <g_heap_pool@@Base-0x80b7fd8>
    258e:	48 89 02             	mov    QWORD PTR [rdx],rax
    2591:	48 8b 05 00 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a00]        # 6f98 <g_size_class_stats@@Base-0xaff48>
    2598:	48 89 5a 08          	mov    QWORD PTR [rdx+0x8],rbx
    259c:	48 c7 42 10 00 00 00 	mov    QWORD PTR [rdx+0x10],0x0
    25a3:	00 
    25a4:	48 8d 48 40          	lea    rcx,[rax+0x40]
    25a8:	31 d2                	xor    edx,edx
    25aa:	89 d6                	mov    esi,edx
    25ac:	87 30                	xchg   DWORD PTR [rax],esi
    25ae:	48 83 c0 10          	add    rax,0x10
    25b2:	48 c7 40 f8 00 00 00 	mov    QWORD PTR [rax-0x8],0x0
    25b9:	00 
    25ba:	48 39 c8             	cmp    rax,rcx
    25bd:	75 eb                	jne    25aa <_Z14init_heap_poolm+0x4a>
    25bf:	5b                   	pop    rbx
    25c0:	c3                   	ret
    25c1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    25c8:	48 8b 05 b9 49 00 00 	mov    rax,QWORD PTR [rip+0x49b9]        # 6f88 <g_heap_pool@@Base-0x80b7fd8>
    25cf:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
    25d6:	00 
    25d7:	5b                   	pop    rbx
    25d8:	c3                   	ret
    25d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000025e0 <_Z18allocate_from_poolm>:
    25e0:	48 8b 15 a1 49 00 00 	mov    rdx,QWORD PTR [rip+0x49a1]        # 6f88 <g_heap_pool@@Base-0x80b7fd8>
    25e7:	48 89 f8             	mov    rax,rdi
    25ea:	f0 48 0f c1 42 10    	lock xadd QWORD PTR [rdx+0x10],rax
    25f0:	48 8d 0c 07          	lea    rcx,[rdi+rax*1]
    25f4:	48 39 4a 08          	cmp    QWORD PTR [rdx+0x8],rcx
    25f8:	72 06                	jb     2600 <_Z18allocate_from_poolm+0x20>
    25fa:	48 03 02             	add    rax,QWORD PTR [rdx]
    25fd:	c3                   	ret
    25fe:	66 90                	xchg   ax,ax
    2600:	f0 48 29 7a 10       	lock sub QWORD PTR [rdx+0x10],rdi
    2605:	31 c0                	xor    eax,eax
    2607:	c3                   	ret
    2608:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    260f:	00 

0000000000002610 <_Z9lock_pageP21page_metadata_entry_t>:
    2610:	48 83 c7 0c          	add    rdi,0xc
    2614:	b8 01 00 00 00       	mov    eax,0x1
    2619:	86 07                	xchg   BYTE PTR [rdi],al
    261b:	ba 01 00 00 00       	mov    edx,0x1
    2620:	84 c0                	test   al,al
    2622:	75 0e                	jne    2632 <_Z9lock_pageP21page_metadata_entry_t+0x22>
    2624:	c3                   	ret
    2625:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    262c:	00 00 00 00 
    2630:	f3 90                	pause
    2632:	89 d0                	mov    eax,edx
    2634:	86 07                	xchg   BYTE PTR [rdi],al
    2636:	84 c0                	test   al,al
    2638:	75 f6                	jne    2630 <_Z9lock_pageP21page_metadata_entry_t+0x20>
    263a:	c3                   	ret
    263b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000002640 <_Z11unlock_pageP21page_metadata_entry_t>:
    2640:	c6 47 0c 00          	mov    BYTE PTR [rdi+0xc],0x0
    2644:	c3                   	ret
    2645:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    264c:	00 00 00 00 

0000000000002650 <_Z22add_page_to_size_classP21page_metadata_entry_t>:
    2650:	0f b6 4f 0e          	movzx  ecx,BYTE PTR [rdi+0xe]
    2654:	48 8b 35 3d 49 00 00 	mov    rsi,QWORD PTR [rip+0x493d]        # 6f98 <g_size_class_stats@@Base-0xaff48>
    265b:	48 c1 e1 04          	shl    rcx,0x4
    265f:	4c 8d 44 0e 08       	lea    r8,[rsi+rcx*1+0x8]
    2664:	48 8d 14 0e          	lea    rdx,[rsi+rcx*1]
    2668:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
    266c:	48 89 47 30          	mov    QWORD PTR [rdi+0x30],rax
    2670:	f0 49 0f b1 38       	lock cmpxchg QWORD PTR [r8],rdi
    2675:	75 f1                	jne    2668 <_Z22add_page_to_size_classP21page_metadata_entry_t+0x18>
    2677:	f0 83 04 0e 01       	lock add DWORD PTR [rsi+rcx*1],0x1
    267c:	c3                   	ret
    267d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000002680 <_Z16add_page_to_poolP21page_metadata_entry_t>:
    2680:	48 8b 05 d1 48 00 00 	mov    rax,QWORD PTR [rip+0x48d1]        # 6f58 <g_page_count@@Base-0xaffc8>
    2687:	ba 01 00 00 00       	mov    edx,0x1
    268c:	f0 0f c1 10          	lock xadd DWORD PTR [rax],edx
    2690:	81 fa ff 0f 00 00    	cmp    edx,0xfff
    2696:	7f 28                	jg     26c0 <_Z16add_page_to_poolP21page_metadata_entry_t+0x40>
    2698:	48 8b 05 d1 48 00 00 	mov    rax,QWORD PTR [rip+0x48d1]        # 6f70 <g_next_page_id@@Base-0xb7fd0>
    269f:	b9 01 00 00 00       	mov    ecx,0x1
    26a4:	f0 48 0f c1 08       	lock xadd QWORD PTR [rax],rcx
    26a9:	48 8b 05 30 49 00 00 	mov    rax,QWORD PTR [rip+0x4930]        # 6fe0 <g_page_pool@@Base-0xaff60>
    26b0:	48 63 d2             	movsxd rdx,edx
    26b3:	48 89 4f 18          	mov    QWORD PTR [rdi+0x18],rcx
    26b7:	48 89 3c d0          	mov    QWORD PTR [rax+rdx*8],rdi
    26bb:	c3                   	ret
    26bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    26c0:	f0 83 28 01          	lock sub DWORD PTR [rax],0x1
    26c4:	c3                   	ret
    26c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    26cc:	00 00 00 00 

00000000000026d0 <_Z11create_pagem>:
    26d0:	41 55                	push   r13
    26d2:	41 54                	push   r12
    26d4:	49 89 fc             	mov    r12,rdi
    26d7:	bf 40 00 00 00       	mov    edi,0x40
    26dc:	55                   	push   rbp
    26dd:	53                   	push   rbx
    26de:	48 83 ec 08          	sub    rsp,0x8
    26e2:	e8 a9 fa ff ff       	call   2190 <_Z18allocate_from_poolm@plt>
    26e7:	48 85 c0             	test   rax,rax
    26ea:	0f 84 1f 01 00 00    	je     280f <_Z11create_pagem+0x13f>
    26f0:	4c 89 e7             	mov    rdi,r12
    26f3:	48 89 c3             	mov    rbx,rax
    26f6:	e8 95 fa ff ff       	call   2190 <_Z18allocate_from_poolm@plt>
    26fb:	48 85 c0             	test   rax,rax
    26fe:	0f 84 e4 00 00 00    	je     27e8 <_Z11create_pagem+0x118>
    2704:	4c 89 e2             	mov    rdx,r12
    2707:	48 8d 78 08          	lea    rdi,[rax+0x8]
    270b:	c4 e1 f9 6e d0       	vmovq  xmm2,rax
    2710:	48 c1 ea 05          	shr    rdx,0x5
    2714:	8d 6a 07             	lea    ebp,[rdx+0x7]
    2717:	c5 f9 6e ca          	vmovd  xmm1,edx
    271b:	c1 ed 03             	shr    ebp,0x3
    271e:	c4 e3 71 22 c5 01    	vpinsrd xmm0,xmm1,ebp,0x1
    2724:	83 fd 1f             	cmp    ebp,0x1f
    2727:	c5 f9 d6 43 10       	vmovq  QWORD PTR [rbx+0x10],xmm0
    272c:	c4 e3 e9 22 c7 01    	vpinsrq xmm0,xmm2,rdi,0x1
    2732:	c5 f9 7f 43 20       	vmovdqa XMMWORD PTR [rbx+0x20],xmm0
    2737:	0f 86 e3 00 00 00    	jbe    2820 <_Z11create_pagem+0x150>
    273d:	44 8d 6d e0          	lea    r13d,[rbp-0x20]
    2741:	31 f6                	xor    esi,esi
    2743:	44 89 ea             	mov    edx,r13d
    2746:	41 83 e5 e0          	and    r13d,0xffffffe0
    274a:	c1 ea 05             	shr    edx,0x5
    274d:	83 c2 01             	add    edx,0x1
    2750:	48 c1 e2 05          	shl    rdx,0x5
    2754:	e8 a7 f9 ff ff       	call   2100 <memset@plt>
    2759:	48 89 c7             	mov    rdi,rax
    275c:	41 8d 45 20          	lea    eax,[r13+0x20]
    2760:	39 e8                	cmp    eax,ebp
    2762:	73 15                	jae    2779 <_Z11create_pagem+0xa9>
    2764:	8d 55 ff             	lea    edx,[rbp-0x1]
    2767:	48 01 c7             	add    rdi,rax
    276a:	31 f6                	xor    esi,esi
    276c:	89 d5                	mov    ebp,edx
    276e:	29 c5                	sub    ebp,eax
    2770:	48 8d 55 01          	lea    rdx,[rbp+0x1]
    2774:	e8 87 f9 ff ff       	call   2100 <memset@plt>
    2779:	0f b7 43 10          	movzx  eax,WORD PTR [rbx+0x10]
    277d:	66 87 03             	xchg   WORD PTR [rbx],ax
    2780:	31 c0                	xor    eax,eax
    2782:	49 81 fc 00 10 00 00 	cmp    r12,0x1000
    2789:	c7 43 08 00 00 00 00 	mov    DWORD PTR [rbx+0x8],0x0
    2790:	c6 43 0d 00          	mov    BYTE PTR [rbx+0xd],0x0
    2794:	76 1b                	jbe    27b1 <_Z11create_pagem+0xe1>
    2796:	49 81 fc 00 00 02 00 	cmp    r12,0x20000
    279d:	b8 01 00 00 00       	mov    eax,0x1
    27a2:	76 0d                	jbe    27b1 <_Z11create_pagem+0xe1>
    27a4:	49 81 fc 00 00 08 00 	cmp    r12,0x80000
    27ab:	0f 97 c0             	seta   al
    27ae:	83 c0 02             	add    eax,0x2
    27b1:	88 43 0e             	mov    BYTE PTR [rbx+0xe],al
    27b4:	31 c0                	xor    eax,eax
    27b6:	48 c7 43 30 00 00 00 	mov    QWORD PTR [rbx+0x30],0x0
    27bd:	00 
    27be:	86 43 0c             	xchg   BYTE PTR [rbx+0xc],al
    27c1:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
    27c4:	87 43 04             	xchg   DWORD PTR [rbx+0x4],eax
    27c7:	48 89 df             	mov    rdi,rbx
    27ca:	e8 b1 f8 ff ff       	call   2080 <_Z16add_page_to_poolP21page_metadata_entry_t@plt>
    27cf:	48 89 df             	mov    rdi,rbx
    27d2:	e8 19 fa ff ff       	call   21f0 <_Z22add_page_to_size_classP21page_metadata_entry_t@plt>
    27d7:	48 83 c4 08          	add    rsp,0x8
    27db:	48 89 d8             	mov    rax,rbx
    27de:	5b                   	pop    rbx
    27df:	5d                   	pop    rbp
    27e0:	41 5c                	pop    r12
    27e2:	41 5d                	pop    r13
    27e4:	c3                   	ret
    27e5:	0f 1f 00             	nop    DWORD PTR [rax]
    27e8:	45 31 c9             	xor    r9d,r9d
    27eb:	31 ff                	xor    edi,edi
    27ed:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
    27f3:	b9 22 00 00 00       	mov    ecx,0x22
    27f8:	ba 03 00 00 00       	mov    edx,0x3
    27fd:	4c 89 e6             	mov    rsi,r12
    2800:	e8 0b fb ff ff       	call   2310 <mmap@plt>
    2805:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
    2809:	0f 85 f5 fe ff ff    	jne    2704 <_Z11create_pagem+0x34>
    280f:	48 83 c4 08          	add    rsp,0x8
    2813:	31 db                	xor    ebx,ebx
    2815:	48 89 d8             	mov    rax,rbx
    2818:	5b                   	pop    rbx
    2819:	5d                   	pop    rbp
    281a:	41 5c                	pop    r12
    281c:	41 5d                	pop    r13
    281e:	c3                   	ret
    281f:	90                   	nop
    2820:	31 c0                	xor    eax,eax
    2822:	e9 39 ff ff ff       	jmp    2760 <_Z11create_pagem+0x90>
    2827:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    282e:	00 00 

0000000000002830 <_Z14find_free_slotP21page_metadata_entry_t>:
    2830:	48 85 ff             	test   rdi,rdi
    2833:	48 89 f9             	mov    rcx,rdi
    2836:	0f 84 76 01 00 00    	je     29b2 <_Z14find_free_slotP21page_metadata_entry_t+0x182>
    283c:	0f b7 07             	movzx  eax,WORD PTR [rdi]
    283f:	66 85 c0             	test   ax,ax
    2842:	0f 84 6a 01 00 00    	je     29b2 <_Z14find_free_slotP21page_metadata_entry_t+0x182>
    2848:	48 8b 77 28          	mov    rsi,QWORD PTR [rdi+0x28]
    284c:	8b 7f 14             	mov    edi,DWORD PTR [rdi+0x14]
    284f:	b8 03 00 00 00       	mov    eax,0x3
    2854:	c4 e2 7b f7 51 08    	shrx   edx,DWORD PTR [rcx+0x8],eax
    285a:	44 8d 82 00 01 00 00 	lea    r8d,[rdx+0x100]
    2861:	41 39 f8             	cmp    r8d,edi
    2864:	44 0f 47 c7          	cmova  r8d,edi
    2868:	44 39 c2             	cmp    edx,r8d
    286b:	73 27                	jae    2894 <_Z14find_free_slotP21page_metadata_entry_t+0x64>
    286d:	0f 1f 00             	nop    DWORD PTR [rax]
    2870:	0f b6 04 16          	movzx  eax,BYTE PTR [rsi+rdx*1]
    2874:	34 ff                	xor    al,0xff
    2876:	74 13                	je     288b <_Z14find_free_slotP21page_metadata_entry_t+0x5b>
    2878:	0f b6 c0             	movzx  eax,al
    287b:	f3 0f bc c0          	tzcnt  eax,eax
    287f:	8d 04 d0             	lea    eax,[rax+rdx*8]
    2882:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    2885:	0f 82 35 01 00 00    	jb     29c0 <_Z14find_free_slotP21page_metadata_entry_t+0x190>
    288b:	48 83 c2 01          	add    rdx,0x1
    288f:	44 39 c2             	cmp    edx,r8d
    2892:	72 dc                	jb     2870 <_Z14find_free_slotP21page_metadata_entry_t+0x40>
    2894:	0f b7 01             	movzx  eax,WORD PTR [rcx]
    2897:	66 83 f8 09          	cmp    ax,0x9
    289b:	0f 86 11 01 00 00    	jbe    29b2 <_Z14find_free_slotP21page_metadata_entry_t+0x182>
    28a1:	83 ff 1f             	cmp    edi,0x1f
    28a4:	0f 86 08 01 00 00    	jbe    29b2 <_Z14find_free_slotP21page_metadata_entry_t+0x182>
    28aa:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    28ae:	c5 fd 74 06          	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi]
    28b2:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    28b6:	85 c0                	test   eax,eax
    28b8:	74 0d                	je     28c7 <_Z14find_free_slotP21page_metadata_entry_t+0x97>
    28ba:	f3 0f bc c0          	tzcnt  eax,eax
    28be:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    28c1:	0f 82 13 01 00 00    	jb     29da <_Z14find_free_slotP21page_metadata_entry_t+0x1aa>
    28c7:	83 ff 3f             	cmp    edi,0x3f
    28ca:	0f 86 df 00 00 00    	jbe    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    28d0:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    28d4:	c5 fd 74 46 20       	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi+0x20]
    28d9:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    28dd:	85 c0                	test   eax,eax
    28df:	74 12                	je     28f3 <_Z14find_free_slotP21page_metadata_entry_t+0xc3>
    28e1:	f3 0f bc c0          	tzcnt  eax,eax
    28e5:	05 00 01 00 00       	add    eax,0x100
    28ea:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    28ed:	0f 82 e7 00 00 00    	jb     29da <_Z14find_free_slotP21page_metadata_entry_t+0x1aa>
    28f3:	83 ff 5f             	cmp    edi,0x5f
    28f6:	0f 86 b3 00 00 00    	jbe    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    28fc:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    2900:	c5 fd 74 46 40       	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi+0x40]
    2905:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    2909:	85 c0                	test   eax,eax
    290b:	0f 85 b7 00 00 00    	jne    29c8 <_Z14find_free_slotP21page_metadata_entry_t+0x198>
    2911:	83 ff 7f             	cmp    edi,0x7f
    2914:	0f 86 95 00 00 00    	jbe    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    291a:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    291e:	c5 fd 74 46 60       	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi+0x60]
    2923:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    2927:	85 c0                	test   eax,eax
    2929:	0f 85 b9 00 00 00    	jne    29e8 <_Z14find_free_slotP21page_metadata_entry_t+0x1b8>
    292f:	81 ff 9f 00 00 00    	cmp    edi,0x9f
    2935:	76 78                	jbe    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    2937:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    293b:	c5 fd 74 86 80 00 00 	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi+0x80]
    2942:	00 
    2943:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    2947:	85 c0                	test   eax,eax
    2949:	0f 85 b1 00 00 00    	jne    2a00 <_Z14find_free_slotP21page_metadata_entry_t+0x1d0>
    294f:	81 ff bf 00 00 00    	cmp    edi,0xbf
    2955:	76 58                	jbe    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    2957:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    295b:	c5 fd 74 86 a0 00 00 	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi+0xa0]
    2962:	00 
    2963:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    2967:	85 c0                	test   eax,eax
    2969:	0f 85 a9 00 00 00    	jne    2a18 <_Z14find_free_slotP21page_metadata_entry_t+0x1e8>
    296f:	81 ff df 00 00 00    	cmp    edi,0xdf
    2975:	76 38                	jbe    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    2977:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    297b:	c5 fd 74 86 c0 00 00 	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi+0xc0]
    2982:	00 
    2983:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    2987:	85 c0                	test   eax,eax
    2989:	0f 85 a1 00 00 00    	jne    2a30 <_Z14find_free_slotP21page_metadata_entry_t+0x200>
    298f:	81 ff ff 00 00 00    	cmp    edi,0xff
    2995:	76 18                	jbe    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    2997:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
    299b:	c5 fd 74 86 e0 00 00 	vpcmpeqb ymm0,ymm0,YMMWORD PTR [rsi+0xe0]
    29a2:	00 
    29a3:	c5 fd d7 c0          	vpmovmskb eax,ymm0
    29a7:	85 c0                	test   eax,eax
    29a9:	0f 85 99 00 00 00    	jne    2a48 <_Z14find_free_slotP21page_metadata_entry_t+0x218>
    29af:	c5 f8 77             	vzeroupper
    29b2:	b8 ff ff ff ff       	mov    eax,0xffffffff
    29b7:	c3                   	ret
    29b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    29bf:	00 
    29c0:	89 41 08             	mov    DWORD PTR [rcx+0x8],eax
    29c3:	c3                   	ret
    29c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    29c8:	f3 0f bc c0          	tzcnt  eax,eax
    29cc:	05 00 02 00 00       	add    eax,0x200
    29d1:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    29d4:	0f 83 37 ff ff ff    	jae    2911 <_Z14find_free_slotP21page_metadata_entry_t+0xe1>
    29da:	89 41 08             	mov    DWORD PTR [rcx+0x8],eax
    29dd:	c5 f8 77             	vzeroupper
    29e0:	c3                   	ret
    29e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    29e8:	f3 0f bc c0          	tzcnt  eax,eax
    29ec:	05 00 03 00 00       	add    eax,0x300
    29f1:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    29f4:	0f 83 35 ff ff ff    	jae    292f <_Z14find_free_slotP21page_metadata_entry_t+0xff>
    29fa:	eb de                	jmp    29da <_Z14find_free_slotP21page_metadata_entry_t+0x1aa>
    29fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2a00:	f3 0f bc c0          	tzcnt  eax,eax
    2a04:	05 00 04 00 00       	add    eax,0x400
    2a09:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    2a0c:	0f 83 3d ff ff ff    	jae    294f <_Z14find_free_slotP21page_metadata_entry_t+0x11f>
    2a12:	eb c6                	jmp    29da <_Z14find_free_slotP21page_metadata_entry_t+0x1aa>
    2a14:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2a18:	f3 0f bc c0          	tzcnt  eax,eax
    2a1c:	05 00 05 00 00       	add    eax,0x500
    2a21:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    2a24:	0f 83 45 ff ff ff    	jae    296f <_Z14find_free_slotP21page_metadata_entry_t+0x13f>
    2a2a:	eb ae                	jmp    29da <_Z14find_free_slotP21page_metadata_entry_t+0x1aa>
    2a2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2a30:	f3 0f bc c0          	tzcnt  eax,eax
    2a34:	05 00 06 00 00       	add    eax,0x600
    2a39:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    2a3c:	0f 83 4d ff ff ff    	jae    298f <_Z14find_free_slotP21page_metadata_entry_t+0x15f>
    2a42:	eb 96                	jmp    29da <_Z14find_free_slotP21page_metadata_entry_t+0x1aa>
    2a44:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2a48:	f3 0f bc c0          	tzcnt  eax,eax
    2a4c:	05 00 07 00 00       	add    eax,0x700
    2a51:	3b 41 10             	cmp    eax,DWORD PTR [rcx+0x10]
    2a54:	0f 83 55 ff ff ff    	jae    29af <_Z14find_free_slotP21page_metadata_entry_t+0x17f>
    2a5a:	e9 7b ff ff ff       	jmp    29da <_Z14find_free_slotP21page_metadata_entry_t+0x1aa>
    2a5f:	90                   	nop

0000000000002a60 <_Z14mark_slot_usedP21page_metadata_entry_ti>:
    2a60:	48 85 ff             	test   rdi,rdi
    2a63:	74 09                	je     2a6e <_Z14mark_slot_usedP21page_metadata_entry_ti+0xe>
    2a65:	85 f6                	test   esi,esi
    2a67:	78 05                	js     2a6e <_Z14mark_slot_usedP21page_metadata_entry_ti+0xe>
    2a69:	3b 77 10             	cmp    esi,DWORD PTR [rdi+0x10]
    2a6c:	72 02                	jb     2a70 <_Z14mark_slot_usedP21page_metadata_entry_ti+0x10>
    2a6e:	c3                   	ret
    2a6f:	90                   	nop
    2a70:	89 f0                	mov    eax,esi
    2a72:	48 8b 4f 28          	mov    rcx,QWORD PTR [rdi+0x28]
    2a76:	83 e6 07             	and    esi,0x7
    2a79:	ba 01 00 00 00       	mov    edx,0x1
    2a7e:	c1 f8 03             	sar    eax,0x3
    2a81:	c4 e2 49 f7 d2       	shlx   edx,edx,esi
    2a86:	48 98                	cdqe
    2a88:	f0 08 14 01          	lock or BYTE PTR [rcx+rax*1],dl
    2a8c:	66 f0 83 2f 01       	lock sub WORD PTR [rdi],0x1
    2a91:	c3                   	ret
    2a92:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2a99:	00 00 00 00 
    2a9d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000002aa0 <_Z14mark_slot_freeP21page_metadata_entry_ti>:
    2aa0:	48 85 ff             	test   rdi,rdi
    2aa3:	74 09                	je     2aae <_Z14mark_slot_freeP21page_metadata_entry_ti+0xe>
    2aa5:	85 f6                	test   esi,esi
    2aa7:	78 05                	js     2aae <_Z14mark_slot_freeP21page_metadata_entry_ti+0xe>
    2aa9:	3b 77 10             	cmp    esi,DWORD PTR [rdi+0x10]
    2aac:	72 02                	jb     2ab0 <_Z14mark_slot_freeP21page_metadata_entry_ti+0x10>
    2aae:	c3                   	ret
    2aaf:	90                   	nop
    2ab0:	89 f0                	mov    eax,esi
    2ab2:	89 f1                	mov    ecx,esi
    2ab4:	4c 8b 47 28          	mov    r8,QWORD PTR [rdi+0x28]
    2ab8:	ba fe ff ff ff       	mov    edx,0xfffffffe
    2abd:	c1 f8 03             	sar    eax,0x3
    2ac0:	d2 c2                	rol    dl,cl
    2ac2:	48 98                	cdqe
    2ac4:	f0 41 20 14 00       	lock and BYTE PTR [r8+rax*1],dl
    2ac9:	66 f0 83 07 01       	lock add WORD PTR [rdi],0x1
    2ace:	3b 77 08             	cmp    esi,DWORD PTR [rdi+0x8]
    2ad1:	73 db                	jae    2aae <_Z14mark_slot_freeP21page_metadata_entry_ti+0xe>
    2ad3:	89 77 08             	mov    DWORD PTR [rdi+0x8],esi
    2ad6:	c3                   	ret
    2ad7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    2ade:	00 00 

0000000000002ae0 <_Z9move_slotjPv>:
    2ae0:	89 ff                	mov    edi,edi
    2ae2:	48 8b 05 b7 44 00 00 	mov    rax,QWORD PTR [rip+0x44b7]        # 6fa0 <g_indirection_table@@Base-0xb7fc0>
    2ae9:	48 89 34 f8          	mov    QWORD PTR [rax+rdi*8],rsi
    2aed:	c3                   	ret
    2aee:	66 90                	xchg   ax,ax

0000000000002af0 <_Z12compact_pageP21page_metadata_entry_t>:
    2af0:	48 85 ff             	test   rdi,rdi
    2af3:	0f 84 07 04 00 00    	je     2f00 <_Z12compact_pageP21page_metadata_entry_t+0x410>
    2af9:	55                   	push   rbp
    2afa:	48 89 e5             	mov    rbp,rsp
    2afd:	41 57                	push   r15
    2aff:	41 56                	push   r14
    2b01:	41 55                	push   r13
    2b03:	41 54                	push   r12
    2b05:	41 52                	push   r10
    2b07:	53                   	push   rbx
    2b08:	48 89 fb             	mov    rbx,rdi
    2b0b:	48 83 ec 20          	sub    rsp,0x20
    2b0f:	80 7f 0d 00          	cmp    BYTE PTR [rdi+0xd],0x0
    2b13:	74 1b                	je     2b30 <_Z12compact_pageP21page_metadata_entry_t+0x40>
    2b15:	48 8d 65 d0          	lea    rsp,[rbp-0x30]
    2b19:	5b                   	pop    rbx
    2b1a:	41 5a                	pop    r10
    2b1c:	41 5c                	pop    r12
    2b1e:	41 5d                	pop    r13
    2b20:	41 5e                	pop    r14
    2b22:	41 5f                	pop    r15
    2b24:	5d                   	pop    rbp
    2b25:	c3                   	ret
    2b26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2b2d:	00 00 00 
    2b30:	e8 4b f7 ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    2b35:	80 7b 0d 00          	cmp    BYTE PTR [rbx+0xd],0x0
    2b39:	0f 85 c9 03 00 00    	jne    2f08 <_Z12compact_pageP21page_metadata_entry_t+0x418>
    2b3f:	c6 43 0d 01          	mov    BYTE PTR [rbx+0xd],0x1
    2b43:	48 89 df             	mov    rdi,rbx
    2b46:	e8 65 f5 ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    2b4b:	48 63 43 10          	movsxd rax,DWORD PTR [rbx+0x10]
    2b4f:	4c 8b 4b 20          	mov    r9,QWORD PTR [rbx+0x20]
    2b53:	4c 8b 6b 28          	mov    r13,QWORD PTR [rbx+0x28]
    2b57:	49 89 c6             	mov    r14,rax
    2b5a:	48 8d 04 85 27 00 00 	lea    rax,[rax*4+0x27]
    2b61:	00 
    2b62:	48 c1 e8 04          	shr    rax,0x4
    2b66:	48 c1 e0 04          	shl    rax,0x4
    2b6a:	48 29 c4             	sub    rsp,rax
    2b6d:	48 8d 54 24 1f       	lea    rdx,[rsp+0x1f]
    2b72:	48 29 c4             	sub    rsp,rax
    2b75:	48 8d 44 24 1f       	lea    rax,[rsp+0x1f]
    2b7a:	48 83 e2 e0          	and    rdx,0xffffffffffffffe0
    2b7e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
    2b82:	49 89 d3             	mov    r11,rdx
    2b85:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    2b89:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
    2b8c:	85 c0                	test   eax,eax
    2b8e:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
    2b91:	0f 84 7e 03 00 00    	je     2f15 <_Z12compact_pageP21page_metadata_entry_t+0x425>
    2b97:	48 89 5d b0          	mov    QWORD PTR [rbp-0x50],rbx
    2b9b:	4c 89 ea             	mov    rdx,r13
    2b9e:	4e 8d 3c 28          	lea    r15,[rax+r13*1]
    2ba2:	31 ff                	xor    edi,edi
    2ba4:	4c 89 6d b8          	mov    QWORD PTR [rbp-0x48],r13
    2ba8:	41 b8 06 00 00 00    	mov    r8d,0x6
    2bae:	45 31 e4             	xor    r12d,r12d
    2bb1:	4c 89 db             	mov    rbx,r11
    2bb4:	b9 07 00 00 00       	mov    ecx,0x7
    2bb9:	be e0 00 00 00       	mov    esi,0xe0
    2bbe:	eb 1d                	jmp    2bdd <_Z12compact_pageP21page_metadata_entry_t+0xed>
    2bc0:	48 83 c2 01          	add    rdx,0x1
    2bc4:	81 c6 00 01 00 00    	add    esi,0x100
    2bca:	83 c1 08             	add    ecx,0x8
    2bcd:	83 c7 08             	add    edi,0x8
    2bd0:	41 83 c0 08          	add    r8d,0x8
    2bd4:	49 39 d7             	cmp    r15,rdx
    2bd7:	0f 84 ab 00 00 00    	je     2c88 <_Z12compact_pageP21page_metadata_entry_t+0x198>
    2bdd:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
    2be0:	84 c0                	test   al,al
    2be2:	74 dc                	je     2bc0 <_Z12compact_pageP21page_metadata_entry_t+0xd0>
    2be4:	a8 01                	test   al,0x1
    2be6:	74 09                	je     2bf1 <_Z12compact_pageP21page_metadata_entry_t+0x101>
    2be8:	41 39 fe             	cmp    r14d,edi
    2beb:	0f 8f df 02 00 00    	jg     2ed0 <_Z12compact_pageP21page_metadata_entry_t+0x3e0>
    2bf1:	a8 02                	test   al,0x2
    2bf3:	74 0d                	je     2c02 <_Z12compact_pageP21page_metadata_entry_t+0x112>
    2bf5:	44 8d 51 fa          	lea    r10d,[rcx-0x6]
    2bf9:	45 39 d6             	cmp    r14d,r10d
    2bfc:	0f 8f 9e 02 00 00    	jg     2ea0 <_Z12compact_pageP21page_metadata_entry_t+0x3b0>
    2c02:	a8 04                	test   al,0x4
    2c04:	74 0d                	je     2c13 <_Z12compact_pageP21page_metadata_entry_t+0x123>
    2c06:	44 8d 51 fb          	lea    r10d,[rcx-0x5]
    2c0a:	45 39 d6             	cmp    r14d,r10d
    2c0d:	0f 8f 5d 02 00 00    	jg     2e70 <_Z12compact_pageP21page_metadata_entry_t+0x380>
    2c13:	a8 08                	test   al,0x8
    2c15:	74 0d                	je     2c24 <_Z12compact_pageP21page_metadata_entry_t+0x134>
    2c17:	44 8d 51 fc          	lea    r10d,[rcx-0x4]
    2c1b:	45 39 d6             	cmp    r14d,r10d
    2c1e:	0f 8f 24 02 00 00    	jg     2e48 <_Z12compact_pageP21page_metadata_entry_t+0x358>
    2c24:	a8 10                	test   al,0x10
    2c26:	74 0d                	je     2c35 <_Z12compact_pageP21page_metadata_entry_t+0x145>
    2c28:	44 8d 51 fd          	lea    r10d,[rcx-0x3]
    2c2c:	45 39 d6             	cmp    r14d,r10d
    2c2f:	0f 8f eb 01 00 00    	jg     2e20 <_Z12compact_pageP21page_metadata_entry_t+0x330>
    2c35:	a8 20                	test   al,0x20
    2c37:	74 0d                	je     2c46 <_Z12compact_pageP21page_metadata_entry_t+0x156>
    2c39:	44 8d 51 fe          	lea    r10d,[rcx-0x2]
    2c3d:	45 39 d6             	cmp    r14d,r10d
    2c40:	0f 8f b2 01 00 00    	jg     2df8 <_Z12compact_pageP21page_metadata_entry_t+0x308>
    2c46:	a8 40                	test   al,0x40
    2c48:	74 09                	je     2c53 <_Z12compact_pageP21page_metadata_entry_t+0x163>
    2c4a:	45 39 c6             	cmp    r14d,r8d
    2c4d:	0f 8f 7d 01 00 00    	jg     2dd0 <_Z12compact_pageP21page_metadata_entry_t+0x2e0>
    2c53:	84 c0                	test   al,al
    2c55:	0f 89 65 ff ff ff    	jns    2bc0 <_Z12compact_pageP21page_metadata_entry_t+0xd0>
    2c5b:	41 39 ce             	cmp    r14d,ecx
    2c5e:	0f 8e 5c ff ff ff    	jle    2bc0 <_Z12compact_pageP21page_metadata_entry_t+0xd0>
    2c64:	4c 63 d6             	movsxd r10,esi
    2c67:	49 63 c4             	movsxd rax,r12d
    2c6a:	41 83 c4 01          	add    r12d,0x1
    2c6e:	47 8b 14 11          	mov    r10d,DWORD PTR [r9+r10*1]
    2c72:	44 89 14 83          	mov    DWORD PTR [rbx+rax*4],r10d
    2c76:	4c 8b 55 c8          	mov    r10,QWORD PTR [rbp-0x38]
    2c7a:	41 89 0c 82          	mov    DWORD PTR [r10+rax*4],ecx
    2c7e:	e9 3d ff ff ff       	jmp    2bc0 <_Z12compact_pageP21page_metadata_entry_t+0xd0>
    2c83:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2c88:	45 85 e4             	test   r12d,r12d
    2c8b:	4c 8b 6d b8          	mov    r13,QWORD PTR [rbp-0x48]
    2c8f:	48 8b 5d b0          	mov    rbx,QWORD PTR [rbp-0x50]
    2c93:	0f 84 84 02 00 00    	je     2f1d <_Z12compact_pageP21page_metadata_entry_t+0x42d>
    2c99:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
    2c9d:	49 63 c4             	movsxd rax,r12d
    2ca0:	44 89 75 c8          	mov    DWORD PTR [rbp-0x38],r14d
    2ca4:	45 31 ff             	xor    r15d,r15d
    2ca7:	4c 89 6d c0          	mov    QWORD PTR [rbp-0x40],r13
    2cab:	4c 89 cb             	mov    rbx,r9
    2cae:	48 8d 04 82          	lea    rax,[rdx+rax*4]
    2cb2:	44 89 65 b8          	mov    DWORD PTR [rbp-0x48],r12d
    2cb6:	49 89 d5             	mov    r13,rdx
    2cb9:	45 89 fc             	mov    r12d,r15d
    2cbc:	49 89 c7             	mov    r15,rax
    2cbf:	90                   	nop
    2cc0:	b8 05 00 00 00       	mov    eax,0x5
    2cc5:	c4 c2 79 f7 45 00    	shlx   eax,DWORD PTR [r13+0x0],eax
    2ccb:	48 63 c8             	movsxd rcx,eax
    2cce:	44 39 e0             	cmp    eax,r12d
    2cd1:	4c 8d 34 0b          	lea    r14,[rbx+rcx*1]
    2cd5:	74 1b                	je     2cf2 <_Z12compact_pageP21page_metadata_entry_t+0x202>
    2cd7:	c4 c1 7e 6f 06       	vmovdqu ymm0,YMMWORD PTR [r14]
    2cdc:	49 63 f4             	movsxd rsi,r12d
    2cdf:	48 01 de             	add    rsi,rbx
    2ce2:	c5 fe 7f 06          	vmovdqu YMMWORD PTR [rsi],ymm0
    2ce6:	c5 f9 7e c7          	vmovd  edi,xmm0
    2cea:	c5 f8 77             	vzeroupper
    2ced:	e8 3e f6 ff ff       	call   2330 <_Z9move_slotjPv@plt>
    2cf2:	49 83 c5 04          	add    r13,0x4
    2cf6:	41 83 c4 20          	add    r12d,0x20
    2cfa:	41 0f 0d 4e 40       	prefetchw BYTE PTR [r14+0x40]
    2cff:	4d 39 ef             	cmp    r15,r13
    2d02:	75 bc                	jne    2cc0 <_Z12compact_pageP21page_metadata_entry_t+0x1d0>
    2d04:	48 8b 5d b0          	mov    rbx,QWORD PTR [rbp-0x50]
    2d08:	44 8b 65 b8          	mov    r12d,DWORD PTR [rbp-0x48]
    2d0c:	4c 8b 6d c0          	mov    r13,QWORD PTR [rbp-0x40]
    2d10:	44 8b 75 c8          	mov    r14d,DWORD PTR [rbp-0x38]
    2d14:	8b 4b 14             	mov    ecx,DWORD PTR [rbx+0x14]
    2d17:	44 89 65 c0          	mov    DWORD PTR [rbp-0x40],r12d
    2d1b:	45 89 e7             	mov    r15d,r12d
    2d1e:	83 f9 1f             	cmp    ecx,0x1f
    2d21:	0f 86 17 02 00 00    	jbe    2f3e <_Z12compact_pageP21page_metadata_entry_t+0x44e>
    2d27:	89 ca                	mov    edx,ecx
    2d29:	31 f6                	xor    esi,esi
    2d2b:	4c 89 ef             	mov    rdi,r13
    2d2e:	89 4d c8             	mov    DWORD PTR [rbp-0x38],ecx
    2d31:	c1 ea 05             	shr    edx,0x5
    2d34:	48 c1 e2 05          	shl    rdx,0x5
    2d38:	e8 c3 f3 ff ff       	call   2100 <memset@plt>
    2d3d:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
    2d40:	8d 41 e0             	lea    eax,[rcx-0x20]
    2d43:	83 e0 e0             	and    eax,0xffffffe0
    2d46:	83 c0 20             	add    eax,0x20
    2d49:	39 c8                	cmp    eax,ecx
    2d4b:	73 23                	jae    2d70 <_Z12compact_pageP21page_metadata_entry_t+0x280>
    2d4d:	8d 51 ff             	lea    edx,[rcx-0x1]
    2d50:	8d 70 01             	lea    esi,[rax+0x1]
    2d53:	29 c2                	sub    edx,eax
    2d55:	49 8d 7c 05 00       	lea    rdi,[r13+rax*1+0x0]
    2d5a:	48 83 c2 01          	add    rdx,0x1
    2d5e:	39 f1                	cmp    ecx,esi
    2d60:	b9 01 00 00 00       	mov    ecx,0x1
    2d65:	48 0f 42 d1          	cmovb  rdx,rcx
    2d69:	31 f6                	xor    esi,esi
    2d6b:	e8 90 f3 ff ff       	call   2100 <memset@plt>
    2d70:	45 85 e4             	test   r12d,r12d
    2d73:	74 2a                	je     2d9f <_Z12compact_pageP21page_metadata_entry_t+0x2af>
    2d75:	31 c0                	xor    eax,eax
    2d77:	be 01 00 00 00       	mov    esi,0x1
    2d7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2d80:	89 c2                	mov    edx,eax
    2d82:	89 c1                	mov    ecx,eax
    2d84:	83 c0 01             	add    eax,0x1
    2d87:	c1 fa 03             	sar    edx,0x3
    2d8a:	83 e1 07             	and    ecx,0x7
    2d8d:	48 63 d2             	movsxd rdx,edx
    2d90:	c4 e2 71 f7 ce       	shlx   ecx,esi,ecx
    2d95:	41 08 4c 15 00       	or     BYTE PTR [r13+rdx*1+0x0],cl
    2d9a:	44 39 e0             	cmp    eax,r12d
    2d9d:	75 e1                	jne    2d80 <_Z12compact_pageP21page_metadata_entry_t+0x290>
    2d9f:	48 89 df             	mov    rdi,rbx
    2da2:	45 29 fe             	sub    r14d,r15d
    2da5:	e8 d6 f4 ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    2daa:	66 44 87 33          	xchg   WORD PTR [rbx],r14w
    2dae:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
    2db1:	c6 43 0d 00          	mov    BYTE PTR [rbx+0xd],0x0
    2db5:	48 89 df             	mov    rdi,rbx
    2db8:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
    2dbb:	e8 f0 f2 ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    2dc0:	0f b7 03             	movzx  eax,WORD PTR [rbx]
    2dc3:	87 43 04             	xchg   DWORD PTR [rbx+0x4],eax
    2dc6:	e9 4a fd ff ff       	jmp    2b15 <_Z12compact_pageP21page_metadata_entry_t+0x25>
    2dcb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2dd0:	44 8d 56 e0          	lea    r10d,[rsi-0x20]
    2dd4:	4d 63 dc             	movsxd r11,r12d
    2dd7:	41 83 c4 01          	add    r12d,0x1
    2ddb:	4d 63 d2             	movsxd r10,r10d
    2dde:	47 8b 14 11          	mov    r10d,DWORD PTR [r9+r10*1]
    2de2:	46 89 14 9b          	mov    DWORD PTR [rbx+r11*4],r10d
    2de6:	4c 8b 55 c8          	mov    r10,QWORD PTR [rbp-0x38]
    2dea:	47 89 04 9a          	mov    DWORD PTR [r10+r11*4],r8d
    2dee:	e9 60 fe ff ff       	jmp    2c53 <_Z12compact_pageP21page_metadata_entry_t+0x163>
    2df3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2df8:	44 8d 5e c0          	lea    r11d,[rsi-0x40]
    2dfc:	4d 63 ec             	movsxd r13,r12d
    2dff:	41 83 c4 01          	add    r12d,0x1
    2e03:	4d 63 db             	movsxd r11,r11d
    2e06:	47 8b 1c 19          	mov    r11d,DWORD PTR [r9+r11*1]
    2e0a:	46 89 1c ab          	mov    DWORD PTR [rbx+r13*4],r11d
    2e0e:	4c 8b 5d c8          	mov    r11,QWORD PTR [rbp-0x38]
    2e12:	47 89 14 ab          	mov    DWORD PTR [r11+r13*4],r10d
    2e16:	e9 2b fe ff ff       	jmp    2c46 <_Z12compact_pageP21page_metadata_entry_t+0x156>
    2e1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2e20:	44 8d 5e a0          	lea    r11d,[rsi-0x60]
    2e24:	4d 63 ec             	movsxd r13,r12d
    2e27:	41 83 c4 01          	add    r12d,0x1
    2e2b:	4d 63 db             	movsxd r11,r11d
    2e2e:	47 8b 1c 19          	mov    r11d,DWORD PTR [r9+r11*1]
    2e32:	46 89 1c ab          	mov    DWORD PTR [rbx+r13*4],r11d
    2e36:	4c 8b 5d c8          	mov    r11,QWORD PTR [rbp-0x38]
    2e3a:	47 89 14 ab          	mov    DWORD PTR [r11+r13*4],r10d
    2e3e:	e9 f2 fd ff ff       	jmp    2c35 <_Z12compact_pageP21page_metadata_entry_t+0x145>
    2e43:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2e48:	44 8d 5e 80          	lea    r11d,[rsi-0x80]
    2e4c:	4d 63 ec             	movsxd r13,r12d
    2e4f:	41 83 c4 01          	add    r12d,0x1
    2e53:	4d 63 db             	movsxd r11,r11d
    2e56:	47 8b 1c 19          	mov    r11d,DWORD PTR [r9+r11*1]
    2e5a:	46 89 1c ab          	mov    DWORD PTR [rbx+r13*4],r11d
    2e5e:	4c 8b 5d c8          	mov    r11,QWORD PTR [rbp-0x38]
    2e62:	47 89 14 ab          	mov    DWORD PTR [r11+r13*4],r10d
    2e66:	e9 b9 fd ff ff       	jmp    2c24 <_Z12compact_pageP21page_metadata_entry_t+0x134>
    2e6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    2e70:	44 8d 9e 60 ff ff ff 	lea    r11d,[rsi-0xa0]
    2e77:	4d 63 ec             	movsxd r13,r12d
    2e7a:	41 83 c4 01          	add    r12d,0x1
    2e7e:	4d 63 db             	movsxd r11,r11d
    2e81:	47 8b 1c 19          	mov    r11d,DWORD PTR [r9+r11*1]
    2e85:	46 89 1c ab          	mov    DWORD PTR [rbx+r13*4],r11d
    2e89:	4c 8b 5d c8          	mov    r11,QWORD PTR [rbp-0x38]
    2e8d:	47 89 14 ab          	mov    DWORD PTR [r11+r13*4],r10d
    2e91:	e9 7d fd ff ff       	jmp    2c13 <_Z12compact_pageP21page_metadata_entry_t+0x123>
    2e96:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2e9d:	00 00 00 
    2ea0:	44 8d 9e 40 ff ff ff 	lea    r11d,[rsi-0xc0]
    2ea7:	4d 63 ec             	movsxd r13,r12d
    2eaa:	41 83 c4 01          	add    r12d,0x1
    2eae:	4d 63 db             	movsxd r11,r11d
    2eb1:	47 8b 1c 19          	mov    r11d,DWORD PTR [r9+r11*1]
    2eb5:	46 89 1c ab          	mov    DWORD PTR [rbx+r13*4],r11d
    2eb9:	4c 8b 5d c8          	mov    r11,QWORD PTR [rbp-0x38]
    2ebd:	47 89 14 ab          	mov    DWORD PTR [r11+r13*4],r10d
    2ec1:	e9 3c fd ff ff       	jmp    2c02 <_Z12compact_pageP21page_metadata_entry_t+0x112>
    2ec6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2ecd:	00 00 00 
    2ed0:	44 8d 96 20 ff ff ff 	lea    r10d,[rsi-0xe0]
    2ed7:	4d 63 dc             	movsxd r11,r12d
    2eda:	41 83 c4 01          	add    r12d,0x1
    2ede:	4d 63 d2             	movsxd r10,r10d
    2ee1:	47 8b 14 11          	mov    r10d,DWORD PTR [r9+r10*1]
    2ee5:	46 89 14 9b          	mov    DWORD PTR [rbx+r11*4],r10d
    2ee9:	4c 8b 55 c8          	mov    r10,QWORD PTR [rbp-0x38]
    2eed:	43 89 3c 9a          	mov    DWORD PTR [r10+r11*4],edi
    2ef1:	e9 fb fc ff ff       	jmp    2bf1 <_Z12compact_pageP21page_metadata_entry_t+0x101>
    2ef6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2efd:	00 00 00 
    2f00:	c3                   	ret
    2f01:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2f08:	48 89 df             	mov    rdi,rbx
    2f0b:	e8 a0 f1 ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    2f10:	e9 00 fc ff ff       	jmp    2b15 <_Z12compact_pageP21page_metadata_entry_t+0x25>
    2f15:	45 31 ff             	xor    r15d,r15d
    2f18:	e9 82 fe ff ff       	jmp    2d9f <_Z12compact_pageP21page_metadata_entry_t+0x2af>
    2f1d:	83 7d c0 1f          	cmp    DWORD PTR [rbp-0x40],0x1f
    2f21:	8b 4d c0             	mov    ecx,DWORD PTR [rbp-0x40]
    2f24:	41 bf 00 00 00 00    	mov    r15d,0x0
    2f2a:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [rbp-0x40],0x0
    2f31:	0f 87 f0 fd ff ff    	ja     2d27 <_Z12compact_pageP21page_metadata_entry_t+0x237>
    2f37:	31 c0                	xor    eax,eax
    2f39:	e9 0f fe ff ff       	jmp    2d4d <_Z12compact_pageP21page_metadata_entry_t+0x25d>
    2f3e:	31 c0                	xor    eax,eax
    2f40:	85 c9                	test   ecx,ecx
    2f42:	0f 85 05 fe ff ff    	jne    2d4d <_Z12compact_pageP21page_metadata_entry_t+0x25d>
    2f48:	e9 28 fe ff ff       	jmp    2d75 <_Z12compact_pageP21page_metadata_entry_t+0x285>
    2f4d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000002f50 <_Z16choose_page_sizem>:
    2f50:	48 81 ff 00 10 00 00 	cmp    rdi,0x1000
    2f57:	b8 00 10 00 00       	mov    eax,0x1000
    2f5c:	76 24                	jbe    2f82 <_Z16choose_page_sizem+0x32>
    2f5e:	48 81 ff 00 00 02 00 	cmp    rdi,0x20000
    2f65:	b8 00 00 02 00       	mov    eax,0x20000
    2f6a:	76 16                	jbe    2f82 <_Z16choose_page_sizem+0x32>
    2f6c:	48 81 ff 01 00 08 00 	cmp    rdi,0x80001
    2f73:	48 19 c0             	sbb    rax,rax
    2f76:	48 25 00 00 e8 ff    	and    rax,0xffffffffffe80000
    2f7c:	48 05 00 00 20 00    	add    rax,0x200000
    2f82:	c3                   	ret
    2f83:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2f8a:	00 00 00 00 
    2f8e:	66 90                	xchg   ax,ax

0000000000002f90 <compute_max_free_run>:
    2f90:	8b 47 14             	mov    eax,DWORD PTR [rdi+0x14]
    2f93:	48 8b 4f 28          	mov    rcx,QWORD PTR [rdi+0x28]
    2f97:	85 c0                	test   eax,eax
    2f99:	0f 84 98 00 00 00    	je     3037 <compute_max_free_run+0xa7>
    2f9f:	4c 8d 04 01          	lea    r8,[rcx+rax*1]
    2fa3:	31 f6                	xor    esi,esi
    2fa5:	31 c0                	xor    eax,eax
    2fa7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    2fae:	00 00 
    2fb0:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
    2fb3:	31 ff                	xor    edi,edi
    2fb5:	f6 c2 01             	test   dl,0x1
    2fb8:	75 08                	jne    2fc2 <compute_max_free_run+0x32>
    2fba:	8d 7e 01             	lea    edi,[rsi+0x1]
    2fbd:	39 f8                	cmp    eax,edi
    2fbf:	0f 42 c7             	cmovb  eax,edi
    2fc2:	31 f6                	xor    esi,esi
    2fc4:	f6 c2 02             	test   dl,0x2
    2fc7:	75 08                	jne    2fd1 <compute_max_free_run+0x41>
    2fc9:	8d 77 01             	lea    esi,[rdi+0x1]
    2fcc:	39 f0                	cmp    eax,esi
    2fce:	0f 42 c6             	cmovb  eax,esi
    2fd1:	31 ff                	xor    edi,edi
    2fd3:	f6 c2 04             	test   dl,0x4
    2fd6:	75 08                	jne    2fe0 <compute_max_free_run+0x50>
    2fd8:	8d 7e 01             	lea    edi,[rsi+0x1]
    2fdb:	39 f8                	cmp    eax,edi
    2fdd:	0f 42 c7             	cmovb  eax,edi
    2fe0:	31 f6                	xor    esi,esi
    2fe2:	f6 c2 08             	test   dl,0x8
    2fe5:	75 08                	jne    2fef <compute_max_free_run+0x5f>
    2fe7:	8d 77 01             	lea    esi,[rdi+0x1]
    2fea:	39 f0                	cmp    eax,esi
    2fec:	0f 42 c6             	cmovb  eax,esi
    2fef:	31 ff                	xor    edi,edi
    2ff1:	f6 c2 10             	test   dl,0x10
    2ff4:	75 08                	jne    2ffe <compute_max_free_run+0x6e>
    2ff6:	8d 7e 01             	lea    edi,[rsi+0x1]
    2ff9:	39 f8                	cmp    eax,edi
    2ffb:	0f 42 c7             	cmovb  eax,edi
    2ffe:	31 f6                	xor    esi,esi
    3000:	f6 c2 20             	test   dl,0x20
    3003:	75 08                	jne    300d <compute_max_free_run+0x7d>
    3005:	8d 77 01             	lea    esi,[rdi+0x1]
    3008:	39 f0                	cmp    eax,esi
    300a:	0f 42 c6             	cmovb  eax,esi
    300d:	31 ff                	xor    edi,edi
    300f:	f6 c2 40             	test   dl,0x40
    3012:	75 08                	jne    301c <compute_max_free_run+0x8c>
    3014:	8d 7e 01             	lea    edi,[rsi+0x1]
    3017:	39 f8                	cmp    eax,edi
    3019:	0f 42 c7             	cmovb  eax,edi
    301c:	31 f6                	xor    esi,esi
    301e:	84 d2                	test   dl,dl
    3020:	78 08                	js     302a <compute_max_free_run+0x9a>
    3022:	8d 77 01             	lea    esi,[rdi+0x1]
    3025:	39 f0                	cmp    eax,esi
    3027:	0f 42 c6             	cmovb  eax,esi
    302a:	48 83 c1 01          	add    rcx,0x1
    302e:	49 39 c8             	cmp    r8,rcx
    3031:	0f 85 79 ff ff ff    	jne    2fb0 <compute_max_free_run+0x20>
    3037:	c3                   	ret
    3038:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    303f:	00 

0000000000003040 <_Z17init_thread_cachev>:
    3040:	48 83 ec 08          	sub    rsp,0x8
    3044:	48 8d 3d 9d 3e 00 00 	lea    rdi,[rip+0x3e9d]        # 6ee8 <_DYNAMIC+0x1f0>
    304b:	e8 80 f2 ff ff       	call   22d0 <__tls_get_addr@plt>
    3050:	80 b8 00 00 00 00 00 	cmp    BYTE PTR [rax+0x0],0x0
    3057:	74 67                	je     30c0 <_Z17init_thread_cachev+0x80>
    3059:	48 8d 3d 88 3e 00 00 	lea    rdi,[rip+0x3e88]        # 6ee8 <_DYNAMIC+0x1f0>
    3060:	e8 6b f2 ff ff       	call   22d0 <__tls_get_addr@plt>
    3065:	c7 80 08 20 00 00 00 	mov    DWORD PTR [rax+0x2008],0x0
    306c:	00 00 00 
    306f:	48 c7 80 10 20 00 00 	mov    QWORD PTR [rax+0x2010],0x0
    3076:	00 00 00 00 
    307a:	48 c7 80 18 20 00 00 	mov    QWORD PTR [rax+0x2018],0x0
    3081:	00 00 00 00 
    3085:	48 c7 80 20 20 00 00 	mov    QWORD PTR [rax+0x2020],0x0
    308c:	00 00 00 00 
    3090:	48 c7 80 28 20 00 00 	mov    QWORD PTR [rax+0x2028],0x0
    3097:	00 00 00 00 
    309b:	48 c7 80 30 20 00 00 	mov    QWORD PTR [rax+0x2030],0x0
    30a2:	00 00 00 00 
    30a6:	48 c7 80 38 20 00 00 	mov    QWORD PTR [rax+0x2038],0x0
    30ad:	00 00 00 00 
    30b1:	48 83 c4 08          	add    rsp,0x8
    30b5:	c3                   	ret
    30b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    30bd:	00 00 00 
    30c0:	48 8b 3d 39 3e 00 00 	mov    rdi,QWORD PTR [rip+0x3e39]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    30c7:	48 8d b0 08 00 00 00 	lea    rsi,[rax+0x8]
    30ce:	48 8d 15 d3 40 00 00 	lea    rdx,[rip+0x40d3]        # 71a8 <__dso_handle>
    30d5:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    30dc:	e8 ff f1 ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    30e1:	e9 73 ff ff ff       	jmp    3059 <_Z17init_thread_cachev+0x19>
    30e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    30ed:	00 00 00 

00000000000030f0 <_Z6nefree14handle_entry_t>:
    30f0:	48 8b 05 a9 3e 00 00 	mov    rax,QWORD PTR [rip+0x3ea9]        # 6fa0 <g_indirection_table@@Base-0xb7fc0>
    30f7:	89 ff                	mov    edi,edi
    30f9:	41 54                	push   r12
    30fb:	55                   	push   rbp
    30fc:	48 8d 2c f8          	lea    rbp,[rax+rdi*8]
    3100:	53                   	push   rbx
    3101:	48 8b 75 00          	mov    rsi,QWORD PTR [rbp+0x0]
    3105:	48 85 f6             	test   rsi,rsi
    3108:	74 0a                	je     3114 <_Z6nefree14handle_entry_t+0x24>
    310a:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    310d:	3d ff 0f 00 00       	cmp    eax,0xfff
    3112:	76 0c                	jbe    3120 <_Z6nefree14handle_entry_t+0x30>
    3114:	5b                   	pop    rbx
    3115:	5d                   	pop    rbp
    3116:	41 5c                	pop    r12
    3118:	c3                   	ret
    3119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3120:	48 8b 15 b9 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3eb9]        # 6fe0 <g_page_pool@@Base-0xaff60>
    3127:	4c 8b 24 c2          	mov    r12,QWORD PTR [rdx+rax*8]
    312b:	4d 85 e4             	test   r12,r12
    312e:	74 e4                	je     3114 <_Z6nefree14handle_entry_t+0x24>
    3130:	48 89 f3             	mov    rbx,rsi
    3133:	49 2b 5c 24 20       	sub    rbx,QWORD PTR [r12+0x20]
    3138:	4c 89 e7             	mov    rdi,r12
    313b:	e8 40 f1 ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    3140:	48 c1 fb 05          	sar    rbx,0x5
    3144:	4c 89 e7             	mov    rdi,r12
    3147:	89 de                	mov    esi,ebx
    3149:	e8 52 ef ff ff       	call   20a0 <_Z14mark_slot_freeP21page_metadata_entry_ti@plt>
    314e:	4c 89 e7             	mov    rdi,r12
    3151:	e8 5a ef ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    3156:	48 c7 45 00 00 00 00 	mov    QWORD PTR [rbp+0x0],0x0
    315d:	00 
    315e:	5b                   	pop    rbx
    315f:	5d                   	pop    rbp
    3160:	41 5c                	pop    r12
    3162:	c3                   	ret
    3163:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    316a:	00 00 00 00 
    316e:	66 90                	xchg   ax,ax

0000000000003170 <_Z7get_ptr14handle_entry_t>:
    3170:	48 8b 05 29 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e29]        # 6fa0 <g_indirection_table@@Base-0xb7fc0>
    3177:	89 ff                	mov    edi,edi
    3179:	48 8b 04 f8          	mov    rax,QWORD PTR [rax+rdi*8]
    317d:	c3                   	ret
    317e:	66 90                	xchg   ax,ax

0000000000003180 <_Z8nemallocm>:
    3180:	41 57                	push   r15
    3182:	41 56                	push   r14
    3184:	41 55                	push   r13
    3186:	41 54                	push   r12
    3188:	55                   	push   rbp
    3189:	48 89 fd             	mov    rbp,rdi
    318c:	53                   	push   rbx
    318d:	48 83 ec 18          	sub    rsp,0x18
    3191:	e8 ca f1 ff ff       	call   2360 <_Z32ensure_compaction_thread_startedv@plt>
    3196:	48 8d 3d 4b 3d 00 00 	lea    rdi,[rip+0x3d4b]        # 6ee8 <_DYNAMIC+0x1f0>
    319d:	e8 2e f1 ff ff       	call   22d0 <__tls_get_addr@plt>
    31a2:	80 b8 00 00 00 00 00 	cmp    BYTE PTR [rax+0x0],0x0
    31a9:	74 7d                	je     3228 <_Z8nemallocm+0xa8>
    31ab:	8b 88 3c 20 00 00    	mov    ecx,DWORD PTR [rax+0x203c]
    31b1:	8d 51 01             	lea    edx,[rcx+0x1]
    31b4:	81 fa 87 13 00 00    	cmp    edx,0x1387
    31ba:	89 90 3c 20 00 00    	mov    DWORD PTR [rax+0x203c],edx
    31c0:	0f 8f a0 00 00 00    	jg     3266 <_Z8nemallocm+0xe6>
    31c6:	48 8d 3d 1b 3d 00 00 	lea    rdi,[rip+0x3d1b]        # 6ee8 <_DYNAMIC+0x1f0>
    31cd:	e8 fe f0 ff ff       	call   22d0 <__tls_get_addr@plt>
    31d2:	48 8d 90 08 00 00 00 	lea    rdx,[rax+0x8]
    31d9:	48 89 c3             	mov    rbx,rax
    31dc:	8b 82 00 20 00 00    	mov    eax,DWORD PTR [rdx+0x2000]
    31e2:	44 8b a2 30 20 00 00 	mov    r12d,DWORD PTR [rdx+0x2030]
    31e9:	85 c0                	test   eax,eax
    31eb:	0f 8e 5f 04 00 00    	jle    3650 <_Z8nemallocm+0x4d0>
    31f1:	83 e8 01             	sub    eax,0x1
    31f4:	89 82 00 20 00 00    	mov    DWORD PTR [rdx+0x2000],eax
    31fa:	48 98                	cdqe
    31fc:	44 8b 2c 82          	mov    r13d,DWORD PTR [rdx+rax*4]
    3200:	44 89 ef             	mov    edi,r13d
    3203:	e8 b8 ef ff ff       	call   21c0 <_Z7get_ptr14handle_entry_t@plt>
    3208:	48 85 c0             	test   rax,rax
    320b:	0f 84 9f 00 00 00    	je     32b0 <_Z8nemallocm+0x130>
    3211:	48 83 c4 18          	add    rsp,0x18
    3215:	44 89 e8             	mov    eax,r13d
    3218:	5b                   	pop    rbx
    3219:	5d                   	pop    rbp
    321a:	41 5c                	pop    r12
    321c:	41 5d                	pop    r13
    321e:	41 5e                	pop    r14
    3220:	41 5f                	pop    r15
    3222:	c3                   	ret
    3223:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3228:	48 8d 98 08 00 00 00 	lea    rbx,[rax+0x8]
    322f:	48 8b 3d ca 3c 00 00 	mov    rdi,QWORD PTR [rip+0x3cca]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    3236:	48 8d 15 6b 3f 00 00 	lea    rdx,[rip+0x3f6b]        # 71a8 <__dso_handle>
    323d:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    3244:	48 89 de             	mov    rsi,rbx
    3247:	e8 94 f0 ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    324c:	8b 83 34 20 00 00    	mov    eax,DWORD PTR [rbx+0x2034]
    3252:	83 c0 01             	add    eax,0x1
    3255:	3d 87 13 00 00       	cmp    eax,0x1387
    325a:	89 83 34 20 00 00    	mov    DWORD PTR [rbx+0x2034],eax
    3260:	0f 8e 60 ff ff ff    	jle    31c6 <_Z8nemallocm+0x46>
    3266:	48 89 ef             	mov    rdi,rbp
    3269:	e8 02 f0 ff ff       	call   2270 <_Z17get_current_statem@plt>
    326e:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
    3272:	89 c7                	mov    edi,eax
    3274:	e8 27 f0 ff ff       	call   22a0 <_Z13select_actionif@plt>
    3279:	41 89 c4             	mov    r12d,eax
    327c:	48 8d 3d 65 3c 00 00 	lea    rdi,[rip+0x3c65]        # 6ee8 <_DYNAMIC+0x1f0>
    3283:	e8 48 f0 ff ff       	call   22d0 <__tls_get_addr@plt>
    3288:	80 b8 00 00 00 00 00 	cmp    BYTE PTR [rax+0x0],0x0
    328f:	0f 84 3b 03 00 00    	je     35d0 <_Z8nemallocm+0x450>
    3295:	44 89 a0 38 20 00 00 	mov    DWORD PTR [rax+0x2038],r12d
    329c:	c7 80 3c 20 00 00 00 	mov    DWORD PTR [rax+0x203c],0x0
    32a3:	00 00 00 
    32a6:	e9 1b ff ff ff       	jmp    31c6 <_Z8nemallocm+0x46>
    32ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    32b0:	45 31 ed             	xor    r13d,r13d
    32b3:	48 81 fd 00 10 00 00 	cmp    rbp,0x1000
    32ba:	0f b6 83 00 00 00 00 	movzx  eax,BYTE PTR [rbx+0x0]
    32c1:	76 21                	jbe    32e4 <_Z8nemallocm+0x164>
    32c3:	48 81 fd 00 00 02 00 	cmp    rbp,0x20000
    32ca:	41 bd 01 00 00 00    	mov    r13d,0x1
    32d0:	76 12                	jbe    32e4 <_Z8nemallocm+0x164>
    32d2:	45 31 ed             	xor    r13d,r13d
    32d5:	48 81 fd 00 00 08 00 	cmp    rbp,0x80000
    32dc:	41 0f 97 c5          	seta   r13b
    32e0:	41 83 c5 02          	add    r13d,0x2
    32e4:	84 c0                	test   al,al
    32e6:	0f 84 0c 02 00 00    	je     34f8 <_Z8nemallocm+0x378>
    32ec:	48 8d 3d f5 3b 00 00 	lea    rdi,[rip+0x3bf5]        # 6ee8 <_DYNAMIC+0x1f0>
    32f3:	e8 d8 ef ff ff       	call   22d0 <__tls_get_addr@plt>
    32f8:	4d 63 ed             	movsxd r13,r13d
    32fb:	4a 8b 9c e8 18 20 00 	mov    rbx,QWORD PTR [rax+r13*8+0x2018]
    3302:	00 
    3303:	48 85 db             	test   rbx,rbx
    3306:	0f 84 44 01 00 00    	je     3450 <_Z8nemallocm+0x2d0>
    330c:	0f b7 03             	movzx  eax,WORD PTR [rbx]
    330f:	66 85 c0             	test   ax,ax
    3312:	0f 84 78 03 00 00    	je     3690 <_Z8nemallocm+0x510>
    3318:	80 7b 0d 00          	cmp    BYTE PTR [rbx+0xd],0x0
    331c:	0f 85 6e 03 00 00    	jne    3690 <_Z8nemallocm+0x510>
    3322:	48 89 df             	mov    rdi,rbx
    3325:	e8 56 ef ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    332a:	0f b7 03             	movzx  eax,WORD PTR [rbx]
    332d:	66 85 c0             	test   ax,ax
    3330:	0f 84 12 01 00 00    	je     3448 <_Z8nemallocm+0x2c8>
    3336:	80 7b 0d 00          	cmp    BYTE PTR [rbx+0xd],0x0
    333a:	0f 85 08 01 00 00    	jne    3448 <_Z8nemallocm+0x2c8>
    3340:	48 8d 3d a1 3b 00 00 	lea    rdi,[rip+0x3ba1]        # 6ee8 <_DYNAMIC+0x1f0>
    3347:	e8 84 ef ff ff       	call   22d0 <__tls_get_addr@plt>
    334c:	80 b8 00 00 00 00 00 	cmp    BYTE PTR [rax+0x0],0x0
    3353:	0f 84 47 02 00 00    	je     35a0 <_Z8nemallocm+0x420>
    3359:	48 8d 3d 88 3b 00 00 	lea    rdi,[rip+0x3b88]        # 6ee8 <_DYNAMIC+0x1f0>
    3360:	e8 6b ef ff ff       	call   22d0 <__tls_get_addr@plt>
    3365:	48 89 df             	mov    rdi,rbx
    3368:	4c 8d b0 08 00 00 00 	lea    r14,[rax+0x8]
    336f:	49 89 c4             	mov    r12,rax
    3372:	4b 89 9c ee 10 20 00 	mov    QWORD PTR [r14+r13*8+0x2010],rbx
    3379:	00 
    337a:	e8 c1 ee ff ff       	call   2240 <_Z14find_free_slotP21page_metadata_entry_t@plt>
    337f:	83 f8 ff             	cmp    eax,0xffffffff
    3382:	89 c6                	mov    esi,eax
    3384:	0f 84 a6 01 00 00    	je     3530 <_Z8nemallocm+0x3b0>
    338a:	48 8b 2d a7 3b 00 00 	mov    rbp,QWORD PTR [rip+0x3ba7]        # 6f38 <g_next_unique_id@@Base-0xb8010>
    3391:	41 bd 01 00 00 00    	mov    r13d,0x1
    3397:	f0 44 0f c1 6d 00    	lock xadd DWORD PTR [rbp+0x0],r13d
    339d:	41 81 fd ff ff ff 00 	cmp    r13d,0xffffff
    33a4:	0f 87 e8 01 00 00    	ja     3592 <_Z8nemallocm+0x412>
    33aa:	89 f0                	mov    eax,esi
    33ac:	c4 c1 79 6e cd       	vmovd  xmm1,r13d
    33b1:	c4 e3 71 22 43 18 01 	vpinsrd xmm0,xmm1,DWORD PTR [rbx+0x18],0x1
    33b8:	44 89 ea             	mov    edx,r13d
    33bb:	c1 e0 05             	shl    eax,0x5
    33be:	48 89 df             	mov    rdi,rbx
    33c1:	48 98                	cdqe
    33c3:	48 03 43 20          	add    rax,QWORD PTR [rbx+0x20]
    33c7:	c5 f9 d6 00          	vmovq  QWORD PTR [rax],xmm0
    33cb:	48 8b 0d ce 3b 00 00 	mov    rcx,QWORD PTR [rip+0x3bce]        # 6fa0 <g_indirection_table@@Base-0xb7fc0>
    33d2:	48 89 04 d1          	mov    QWORD PTR [rcx+rdx*8],rax
    33d6:	e8 f5 ed ff ff       	call   21d0 <_Z14mark_slot_usedP21page_metadata_entry_ti@plt>
    33db:	48 8d 3d 06 3b 00 00 	lea    rdi,[rip+0x3b06]        # 6ee8 <_DYNAMIC+0x1f0>
    33e2:	e8 e9 ee ff ff       	call   22d0 <__tls_get_addr@plt>
    33e7:	80 b8 00 00 00 00 00 	cmp    BYTE PTR [rax+0x0],0x0
    33ee:	0f 84 1c 02 00 00    	je     3610 <_Z8nemallocm+0x490>
    33f4:	4c 63 b0 08 20 00 00 	movsxd r14,DWORD PTR [rax+0x2008]
    33fb:	41 81 fe ff 07 00 00 	cmp    r14d,0x7ff
    3402:	7f 32                	jg     3436 <_Z8nemallocm+0x2b6>
    3404:	48 8d 3d dd 3a 00 00 	lea    rdi,[rip+0x3add]        # 6ee8 <_DYNAMIC+0x1f0>
    340b:	e8 c0 ee ff ff       	call   22d0 <__tls_get_addr@plt>
    3410:	45 8d 7e 01          	lea    r15d,[r14+0x1]
    3414:	44 89 b8 08 20 00 00 	mov    DWORD PTR [rax+0x2008],r15d
    341b:	48 05 08 00 00 00    	add    rax,0x8
    3421:	41 83 ff 0f          	cmp    r15d,0xf
    3425:	46 89 2c b0          	mov    DWORD PTR [rax+r14*4],r13d
    3429:	48 89 98 08 20 00 00 	mov    QWORD PTR [rax+0x2008],rbx
    3430:	0f 8e ba 02 00 00    	jle    36f0 <_Z8nemallocm+0x570>
    3436:	48 89 df             	mov    rdi,rbx
    3439:	e8 72 ec ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    343e:	e9 ce fd ff ff       	jmp    3211 <_Z8nemallocm+0x91>
    3443:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3448:	48 89 df             	mov    rdi,rbx
    344b:	e8 60 ec ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    3450:	45 85 e4             	test   r12d,r12d
    3453:	75 73                	jne    34c8 <_Z8nemallocm+0x348>
    3455:	4c 89 e8             	mov    rax,r13
    3458:	48 c1 e0 04          	shl    rax,0x4
    345c:	48 03 05 35 3b 00 00 	add    rax,QWORD PTR [rip+0x3b35]        # 6f98 <g_size_class_stats@@Base-0xaff48>
    3463:	48 8b 58 08          	mov    rbx,QWORD PTR [rax+0x8]
    3467:	48 85 db             	test   rbx,rbx
    346a:	75 1d                	jne    3489 <_Z8nemallocm+0x309>
    346c:	eb 5a                	jmp    34c8 <_Z8nemallocm+0x348>
    346e:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    3475:	00 00 00 00 
    3479:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3480:	48 8b 5b 30          	mov    rbx,QWORD PTR [rbx+0x30]
    3484:	48 85 db             	test   rbx,rbx
    3487:	74 3f                	je     34c8 <_Z8nemallocm+0x348>
    3489:	0f b7 03             	movzx  eax,WORD PTR [rbx]
    348c:	66 85 c0             	test   ax,ax
    348f:	74 ef                	je     3480 <_Z8nemallocm+0x300>
    3491:	80 7b 0d 00          	cmp    BYTE PTR [rbx+0xd],0x0
    3495:	75 e9                	jne    3480 <_Z8nemallocm+0x300>
    3497:	48 89 df             	mov    rdi,rbx
    349a:	e8 e1 ed ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    349f:	0f b7 03             	movzx  eax,WORD PTR [rbx]
    34a2:	66 85 c0             	test   ax,ax
    34a5:	74 0a                	je     34b1 <_Z8nemallocm+0x331>
    34a7:	80 7b 0d 00          	cmp    BYTE PTR [rbx+0xd],0x0
    34ab:	0f 84 8f fe ff ff    	je     3340 <_Z8nemallocm+0x1c0>
    34b1:	48 89 df             	mov    rdi,rbx
    34b4:	e8 f7 eb ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    34b9:	48 8b 5b 30          	mov    rbx,QWORD PTR [rbx+0x30]
    34bd:	48 85 db             	test   rbx,rbx
    34c0:	75 c7                	jne    3489 <_Z8nemallocm+0x309>
    34c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    34c8:	48 89 ef             	mov    rdi,rbp
    34cb:	e8 f0 eb ff ff       	call   20c0 <_Z16choose_page_sizem@plt>
    34d0:	48 89 c7             	mov    rdi,rax
    34d3:	e8 38 ec ff ff       	call   2110 <_Z11create_pagem@plt>
    34d8:	48 85 c0             	test   rax,rax
    34db:	48 89 c3             	mov    rbx,rax
    34de:	0f 84 bc 01 00 00    	je     36a0 <_Z8nemallocm+0x520>
    34e4:	48 89 df             	mov    rdi,rbx
    34e7:	e8 94 ed ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    34ec:	e9 4f fe ff ff       	jmp    3340 <_Z8nemallocm+0x1c0>
    34f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    34f8:	48 8d 3d e9 39 00 00 	lea    rdi,[rip+0x39e9]        # 6ee8 <_DYNAMIC+0x1f0>
    34ff:	e8 cc ed ff ff       	call   22d0 <__tls_get_addr@plt>
    3504:	48 8b 3d f5 39 00 00 	mov    rdi,QWORD PTR [rip+0x39f5]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    350b:	48 8d 15 96 3c 00 00 	lea    rdx,[rip+0x3c96]        # 71a8 <__dso_handle>
    3512:	48 8d b0 08 00 00 00 	lea    rsi,[rax+0x8]
    3519:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    3520:	e8 bb ed ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    3525:	e9 c2 fd ff ff       	jmp    32ec <_Z8nemallocm+0x16c>
    352a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3530:	48 89 df             	mov    rdi,rbx
    3533:	e8 78 eb ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    3538:	48 89 ef             	mov    rdi,rbp
    353b:	e8 80 eb ff ff       	call   20c0 <_Z16choose_page_sizem@plt>
    3540:	48 89 c7             	mov    rdi,rax
    3543:	e8 c8 eb ff ff       	call   2110 <_Z11create_pagem@plt>
    3548:	48 85 c0             	test   rax,rax
    354b:	48 89 c3             	mov    rbx,rax
    354e:	0f 84 4c 01 00 00    	je     36a0 <_Z8nemallocm+0x520>
    3554:	48 89 c7             	mov    rdi,rax
    3557:	e8 24 ed ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    355c:	41 80 bc 24 00 00 00 	cmp    BYTE PTR [r12+0x0],0x0
    3563:	00 00 
    3565:	0f 84 5d 01 00 00    	je     36c8 <_Z8nemallocm+0x548>
    356b:	48 8d 3d 76 39 00 00 	lea    rdi,[rip+0x3976]        # 6ee8 <_DYNAMIC+0x1f0>
    3572:	e8 59 ed ff ff       	call   22d0 <__tls_get_addr@plt>
    3577:	48 89 df             	mov    rdi,rbx
    357a:	4a 89 9c e8 18 20 00 	mov    QWORD PTR [rax+r13*8+0x2018],rbx
    3581:	00 
    3582:	e8 b9 ec ff ff       	call   2240 <_Z14find_free_slotP21page_metadata_entry_t@plt>
    3587:	83 f8 ff             	cmp    eax,0xffffffff
    358a:	89 c6                	mov    esi,eax
    358c:	0f 85 f8 fd ff ff    	jne    338a <_Z8nemallocm+0x20a>
    3592:	48 89 df             	mov    rdi,rbx
    3595:	e8 16 eb ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    359a:	e9 1e 01 00 00       	jmp    36bd <_Z8nemallocm+0x53d>
    359f:	90                   	nop
    35a0:	48 8b 3d 59 39 00 00 	mov    rdi,QWORD PTR [rip+0x3959]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    35a7:	48 8d b0 08 00 00 00 	lea    rsi,[rax+0x8]
    35ae:	48 8d 15 f3 3b 00 00 	lea    rdx,[rip+0x3bf3]        # 71a8 <__dso_handle>
    35b5:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    35bc:	e8 1f ed ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    35c1:	e9 93 fd ff ff       	jmp    3359 <_Z8nemallocm+0x1d9>
    35c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    35cd:	00 00 00 
    35d0:	48 8d 98 08 00 00 00 	lea    rbx,[rax+0x8]
    35d7:	48 8b 3d 22 39 00 00 	mov    rdi,QWORD PTR [rip+0x3922]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    35de:	48 8d 15 c3 3b 00 00 	lea    rdx,[rip+0x3bc3]        # 71a8 <__dso_handle>
    35e5:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    35ec:	48 89 de             	mov    rsi,rbx
    35ef:	e8 ec ec ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    35f4:	44 89 a3 30 20 00 00 	mov    DWORD PTR [rbx+0x2030],r12d
    35fb:	c7 83 34 20 00 00 00 	mov    DWORD PTR [rbx+0x2034],0x0
    3602:	00 00 00 
    3605:	e9 bc fb ff ff       	jmp    31c6 <_Z8nemallocm+0x46>
    360a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3610:	4c 8d b0 08 00 00 00 	lea    r14,[rax+0x8]
    3617:	48 8b 3d e2 38 00 00 	mov    rdi,QWORD PTR [rip+0x38e2]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    361e:	48 8d 15 83 3b 00 00 	lea    rdx,[rip+0x3b83]        # 71a8 <__dso_handle>
    3625:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    362c:	4c 89 f6             	mov    rsi,r14
    362f:	e8 ac ec ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    3634:	4d 63 b6 00 20 00 00 	movsxd r14,DWORD PTR [r14+0x2000]
    363b:	41 81 fe ff 07 00 00 	cmp    r14d,0x7ff
    3642:	0f 8e bc fd ff ff    	jle    3404 <_Z8nemallocm+0x284>
    3648:	e9 e9 fd ff ff       	jmp    3436 <_Z8nemallocm+0x2b6>
    364d:	0f 1f 00             	nop    DWORD PTR [rax]
    3650:	45 31 ed             	xor    r13d,r13d
    3653:	48 81 fd 00 10 00 00 	cmp    rbp,0x1000
    365a:	0f 86 8c fc ff ff    	jbe    32ec <_Z8nemallocm+0x16c>
    3660:	48 81 fd 00 00 02 00 	cmp    rbp,0x20000
    3667:	41 bd 01 00 00 00    	mov    r13d,0x1
    366d:	0f 86 79 fc ff ff    	jbe    32ec <_Z8nemallocm+0x16c>
    3673:	45 31 ed             	xor    r13d,r13d
    3676:	48 81 fd 00 00 08 00 	cmp    rbp,0x80000
    367d:	41 0f 97 c5          	seta   r13b
    3681:	41 83 c5 02          	add    r13d,0x2
    3685:	e9 62 fc ff ff       	jmp    32ec <_Z8nemallocm+0x16c>
    368a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3690:	45 85 e4             	test   r12d,r12d
    3693:	0f 84 bc fd ff ff    	je     3455 <_Z8nemallocm+0x2d5>
    3699:	e9 46 fe ff ff       	jmp    34e4 <_Z8nemallocm+0x364>
    369e:	66 90                	xchg   ax,ax
    36a0:	45 31 c9             	xor    r9d,r9d
    36a3:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
    36a9:	b9 22 00 00 00       	mov    ecx,0x22
    36ae:	31 ff                	xor    edi,edi
    36b0:	ba 03 00 00 00       	mov    edx,0x3
    36b5:	48 89 ee             	mov    rsi,rbp
    36b8:	e8 53 ec ff ff       	call   2310 <mmap@plt>
    36bd:	45 31 ed             	xor    r13d,r13d
    36c0:	e9 4c fb ff ff       	jmp    3211 <_Z8nemallocm+0x91>
    36c5:	0f 1f 00             	nop    DWORD PTR [rax]
    36c8:	48 8b 3d 31 38 00 00 	mov    rdi,QWORD PTR [rip+0x3831]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    36cf:	48 8d 15 d2 3a 00 00 	lea    rdx,[rip+0x3ad2]        # 71a8 <__dso_handle>
    36d6:	4c 89 f6             	mov    rsi,r14
    36d9:	41 c6 84 24 00 00 00 	mov    BYTE PTR [r12+0x0],0x1
    36e0:	00 01 
    36e2:	e8 f9 eb ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    36e7:	e9 7f fe ff ff       	jmp    356b <_Z8nemallocm+0x3eb>
    36ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    36f0:	41 be 20 00 00 00    	mov    r14d,0x20
    36f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    36fd:	00 00 00 
    3700:	41 81 ff ff 07 00 00 	cmp    r15d,0x7ff
    3707:	0f 8f a3 00 00 00    	jg     37b0 <_Z8nemallocm+0x630>
    370d:	48 89 df             	mov    rdi,rbx
    3710:	e8 2b eb ff ff       	call   2240 <_Z14find_free_slotP21page_metadata_entry_t@plt>
    3715:	83 f8 ff             	cmp    eax,0xffffffff
    3718:	89 c6                	mov    esi,eax
    371a:	0f 84 10 01 00 00    	je     3830 <_Z8nemallocm+0x6b0>
    3720:	41 bc 01 00 00 00    	mov    r12d,0x1
    3726:	f0 44 0f c1 65 00    	lock xadd DWORD PTR [rbp+0x0],r12d
    372c:	41 81 fc ff ff ff 00 	cmp    r12d,0xffffff
    3733:	0f 87 f7 00 00 00    	ja     3830 <_Z8nemallocm+0x6b0>
    3739:	89 f2                	mov    edx,esi
    373b:	c4 c1 79 6e d4       	vmovd  xmm2,r12d
    3740:	c4 e3 69 22 43 18 01 	vpinsrd xmm0,xmm2,DWORD PTR [rbx+0x18],0x1
    3747:	44 89 e0             	mov    eax,r12d
    374a:	c1 e2 05             	shl    edx,0x5
    374d:	48 89 df             	mov    rdi,rbx
    3750:	48 63 d2             	movsxd rdx,edx
    3753:	48 03 53 20          	add    rdx,QWORD PTR [rbx+0x20]
    3757:	c5 f9 d6 02          	vmovq  QWORD PTR [rdx],xmm0
    375b:	48 8b 0d 3e 38 00 00 	mov    rcx,QWORD PTR [rip+0x383e]        # 6fa0 <g_indirection_table@@Base-0xb7fc0>
    3762:	48 89 14 c1          	mov    QWORD PTR [rcx+rax*8],rdx
    3766:	e8 65 ea ff ff       	call   21d0 <_Z14mark_slot_usedP21page_metadata_entry_ti@plt>
    376b:	48 8d 3d 76 37 00 00 	lea    rdi,[rip+0x3776]        # 6ee8 <_DYNAMIC+0x1f0>
    3772:	e8 59 eb ff ff       	call   22d0 <__tls_get_addr@plt>
    3777:	80 b8 00 00 00 00 00 	cmp    BYTE PTR [rax+0x0],0x0
    377e:	74 60                	je     37e0 <_Z8nemallocm+0x660>
    3780:	48 63 88 08 20 00 00 	movsxd rcx,DWORD PTR [rax+0x2008]
    3787:	44 8d 79 01          	lea    r15d,[rcx+0x1]
    378b:	44 89 b8 08 20 00 00 	mov    DWORD PTR [rax+0x2008],r15d
    3792:	48 05 08 00 00 00    	add    rax,0x8
    3798:	41 83 ee 01          	sub    r14d,0x1
    379c:	44 89 24 88          	mov    DWORD PTR [rax+rcx*4],r12d
    37a0:	0f 85 5a ff ff ff    	jne    3700 <_Z8nemallocm+0x580>
    37a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    37ad:	00 00 00 
    37b0:	48 8d 3d 31 37 00 00 	lea    rdi,[rip+0x3731]        # 6ee8 <_DYNAMIC+0x1f0>
    37b7:	e8 14 eb ff ff       	call   22d0 <__tls_get_addr@plt>
    37bc:	48 89 df             	mov    rdi,rbx
    37bf:	48 89 98 10 20 00 00 	mov    QWORD PTR [rax+0x2010],rbx
    37c6:	0f b6 53 0e          	movzx  edx,BYTE PTR [rbx+0xe]
    37ca:	48 89 9c d0 18 20 00 	mov    QWORD PTR [rax+rdx*8+0x2018],rbx
    37d1:	00 
    37d2:	e8 d9 e8 ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    37d7:	e9 35 fa ff ff       	jmp    3211 <_Z8nemallocm+0x91>
    37dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    37e0:	48 8d 88 08 00 00 00 	lea    rcx,[rax+0x8]
    37e7:	48 8b 3d 12 37 00 00 	mov    rdi,QWORD PTR [rip+0x3712]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    37ee:	48 8d 15 b3 39 00 00 	lea    rdx,[rip+0x39b3]        # 71a8 <__dso_handle>
    37f5:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    37fc:	48 89 ce             	mov    rsi,rcx
    37ff:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3804:	e8 d7 ea ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    3809:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    380e:	41 83 ee 01          	sub    r14d,0x1
    3812:	48 63 81 00 20 00 00 	movsxd rax,DWORD PTR [rcx+0x2000]
    3819:	44 8d 78 01          	lea    r15d,[rax+0x1]
    381d:	44 89 24 81          	mov    DWORD PTR [rcx+rax*4],r12d
    3821:	44 89 b9 00 20 00 00 	mov    DWORD PTR [rcx+0x2000],r15d
    3828:	0f 85 d2 fe ff ff    	jne    3700 <_Z8nemallocm+0x580>
    382e:	eb 80                	jmp    37b0 <_Z8nemallocm+0x630>
    3830:	48 8d 3d b1 36 00 00 	lea    rdi,[rip+0x36b1]        # 6ee8 <_DYNAMIC+0x1f0>
    3837:	e8 94 ea ff ff       	call   22d0 <__tls_get_addr@plt>
    383c:	0f b6 80 00 00 00 00 	movzx  eax,BYTE PTR [rax+0x0]
    3843:	84 c0                	test   al,al
    3845:	0f 85 65 ff ff ff    	jne    37b0 <_Z8nemallocm+0x630>
    384b:	48 8d 3d 96 36 00 00 	lea    rdi,[rip+0x3696]        # 6ee8 <_DYNAMIC+0x1f0>
    3852:	e8 79 ea ff ff       	call   22d0 <__tls_get_addr@plt>
    3857:	48 8b 3d a2 36 00 00 	mov    rdi,QWORD PTR [rip+0x36a2]        # 6f00 <_ZN19thread_local_data_tD1Ev@@Base+0x3680>
    385e:	48 8d 15 43 39 00 00 	lea    rdx,[rip+0x3943]        # 71a8 <__dso_handle>
    3865:	48 8d b0 08 00 00 00 	lea    rsi,[rax+0x8]
    386c:	c6 80 00 00 00 00 01 	mov    BYTE PTR [rax+0x0],0x1
    3873:	e8 68 ea ff ff       	call   22e0 <__cxa_thread_atexit@plt>
    3878:	e9 33 ff ff ff       	jmp    37b0 <_Z8nemallocm+0x630>
    387d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000003880 <_ZN19thread_local_data_tD1Ev>:
    3880:	8b 87 00 20 00 00    	mov    eax,DWORD PTR [rdi+0x2000]
    3886:	85 c0                	test   eax,eax
    3888:	7e 2e                	jle    38b8 <_ZN19thread_local_data_tD1Ev+0x38>
    388a:	55                   	push   rbp
    388b:	48 89 fd             	mov    rbp,rdi
    388e:	53                   	push   rbx
    388f:	31 db                	xor    ebx,ebx
    3891:	48 83 ec 08          	sub    rsp,0x8
    3895:	0f 1f 00             	nop    DWORD PTR [rax]
    3898:	8b 7c 9d 00          	mov    edi,DWORD PTR [rbp+rbx*4+0x0]
    389c:	48 83 c3 01          	add    rbx,0x1
    38a0:	e8 2b e8 ff ff       	call   20d0 <_Z6nefree14handle_entry_t@plt>
    38a5:	39 9d 00 20 00 00    	cmp    DWORD PTR [rbp+0x2000],ebx
    38ab:	7f eb                	jg     3898 <_ZN19thread_local_data_tD1Ev+0x18>
    38ad:	48 83 c4 08          	add    rsp,0x8
    38b1:	5b                   	pop    rbx
    38b2:	5d                   	pop    rbp
    38b3:	c3                   	ret
    38b4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    38b8:	c3                   	ret
    38b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000038c0 <_Z16get_random_statev>:
    38c0:	41 57                	push   r15
    38c2:	41 56                	push   r14
    38c4:	41 55                	push   r13
    38c6:	41 54                	push   r12
    38c8:	55                   	push   rbp
    38c9:	53                   	push   rbx
    38ca:	48 83 ec 08          	sub    rsp,0x8
    38ce:	e8 bd e7 ff ff       	call   2090 <rand@plt>
    38d3:	89 c3                	mov    ebx,eax
    38d5:	e8 b6 e7 ff ff       	call   2090 <rand@plt>
    38da:	41 89 c7             	mov    r15d,eax
    38dd:	e8 ae e7 ff ff       	call   2090 <rand@plt>
    38e2:	41 89 c6             	mov    r14d,eax
    38e5:	e8 a6 e7 ff ff       	call   2090 <rand@plt>
    38ea:	41 89 c5             	mov    r13d,eax
    38ed:	e8 9e e7 ff ff       	call   2090 <rand@plt>
    38f2:	41 89 c4             	mov    r12d,eax
    38f5:	e8 96 e7 ff ff       	call   2090 <rand@plt>
    38fa:	89 c5                	mov    ebp,eax
    38fc:	e8 8f e7 ff ff       	call   2090 <rand@plt>
    3901:	89 da                	mov    edx,ebx
    3903:	44 89 fe             	mov    esi,r15d
    3906:	c1 fa 1f             	sar    edx,0x1f
    3909:	c1 fe 1f             	sar    esi,0x1f
    390c:	c1 ea 1e             	shr    edx,0x1e
    390f:	01 d3                	add    ebx,edx
    3911:	83 e3 03             	and    ebx,0x3
    3914:	29 d3                	sub    ebx,edx
    3916:	49 63 d7             	movsxd rdx,r15d
    3919:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    3920:	8d 0c 5b             	lea    ecx,[rbx+rbx*2]
    3923:	48 c1 ea 20          	shr    rdx,0x20
    3927:	29 f2                	sub    edx,esi
    3929:	44 89 f6             	mov    esi,r14d
    392c:	8d 14 52             	lea    edx,[rdx+rdx*2]
    392f:	c1 fe 1f             	sar    esi,0x1f
    3932:	41 29 d7             	sub    r15d,edx
    3935:	42 8d 14 39          	lea    edx,[rcx+r15*1]
    3939:	8d 0c 92             	lea    ecx,[rdx+rdx*4]
    393c:	49 63 d6             	movsxd rdx,r14d
    393f:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    3946:	48 c1 fa 22          	sar    rdx,0x22
    394a:	29 f2                	sub    edx,esi
    394c:	44 89 ee             	mov    esi,r13d
    394f:	8d 14 92             	lea    edx,[rdx+rdx*4]
    3952:	c1 fe 1f             	sar    esi,0x1f
    3955:	01 d2                	add    edx,edx
    3957:	41 29 d6             	sub    r14d,edx
    395a:	41 8d 14 4e          	lea    edx,[r14+rcx*2]
    395e:	8d 0c 92             	lea    ecx,[rdx+rdx*4]
    3961:	49 63 d5             	movsxd rdx,r13d
    3964:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    396b:	48 c1 fa 21          	sar    rdx,0x21
    396f:	29 f2                	sub    edx,esi
    3971:	89 ee                	mov    esi,ebp
    3973:	8d 14 92             	lea    edx,[rdx+rdx*4]
    3976:	41 29 d5             	sub    r13d,edx
    3979:	44 89 e2             	mov    edx,r12d
    397c:	c1 fa 1f             	sar    edx,0x1f
    397f:	41 01 cd             	add    r13d,ecx
    3982:	c1 ea 1e             	shr    edx,0x1e
    3985:	41 01 d4             	add    r12d,edx
    3988:	c1 fe 1f             	sar    esi,0x1f
    398b:	48 83 c4 08          	add    rsp,0x8
    398f:	41 83 e4 03          	and    r12d,0x3
    3993:	5b                   	pop    rbx
    3994:	41 29 d4             	sub    r12d,edx
    3997:	43 8d 14 ac          	lea    edx,[r12+r13*4]
    399b:	8d 0c 92             	lea    ecx,[rdx+rdx*4]
    399e:	48 63 d5             	movsxd rdx,ebp
    39a1:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    39a8:	48 c1 fa 21          	sar    rdx,0x21
    39ac:	29 f2                	sub    edx,esi
    39ae:	89 c6                	mov    esi,eax
    39b0:	8d 14 92             	lea    edx,[rdx+rdx*4]
    39b3:	c1 fe 1f             	sar    esi,0x1f
    39b6:	29 d5                	sub    ebp,edx
    39b8:	48 63 d0             	movsxd rdx,eax
    39bb:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    39c2:	01 cd                	add    ebp,ecx
    39c4:	8d 4c 6d 00          	lea    ecx,[rbp+rbp*2+0x0]
    39c8:	5d                   	pop    rbp
    39c9:	41 5c                	pop    r12
    39cb:	41 5d                	pop    r13
    39cd:	41 5e                	pop    r14
    39cf:	48 c1 ea 20          	shr    rdx,0x20
    39d3:	41 5f                	pop    r15
    39d5:	29 f2                	sub    edx,esi
    39d7:	8d 14 52             	lea    edx,[rdx+rdx*2]
    39da:	29 d0                	sub    eax,edx
    39dc:	01 c8                	add    eax,ecx
    39de:	c3                   	ret
    39df:	90                   	nop

00000000000039e0 <_Z16calculate_rewardffb>:
    39e0:	c5 fa 10 15 9c 16 00 	vmovss xmm2,DWORD PTR [rip+0x169c]        # 5084 <_fini+0x7f0>
    39e7:	00 
    39e8:	c5 f8 2f d0          	vcomiss xmm2,xmm0
    39ec:	73 60                	jae    3a4e <_Z16calculate_rewardffb+0x6e>
    39ee:	c5 fa 10 15 92 16 00 	vmovss xmm2,DWORD PTR [rip+0x1692]        # 5088 <_fini+0x7f4>
    39f5:	00 
    39f6:	c5 f8 2f d0          	vcomiss xmm2,xmm0
    39fa:	72 44                	jb     3a40 <_Z16calculate_rewardffb+0x60>
    39fc:	c5 fa 10 15 8c 16 00 	vmovss xmm2,DWORD PTR [rip+0x168c]        # 5090 <_fini+0x7fc>
    3a03:	00 
    3a04:	c5 fa 10 1d 64 16 00 	vmovss xmm3,DWORD PTR [rip+0x1664]        # 5070 <_fini+0x7dc>
    3a0b:	00 
    3a0c:	c5 fa 10 25 60 16 00 	vmovss xmm4,DWORD PTR [rip+0x1660]        # 5074 <_fini+0x7e0>
    3a13:	00 
    3a14:	c5 fa 10 05 48 16 00 	vmovss xmm0,DWORD PTR [rip+0x1648]        # 5064 <_fini+0x7d0>
    3a1b:	00 
    3a1c:	c5 f8 2f d1          	vcomiss xmm2,xmm1
    3a20:	76 52                	jbe    3a74 <_Z16calculate_rewardffb+0x94>
    3a22:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3a28:	40 84 ff             	test   dil,dil
    3a2b:	74 08                	je     3a35 <_Z16calculate_rewardffb+0x55>
    3a2d:	c5 fa 58 05 67 16 00 	vaddss xmm0,xmm0,DWORD PTR [rip+0x1667]        # 509c <_fini+0x808>
    3a34:	00 
    3a35:	c3                   	ret
    3a36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    3a3d:	00 00 00 
    3a40:	c5 fa 10 15 44 16 00 	vmovss xmm2,DWORD PTR [rip+0x1644]        # 508c <_fini+0x7f8>
    3a47:	00 
    3a48:	c5 f8 2f d0          	vcomiss xmm2,xmm0
    3a4c:	73 5a                	jae    3aa8 <_Z16calculate_rewardffb+0xc8>
    3a4e:	c5 fa 10 1d 0e 16 00 	vmovss xmm3,DWORD PTR [rip+0x160e]        # 5064 <_fini+0x7d0>
    3a55:	00 
    3a56:	c5 fa 10 25 0a 16 00 	vmovss xmm4,DWORD PTR [rip+0x160a]        # 5068 <_fini+0x7d4>
    3a5d:	00 
    3a5e:	c5 fa 10 05 06 16 00 	vmovss xmm0,DWORD PTR [rip+0x1606]        # 506c <_fini+0x7d8>
    3a65:	00 
    3a66:	c5 fa 10 15 22 16 00 	vmovss xmm2,DWORD PTR [rip+0x1622]        # 5090 <_fini+0x7fc>
    3a6d:	00 
    3a6e:	c5 f8 2f d1          	vcomiss xmm2,xmm1
    3a72:	77 b4                	ja     3a28 <_Z16calculate_rewardffb+0x48>
    3a74:	c5 fa 10 15 18 16 00 	vmovss xmm2,DWORD PTR [rip+0x1618]        # 5094 <_fini+0x800>
    3a7b:	00 
    3a7c:	c5 f8 2f d1          	vcomiss xmm2,xmm1
    3a80:	72 0e                	jb     3a90 <_Z16calculate_rewardffb+0xb0>
    3a82:	c5 f8 28 c3          	vmovaps xmm0,xmm3
    3a86:	eb a0                	jmp    3a28 <_Z16calculate_rewardffb+0x48>
    3a88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    3a8f:	00 
    3a90:	c5 f2 c2 0d ff 15 00 	vcmpnless xmm1,xmm1,DWORD PTR [rip+0x15ff]        # 5098 <_fini+0x804>
    3a97:	00 06 
    3a99:	c4 e3 59 4a c0 10    	vblendvps xmm0,xmm4,xmm0,xmm1
    3a9f:	eb 87                	jmp    3a28 <_Z16calculate_rewardffb+0x48>
    3aa1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3aa8:	c5 fa 10 1d c8 15 00 	vmovss xmm3,DWORD PTR [rip+0x15c8]        # 5078 <_fini+0x7e4>
    3aaf:	00 
    3ab0:	c5 fa 10 25 c4 15 00 	vmovss xmm4,DWORD PTR [rip+0x15c4]        # 507c <_fini+0x7e8>
    3ab7:	00 
    3ab8:	c5 fa 10 05 c0 15 00 	vmovss xmm0,DWORD PTR [rip+0x15c0]        # 5080 <_fini+0x7ec>
    3abf:	00 
    3ac0:	eb a4                	jmp    3a66 <_Z16calculate_rewardffb+0x86>
    3ac2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    3ac9:	00 00 00 00 
    3acd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000003ad0 <_Z15init_simulationv>:
    3ad0:	53                   	push   rbx
    3ad1:	e8 ba e5 ff ff       	call   2090 <rand@plt>
    3ad6:	48 8b 1d 6b 34 00 00 	mov    rbx,QWORD PTR [rip+0x346b]        # 6f48 <sim_state@@Base-0x2b8>
    3add:	99                   	cdq
    3ade:	c1 ea 1e             	shr    edx,0x1e
    3ae1:	01 d0                	add    eax,edx
    3ae3:	83 e0 03             	and    eax,0x3
    3ae6:	29 d0                	sub    eax,edx
    3ae8:	89 03                	mov    DWORD PTR [rbx],eax
    3aea:	e8 a1 e5 ff ff       	call   2090 <rand@plt>
    3aef:	48 63 d0             	movsxd rdx,eax
    3af2:	89 c1                	mov    ecx,eax
    3af4:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    3afb:	c1 f9 1f             	sar    ecx,0x1f
    3afe:	48 c1 ea 20          	shr    rdx,0x20
    3b02:	29 ca                	sub    edx,ecx
    3b04:	8d 14 52             	lea    edx,[rdx+rdx*2]
    3b07:	29 d0                	sub    eax,edx
    3b09:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    3b0c:	e8 7f e5 ff ff       	call   2090 <rand@plt>
    3b11:	48 63 d0             	movsxd rdx,eax
    3b14:	89 c1                	mov    ecx,eax
    3b16:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    3b1d:	c1 f9 1f             	sar    ecx,0x1f
    3b20:	48 c1 fa 22          	sar    rdx,0x22
    3b24:	29 ca                	sub    edx,ecx
    3b26:	8d 14 92             	lea    edx,[rdx+rdx*4]
    3b29:	01 d2                	add    edx,edx
    3b2b:	29 d0                	sub    eax,edx
    3b2d:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
    3b30:	e8 5b e5 ff ff       	call   2090 <rand@plt>
    3b35:	48 63 d0             	movsxd rdx,eax
    3b38:	89 c1                	mov    ecx,eax
    3b3a:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    3b41:	c1 f9 1f             	sar    ecx,0x1f
    3b44:	48 c1 fa 21          	sar    rdx,0x21
    3b48:	29 ca                	sub    edx,ecx
    3b4a:	8d 14 92             	lea    edx,[rdx+rdx*4]
    3b4d:	29 d0                	sub    eax,edx
    3b4f:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
    3b52:	e8 39 e5 ff ff       	call   2090 <rand@plt>
    3b57:	99                   	cdq
    3b58:	c1 ea 1e             	shr    edx,0x1e
    3b5b:	01 d0                	add    eax,edx
    3b5d:	83 e0 03             	and    eax,0x3
    3b60:	29 d0                	sub    eax,edx
    3b62:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
    3b65:	e8 26 e5 ff ff       	call   2090 <rand@plt>
    3b6a:	48 63 d0             	movsxd rdx,eax
    3b6d:	89 c1                	mov    ecx,eax
    3b6f:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    3b76:	c1 f9 1f             	sar    ecx,0x1f
    3b79:	48 c1 fa 21          	sar    rdx,0x21
    3b7d:	29 ca                	sub    edx,ecx
    3b7f:	8d 14 92             	lea    edx,[rdx+rdx*4]
    3b82:	29 d0                	sub    eax,edx
    3b84:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
    3b87:	e8 04 e5 ff ff       	call   2090 <rand@plt>
    3b8c:	48 63 d0             	movsxd rdx,eax
    3b8f:	89 c1                	mov    ecx,eax
    3b91:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    3b98:	c1 f9 1f             	sar    ecx,0x1f
    3b9b:	48 c1 ea 20          	shr    rdx,0x20
    3b9f:	29 ca                	sub    edx,ecx
    3ba1:	8d 14 52             	lea    edx,[rdx+rdx*2]
    3ba4:	29 d0                	sub    eax,edx
    3ba6:	89 43 18             	mov    DWORD PTR [rbx+0x18],eax
    3ba9:	e8 e2 e4 ff ff       	call   2090 <rand@plt>
    3bae:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
    3bb2:	c5 fa 10 15 ee 14 00 	vmovss xmm2,DWORD PTR [rip+0x14ee]        # 50a8 <_fini+0x814>
    3bb9:	00 
    3bba:	c5 f2 2a c0          	vcvtsi2ss xmm0,xmm1,eax
    3bbe:	c5 fa 59 05 da 14 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x14da]        # 50a0 <_fini+0x80c>
    3bc5:	00 
    3bc6:	c4 e2 69 99 05 d5 14 	vfmadd132ss xmm0,xmm2,DWORD PTR [rip+0x14d5]        # 50a4 <_fini+0x810>
    3bcd:	00 00 
    3bcf:	c5 fa 11 43 1c       	vmovss DWORD PTR [rbx+0x1c],xmm0
    3bd4:	e8 b7 e4 ff ff       	call   2090 <rand@plt>
    3bd9:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
    3bdd:	c6 43 24 00          	mov    BYTE PTR [rbx+0x24],0x0
    3be1:	c5 fa 10 1d c3 14 00 	vmovss xmm3,DWORD PTR [rip+0x14c3]        # 50ac <_fini+0x818>
    3be8:	00 
    3be9:	c5 f2 2a c0          	vcvtsi2ss xmm0,xmm1,eax
    3bed:	c5 fa 59 05 ab 14 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x14ab]        # 50a0 <_fini+0x80c>
    3bf4:	00 
    3bf5:	c4 e2 61 99 05 9e 14 	vfmadd132ss xmm0,xmm3,DWORD PTR [rip+0x149e]        # 509c <_fini+0x808>
    3bfc:	00 00 
    3bfe:	c5 fa 11 43 20       	vmovss DWORD PTR [rbx+0x20],xmm0
    3c03:	5b                   	pop    rbx
    3c04:	c3                   	ret
    3c05:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    3c0c:	00 00 00 00 

0000000000003c10 <_Z15simulate_actioniPfPim>:
    3c10:	41 54                	push   r12
    3c12:	31 c0                	xor    eax,eax
    3c14:	49 89 f4             	mov    r12,rsi
    3c17:	55                   	push   rbp
    3c18:	48 89 d5             	mov    rbp,rdx
    3c1b:	53                   	push   rbx
    3c1c:	48 83 ec 10          	sub    rsp,0x10
    3c20:	48 8b 1d 21 33 00 00 	mov    rbx,QWORD PTR [rip+0x3321]        # 6f48 <sim_state@@Base-0x2b8>
    3c27:	48 83 f9 40          	cmp    rcx,0x40
    3c2b:	c5 fa 10 43 1c       	vmovss xmm0,DWORD PTR [rbx+0x1c]
    3c30:	76 0e                	jbe    3c40 <_Z15simulate_actioniPfPim+0x30>
    3c32:	48 81 f9 00 01 00 00 	cmp    rcx,0x100
    3c39:	b8 01 00 00 00       	mov    eax,0x1
    3c3e:	77 20                	ja     3c60 <_Z15simulate_actioniPfPim+0x50>
    3c40:	83 ff 04             	cmp    edi,0x4
    3c43:	89 03                	mov    DWORD PTR [rbx],eax
    3c45:	0f 87 7c 03 00 00    	ja     3fc7 <_Z15simulate_actioniPfPim+0x3b7>
    3c4b:	48 8d 15 da 13 00 00 	lea    rdx,[rip+0x13da]        # 502c <_fini+0x798>
    3c52:	89 f8                	mov    eax,edi
    3c54:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
    3c58:	48 01 d0             	add    rax,rdx
    3c5b:	ff e0                	jmp    rax
    3c5d:	0f 1f 00             	nop    DWORD PTR [rax]
    3c60:	31 c0                	xor    eax,eax
    3c62:	48 81 f9 00 04 00 00 	cmp    rcx,0x400
    3c69:	0f 97 c0             	seta   al
    3c6c:	83 c0 02             	add    eax,0x2
    3c6f:	eb cf                	jmp    3c40 <_Z15simulate_actioniPfPim+0x30>
    3c71:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3c78:	e8 13 e4 ff ff       	call   2090 <rand@plt>
    3c7d:	48 63 d0             	movsxd rdx,eax
    3c80:	89 c1                	mov    ecx,eax
    3c82:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    3c89:	c1 f9 1f             	sar    ecx,0x1f
    3c8c:	48 c1 ea 20          	shr    rdx,0x20
    3c90:	29 ca                	sub    edx,ecx
    3c92:	8d 14 52             	lea    edx,[rdx+rdx*2]
    3c95:	29 d0                	sub    eax,edx
    3c97:	83 c0 01             	add    eax,0x1
    3c9a:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
    3c9d:	e8 ee e3 ff ff       	call   2090 <rand@plt>
    3ca2:	99                   	cdq
    3ca3:	c1 ea 1e             	shr    edx,0x1e
    3ca6:	01 d0                	add    eax,edx
    3ca8:	83 e0 03             	and    eax,0x3
    3cab:	29 d0                	sub    eax,edx
    3cad:	83 c0 04             	add    eax,0x4
    3cb0:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
    3cb3:	e8 d8 e3 ff ff       	call   2090 <rand@plt>
    3cb8:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
    3cbc:	c6 43 24 01          	mov    BYTE PTR [rbx+0x24],0x1
    3cc0:	c5 fa 10 2d 04 14 00 	vmovss xmm5,DWORD PTR [rip+0x1404]        # 50cc <_fini+0x838>
    3cc7:	00 
    3cc8:	c5 c2 2a c8          	vcvtsi2ss xmm1,xmm7,eax
    3ccc:	c5 f2 59 0d cc 13 00 	vmulss xmm1,xmm1,DWORD PTR [rip+0x13cc]        # 50a0 <_fini+0x80c>
    3cd3:	00 
    3cd4:	bf 01 00 00 00       	mov    edi,0x1
    3cd9:	c5 fa 10 05 ef 13 00 	vmovss xmm0,DWORD PTR [rip+0x13ef]        # 50d0 <_fini+0x83c>
    3ce0:	00 
    3ce1:	c4 e2 51 99 0d de 13 	vfmadd132ss xmm1,xmm5,DWORD PTR [rip+0x13de]        # 50c8 <_fini+0x834>
    3ce8:	00 00 
    3cea:	c5 fa 59 43 1c       	vmulss xmm0,xmm0,DWORD PTR [rbx+0x1c]
    3cef:	c5 f8 14 d1          	vunpcklps xmm2,xmm0,xmm1
    3cf3:	c5 f8 13 53 1c       	vmovlps QWORD PTR [rbx+0x1c],xmm2
    3cf8:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
    3cfb:	8d 50 01             	lea    edx,[rax+0x1]
    3cfe:	48 63 c2             	movsxd rax,edx
    3d01:	89 d1                	mov    ecx,edx
    3d03:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
    3d0a:	c1 f9 1f             	sar    ecx,0x1f
    3d0d:	48 c1 f8 21          	sar    rax,0x21
    3d11:	29 c8                	sub    eax,ecx
    3d13:	8d 04 80             	lea    eax,[rax+rax*4]
    3d16:	29 c2                	sub    edx,eax
    3d18:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
    3d1b:	e8 40 e3 ff ff       	call   2060 <_Z16calculate_rewardffb@plt>
    3d20:	8b 03                	mov    eax,DWORD PTR [rbx]
    3d22:	c4 c1 7a 11 04 24    	vmovss DWORD PTR [r12],xmm0
    3d28:	8d 04 40             	lea    eax,[rax+rax*2]
    3d2b:	03 43 04             	add    eax,DWORD PTR [rbx+0x4]
    3d2e:	8d 14 80             	lea    edx,[rax+rax*4]
    3d31:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
    3d34:	8d 04 50             	lea    eax,[rax+rdx*2]
    3d37:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
    3d3a:	8d 04 80             	lea    eax,[rax+rax*4]
    3d3d:	03 43 0c             	add    eax,DWORD PTR [rbx+0xc]
    3d40:	8d 04 82             	lea    eax,[rdx+rax*4]
    3d43:	8d 04 80             	lea    eax,[rax+rax*4]
    3d46:	03 43 14             	add    eax,DWORD PTR [rbx+0x14]
    3d49:	8d 04 40             	lea    eax,[rax+rax*2]
    3d4c:	03 43 18             	add    eax,DWORD PTR [rbx+0x18]
    3d4f:	89 45 00             	mov    DWORD PTR [rbp+0x0],eax
    3d52:	48 83 c4 10          	add    rsp,0x10
    3d56:	5b                   	pop    rbx
    3d57:	5d                   	pop    rbp
    3d58:	41 5c                	pop    r12
    3d5a:	c3                   	ret
    3d5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3d60:	c5 fa 11 44 24 0c    	vmovss DWORD PTR [rsp+0xc],xmm0
    3d66:	e8 25 e3 ff ff       	call   2090 <rand@plt>
    3d6b:	48 63 d0             	movsxd rdx,eax
    3d6e:	89 c1                	mov    ecx,eax
    3d70:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    3d77:	c1 f9 1f             	sar    ecx,0x1f
    3d7a:	48 c1 ea 20          	shr    rdx,0x20
    3d7e:	29 ca                	sub    edx,ecx
    3d80:	8d 14 52             	lea    edx,[rdx+rdx*2]
    3d83:	29 d0                	sub    eax,edx
    3d85:	89 43 18             	mov    DWORD PTR [rbx+0x18],eax
    3d88:	e8 03 e3 ff ff       	call   2090 <rand@plt>
    3d8d:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
    3d91:	c6 43 24 00          	mov    BYTE PTR [rbx+0x24],0x0
    3d95:	31 ff                	xor    edi,edi
    3d97:	c5 ca 2a c8          	vcvtsi2ss xmm1,xmm6,eax
    3d9b:	c5 f2 59 0d fd 12 00 	vmulss xmm1,xmm1,DWORD PTR [rip+0x12fd]        # 50a0 <_fini+0x80c>
    3da2:	00 
    3da3:	c5 fa 10 3d 01 13 00 	vmovss xmm7,DWORD PTR [rip+0x1301]        # 50ac <_fini+0x818>
    3daa:	00 
    3dab:	c4 e2 41 99 0d 20 13 	vfmadd132ss xmm1,xmm7,DWORD PTR [rip+0x1320]        # 50d4 <_fini+0x840>
    3db2:	00 00 
    3db4:	c5 fa 10 44 24 0c    	vmovss xmm0,DWORD PTR [rsp+0xc]
    3dba:	c5 f8 14 d1          	vunpcklps xmm2,xmm0,xmm1
    3dbe:	c5 f8 13 53 1c       	vmovlps QWORD PTR [rbx+0x1c],xmm2
    3dc3:	e9 30 ff ff ff       	jmp    3cf8 <_Z15simulate_actioniPfPim+0xe8>
    3dc8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    3dcf:	00 
    3dd0:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
    3dd3:	ba 08 00 00 00       	mov    edx,0x8
    3dd8:	c5 f9 6e 43 10       	vmovd  xmm0,DWORD PTR [rbx+0x10]
    3ddd:	c5 f9 6f 0d 0b 13 00 	vmovdqa xmm1,XMMWORD PTR [rip+0x130b]        # 50f0 <_fini+0x85c>
    3de4:	00 
    3de5:	89 7c 24 0c          	mov    DWORD PTR [rsp+0xc],edi
    3de9:	39 d0                	cmp    eax,edx
    3deb:	c4 e2 79 3d c1       	vpmaxsd xmm0,xmm0,xmm1
    3df0:	c5 f1 76 c9          	vpcmpeqd xmm1,xmm1,xmm1
    3df4:	0f 4f c2             	cmovg  eax,edx
    3df7:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
    3dfb:	c5 f9 7e 43 10       	vmovd  DWORD PTR [rbx+0x10],xmm0
    3e00:	83 c0 01             	add    eax,0x1
    3e03:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
    3e06:	e8 85 e2 ff ff       	call   2090 <rand@plt>
    3e0b:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
    3e0f:	c6 43 24 00          	mov    BYTE PTR [rbx+0x24],0x0
    3e13:	c5 fa 10 35 95 12 00 	vmovss xmm6,DWORD PTR [rip+0x1295]        # 50b0 <_fini+0x81c>
    3e1a:	00 
    3e1b:	c5 d2 2a c8          	vcvtsi2ss xmm1,xmm5,eax
    3e1f:	c5 f2 59 0d 79 12 00 	vmulss xmm1,xmm1,DWORD PTR [rip+0x1279]        # 50a0 <_fini+0x80c>
    3e26:	00 
    3e27:	c5 fa 10 05 85 12 00 	vmovss xmm0,DWORD PTR [rip+0x1285]        # 50b4 <_fini+0x820>
    3e2e:	00 
    3e2f:	c4 e2 49 99 0d 74 12 	vfmadd132ss xmm1,xmm6,DWORD PTR [rip+0x1274]        # 50ac <_fini+0x818>
    3e36:	00 00 
    3e38:	8b 7c 24 0c          	mov    edi,DWORD PTR [rsp+0xc]
    3e3c:	c5 fa 59 43 1c       	vmulss xmm0,xmm0,DWORD PTR [rbx+0x1c]
    3e41:	c5 f8 14 d1          	vunpcklps xmm2,xmm0,xmm1
    3e45:	c5 f8 13 53 1c       	vmovlps QWORD PTR [rbx+0x1c],xmm2
    3e4a:	e9 a9 fe ff ff       	jmp    3cf8 <_Z15simulate_actioniPfPim+0xe8>
    3e4f:	90                   	nop
    3e50:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
    3e53:	ba 03 00 00 00       	mov    edx,0x3
    3e58:	39 d0                	cmp    eax,edx
    3e5a:	0f 4f c2             	cmovg  eax,edx
    3e5d:	83 c0 01             	add    eax,0x1
    3e60:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
    3e63:	e8 28 e2 ff ff       	call   2090 <rand@plt>
    3e68:	48 63 d0             	movsxd rdx,eax
    3e6b:	89 c1                	mov    ecx,eax
    3e6d:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    3e74:	c1 f9 1f             	sar    ecx,0x1f
    3e77:	48 c1 ea 20          	shr    rdx,0x20
    3e7b:	29 ca                	sub    edx,ecx
    3e7d:	8d 14 52             	lea    edx,[rdx+rdx*2]
    3e80:	29 d0                	sub    eax,edx
    3e82:	83 c0 02             	add    eax,0x2
    3e85:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
    3e88:	e8 03 e2 ff ff       	call   2090 <rand@plt>
    3e8d:	48 63 d0             	movsxd rdx,eax
    3e90:	89 c1                	mov    ecx,eax
    3e92:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    3e99:	c1 f9 1f             	sar    ecx,0x1f
    3e9c:	48 c1 ea 20          	shr    rdx,0x20
    3ea0:	29 ca                	sub    edx,ecx
    3ea2:	8d 14 52             	lea    edx,[rdx+rdx*2]
    3ea5:	29 d0                	sub    eax,edx
    3ea7:	83 c0 01             	add    eax,0x1
    3eaa:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
    3ead:	e8 de e1 ff ff       	call   2090 <rand@plt>
    3eb2:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
    3eb6:	c5 fa 10 0d de 11 00 	vmovss xmm1,DWORD PTR [rip+0x11de]        # 509c <_fini+0x808>
    3ebd:	00 
    3ebe:	c5 e2 2a c0          	vcvtsi2ss xmm0,xmm3,eax
    3ec2:	c5 fa 59 05 d6 11 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x11d6]        # 50a0 <_fini+0x80c>
    3ec9:	00 
    3eca:	c4 e2 71 99 c8       	vfmadd132ss xmm1,xmm1,xmm0
    3ecf:	c5 fa 11 4b 20       	vmovss DWORD PTR [rbx+0x20],xmm1
    3ed4:	e8 b7 e1 ff ff       	call   2090 <rand@plt>
    3ed9:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
    3edd:	c6 43 24 00          	mov    BYTE PTR [rbx+0x24],0x0
    3ee1:	31 ff                	xor    edi,edi
    3ee3:	c5 e2 2a c0          	vcvtsi2ss xmm0,xmm3,eax
    3ee7:	c5 fa 59 05 b1 11 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x11b1]        # 50a0 <_fini+0x80c>
    3eee:	00 
    3eef:	c5 fa 10 4b 20       	vmovss xmm1,DWORD PTR [rbx+0x20]
    3ef4:	c5 fa 10 3d ac 11 00 	vmovss xmm7,DWORD PTR [rip+0x11ac]        # 50a8 <_fini+0x814>
    3efb:	00 
    3efc:	c4 e2 41 99 05 b3 11 	vfmadd132ss xmm0,xmm7,DWORD PTR [rip+0x11b3]        # 50b8 <_fini+0x824>
    3f03:	00 00 
    3f05:	c5 fa 11 43 1c       	vmovss DWORD PTR [rbx+0x1c],xmm0
    3f0a:	e9 e9 fd ff ff       	jmp    3cf8 <_Z15simulate_actioniPfPim+0xe8>
    3f0f:	90                   	nop
    3f10:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
    3f13:	ba 03 00 00 00       	mov    edx,0x3
    3f18:	39 d0                	cmp    eax,edx
    3f1a:	0f 4f c2             	cmovg  eax,edx
    3f1d:	83 c0 01             	add    eax,0x1
    3f20:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
    3f23:	e8 68 e1 ff ff       	call   2090 <rand@plt>
    3f28:	48 63 d0             	movsxd rdx,eax
    3f2b:	89 c1                	mov    ecx,eax
    3f2d:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    3f34:	c1 f9 1f             	sar    ecx,0x1f
    3f37:	48 c1 fa 22          	sar    rdx,0x22
    3f3b:	29 ca                	sub    edx,ecx
    3f3d:	8d 14 92             	lea    edx,[rdx+rdx*4]
    3f40:	01 d2                	add    edx,edx
    3f42:	29 d0                	sub    eax,edx
    3f44:	83 c0 0a             	add    eax,0xa
    3f47:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
    3f4a:	e8 41 e1 ff ff       	call   2090 <rand@plt>
    3f4f:	89 c2                	mov    edx,eax
    3f51:	c1 ea 1f             	shr    edx,0x1f
    3f54:	01 d0                	add    eax,edx
    3f56:	83 e0 01             	and    eax,0x1
    3f59:	29 d0                	sub    eax,edx
    3f5b:	83 c0 01             	add    eax,0x1
    3f5e:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
    3f61:	e8 2a e1 ff ff       	call   2090 <rand@plt>
    3f66:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
    3f6a:	c5 fa 10 2d 4e 11 00 	vmovss xmm5,DWORD PTR [rip+0x114e]        # 50c0 <_fini+0x82c>
    3f71:	00 
    3f72:	c5 da 2a c0          	vcvtsi2ss xmm0,xmm4,eax
    3f76:	c5 fa 59 05 22 11 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x1122]        # 50a0 <_fini+0x80c>
    3f7d:	00 
    3f7e:	c4 e2 51 99 05 35 11 	vfmadd132ss xmm0,xmm5,DWORD PTR [rip+0x1135]        # 50bc <_fini+0x828>
    3f85:	00 00 
    3f87:	c5 fa 11 43 20       	vmovss DWORD PTR [rbx+0x20],xmm0
    3f8c:	e8 ff e0 ff ff       	call   2090 <rand@plt>
    3f91:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
    3f95:	c6 43 24 00          	mov    BYTE PTR [rbx+0x24],0x0
    3f99:	31 ff                	xor    edi,edi
    3f9b:	c5 da 2a c0          	vcvtsi2ss xmm0,xmm4,eax
    3f9f:	c5 fa 59 05 f9 10 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x10f9]        # 50a0 <_fini+0x80c>
    3fa6:	00 
    3fa7:	c5 fa 10 4b 20       	vmovss xmm1,DWORD PTR [rbx+0x20]
    3fac:	c5 fa 10 35 10 11 00 	vmovss xmm6,DWORD PTR [rip+0x1110]        # 50c4 <_fini+0x830>
    3fb3:	00 
    3fb4:	c4 e2 49 99 05 eb 10 	vfmadd132ss xmm0,xmm6,DWORD PTR [rip+0x10eb]        # 50a8 <_fini+0x814>
    3fbb:	00 00 
    3fbd:	c5 fa 11 43 1c       	vmovss DWORD PTR [rbx+0x1c],xmm0
    3fc2:	e9 31 fd ff ff       	jmp    3cf8 <_Z15simulate_actioniPfPim+0xe8>
    3fc7:	0f b6 7b 24          	movzx  edi,BYTE PTR [rbx+0x24]
    3fcb:	c5 fa 10 4b 20       	vmovss xmm1,DWORD PTR [rbx+0x20]
    3fd0:	e9 23 fd ff ff       	jmp    3cf8 <_Z15simulate_actioniPfPim+0xe8>
    3fd5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    3fdc:	00 00 00 00 

0000000000003fe0 <_Z13select_actionif>:
    3fe0:	53                   	push   rbx
    3fe1:	89 fb                	mov    ebx,edi
    3fe3:	48 83 ec 10          	sub    rsp,0x10
    3fe7:	c5 fa 11 44 24 0c    	vmovss DWORD PTR [rsp+0xc],xmm0
    3fed:	e8 9e e0 ff ff       	call   2090 <rand@plt>
    3ff2:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
    3ff6:	c5 fa 10 44 24 0c    	vmovss xmm0,DWORD PTR [rsp+0xc]
    3ffc:	c5 f2 2a c8          	vcvtsi2ss xmm1,xmm1,eax
    4000:	c5 f2 59 0d 98 10 00 	vmulss xmm1,xmm1,DWORD PTR [rip+0x1098]        # 50a0 <_fini+0x80c>
    4007:	00 
    4008:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    400c:	0f 87 7e 00 00 00    	ja     4090 <_Z13select_actionif+0xb0>
    4012:	48 8b 05 77 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f77]        # 6f90 <Q@@Base-0x2b0>
    4019:	48 63 fb             	movsxd rdi,ebx
    401c:	48 8d 14 bf          	lea    rdx,[rdi+rdi*4]
    4020:	48 8d 14 90          	lea    rdx,[rax+rdx*4]
    4024:	c5 fa 10 0a          	vmovss xmm1,DWORD PTR [rdx]
    4028:	c5 fa 10 42 04       	vmovss xmm0,DWORD PTR [rdx+0x4]
    402d:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    4031:	c5 fa 5f c1          	vmaxss xmm0,xmm0,xmm1
    4035:	c5 fa 10 4a 08       	vmovss xmm1,DWORD PTR [rdx+0x8]
    403a:	0f 97 c0             	seta   al
    403d:	c5 f8 2f c8          	vcomiss xmm1,xmm0
    4041:	0f b6 c0             	movzx  eax,al
    4044:	77 2a                	ja     4070 <_Z13select_actionif+0x90>
    4046:	c5 f8 28 c8          	vmovaps xmm1,xmm0
    404a:	c5 fa 10 42 0c       	vmovss xmm0,DWORD PTR [rdx+0xc]
    404f:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    4053:	77 2b                	ja     4080 <_Z13select_actionif+0xa0>
    4055:	c5 f8 28 c1          	vmovaps xmm0,xmm1
    4059:	c5 fa 10 4a 10       	vmovss xmm1,DWORD PTR [rdx+0x10]
    405e:	ba 04 00 00 00       	mov    edx,0x4
    4063:	c5 f8 2e c8          	vucomiss xmm1,xmm0
    4067:	0f 47 c2             	cmova  eax,edx
    406a:	48 83 c4 10          	add    rsp,0x10
    406e:	5b                   	pop    rbx
    406f:	c3                   	ret
    4070:	c5 fa 10 42 0c       	vmovss xmm0,DWORD PTR [rdx+0xc]
    4075:	b8 02 00 00 00       	mov    eax,0x2
    407a:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    407e:	76 d5                	jbe    4055 <_Z13select_actionif+0x75>
    4080:	b8 03 00 00 00       	mov    eax,0x3
    4085:	eb d2                	jmp    4059 <_Z13select_actionif+0x79>
    4087:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    408e:	00 00 
    4090:	e8 fb df ff ff       	call   2090 <rand@plt>
    4095:	48 83 c4 10          	add    rsp,0x10
    4099:	89 c2                	mov    edx,eax
    409b:	48 98                	cdqe
    409d:	5b                   	pop    rbx
    409e:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
    40a5:	89 d1                	mov    ecx,edx
    40a7:	c1 f9 1f             	sar    ecx,0x1f
    40aa:	48 c1 f8 21          	sar    rax,0x21
    40ae:	29 c8                	sub    eax,ecx
    40b0:	8d 0c 80             	lea    ecx,[rax+rax*4]
    40b3:	89 d0                	mov    eax,edx
    40b5:	29 c8                	sub    eax,ecx
    40b7:	c3                   	ret
    40b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    40bf:	00 

00000000000040c0 <_Z14update_q_tableiififf>:
    40c0:	48 8b 05 c9 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ec9]        # 6f90 <Q@@Base-0x2b0>
    40c7:	48 63 d2             	movsxd rdx,edx
    40ca:	48 63 ce             	movsxd rcx,esi
    40cd:	c5 f8 28 e0          	vmovaps xmm4,xmm0
    40d1:	48 8d 34 92          	lea    rsi,[rdx+rdx*4]
    40d5:	48 8d 34 b0          	lea    rsi,[rax+rsi*4]
    40d9:	c5 fa 10 2e          	vmovss xmm5,DWORD PTR [rsi]
    40dd:	c5 fa 10 46 04       	vmovss xmm0,DWORD PTR [rsi+0x4]
    40e2:	48 8d 34 92          	lea    rsi,[rdx+rdx*4]
    40e6:	48 63 d7             	movsxd rdx,edi
    40e9:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
    40ed:	c5 fa 5f dd          	vmaxss xmm3,xmm0,xmm5
    40f1:	c5 fa 10 6c b0 08    	vmovss xmm5,DWORD PTR [rax+rsi*4+0x8]
    40f7:	48 01 ca             	add    rdx,rcx
    40fa:	c5 fa 10 34 90       	vmovss xmm6,DWORD PTR [rax+rdx*4]
    40ff:	c5 d2 5f c3          	vmaxss xmm0,xmm5,xmm3
    4103:	c5 fa 10 5c b0 0c    	vmovss xmm3,DWORD PTR [rax+rsi*4+0xc]
    4109:	c5 e2 5f e8          	vmaxss xmm5,xmm3,xmm0
    410d:	c5 fa 10 5c b0 10    	vmovss xmm3,DWORD PTR [rax+rsi*4+0x10]
    4113:	c5 e2 5f dd          	vmaxss xmm3,xmm3,xmm5
    4117:	c4 e2 59 99 da       	vfmadd132ss xmm3,xmm4,xmm2
    411c:	c5 e2 5c c6          	vsubss xmm0,xmm3,xmm6
    4120:	c4 e2 49 99 c1       	vfmadd132ss xmm0,xmm6,xmm1
    4125:	c5 fa 11 04 90       	vmovss DWORD PTR [rax+rdx*4],xmm0
    412a:	c3                   	ret
    412b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000004130 <_Z17get_current_statem>:
    4130:	48 83 ff 40          	cmp    rdi,0x40
    4134:	76 2a                	jbe    4160 <_Z17get_current_statem+0x30>
    4136:	48 81 ff 00 01 00 00 	cmp    rdi,0x100
    413d:	0f 87 1d 01 00 00    	ja     4260 <_Z17get_current_statem+0x130>
    4143:	ba 58 02 00 00       	mov    edx,0x258
    4148:	41 b8 1e 00 00 00    	mov    r8d,0x1e
    414e:	41 b9 03 00 00 00    	mov    r9d,0x3
    4154:	eb 12                	jmp    4168 <_Z17get_current_statem+0x38>
    4156:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    415d:	00 00 00 
    4160:	31 d2                	xor    edx,edx
    4162:	45 31 c0             	xor    r8d,r8d
    4165:	45 31 c9             	xor    r9d,r9d
    4168:	48 8b 05 e9 2d 00 00 	mov    rax,QWORD PTR [rip+0x2de9]        # 6f58 <g_page_count@@Base-0xaffc8>
    416f:	bf 04 00 00 00       	mov    edi,0x4
    4174:	8b 00                	mov    eax,DWORD PTR [rax]
    4176:	39 f8                	cmp    eax,edi
    4178:	0f 4e f8             	cmovle edi,eax
    417b:	85 c0                	test   eax,eax
    417d:	0f 8e 2d 01 00 00    	jle    42b0 <_Z17get_current_statem+0x180>
    4183:	48 8b 15 56 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2e56]        # 6fe0 <g_page_pool@@Base-0xaff60>
    418a:	8d 48 ff             	lea    ecx,[rax-0x1]
    418d:	48 8d 42 08          	lea    rax,[rdx+0x8]
    4191:	48 8d 34 c8          	lea    rsi,[rax+rcx*8]
    4195:	31 c9                	xor    ecx,ecx
    4197:	eb 13                	jmp    41ac <_Z17get_current_statem+0x7c>
    4199:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    41a0:	48 39 f0             	cmp    rax,rsi
    41a3:	48 89 c2             	mov    rdx,rax
    41a6:	74 19                	je     41c1 <_Z17get_current_statem+0x91>
    41a8:	48 83 c0 08          	add    rax,0x8
    41ac:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    41af:	48 85 d2             	test   rdx,rdx
    41b2:	74 ec                	je     41a0 <_Z17get_current_statem+0x70>
    41b4:	0f b7 12             	movzx  edx,WORD PTR [rdx]
    41b7:	01 d1                	add    ecx,edx
    41b9:	48 39 f0             	cmp    rax,rsi
    41bc:	48 89 c2             	mov    rdx,rax
    41bf:	75 e7                	jne    41a8 <_Z17get_current_statem+0x78>
    41c1:	48 8b 05 e0 2d 00 00 	mov    rax,QWORD PTR [rip+0x2de0]        # 6fa8 <g_avg_fragmentation@@Base-0xaff18>
    41c8:	c5 f9 6e 00          	vmovd  xmm0,DWORD PTR [rax]
    41cc:	c5 fa 10 0d b8 0e 00 	vmovss xmm1,DWORD PTR [rip+0xeb8]        # 508c <_fini+0x7f8>
    41d3:	00 
    41d4:	c5 f8 2f c8          	vcomiss xmm1,xmm0
    41d8:	77 1a                	ja     41f4 <_Z17get_current_statem+0xc4>
    41da:	c5 fa 10 0d f6 0e 00 	vmovss xmm1,DWORD PTR [rip+0xef6]        # 50d8 <_fini+0x844>
    41e1:	00 
    41e2:	c5 f8 2f c8          	vcomiss xmm1,xmm0
    41e6:	0f 86 94 00 00 00    	jbe    4280 <_Z17get_current_statem+0x150>
    41ec:	47 8d 44 89 05       	lea    r8d,[r9+r9*4+0x5]
    41f1:	45 01 c0             	add    r8d,r8d
    41f4:	89 c8                	mov    eax,ecx
    41f6:	8d 77 01             	lea    esi,[rdi+0x1]
    41f9:	99                   	cdq
    41fa:	f7 fe                	idiv   esi
    41fc:	48 63 d0             	movsxd rdx,eax
    41ff:	c1 f8 1f             	sar    eax,0x1f
    4202:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
    4209:	48 c1 fa 22          	sar    rdx,0x22
    420d:	29 c2                	sub    edx,eax
    420f:	b8 09 00 00 00       	mov    eax,0x9
    4214:	39 c2                	cmp    edx,eax
    4216:	0f 4f d0             	cmovg  edx,eax
    4219:	b8 03 00 00 00       	mov    eax,0x3
    421e:	44 01 c2             	add    edx,r8d
    4221:	8d 14 92             	lea    edx,[rdx+rdx*4]
    4224:	c1 e2 02             	shl    edx,0x2
    4227:	83 f9 64             	cmp    ecx,0x64
    422a:	7e 14                	jle    4240 <_Z17get_current_statem+0x110>
    422c:	01 d0                	add    eax,edx
    422e:	8d 04 80             	lea    eax,[rax+rax*4]
    4231:	01 f8                	add    eax,edi
    4233:	8d 04 40             	lea    eax,[rax+rax*2]
    4236:	c3                   	ret
    4237:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    423e:	00 00 
    4240:	83 f9 0a             	cmp    ecx,0xa
    4243:	b8 02 00 00 00       	mov    eax,0x2
    4248:	7f e2                	jg     422c <_Z17get_current_statem+0xfc>
    424a:	31 c0                	xor    eax,eax
    424c:	85 c9                	test   ecx,ecx
    424e:	0f 9f c0             	setg   al
    4251:	01 d0                	add    eax,edx
    4253:	8d 04 80             	lea    eax,[rax+rax*4]
    4256:	01 f8                	add    eax,edi
    4258:	8d 04 40             	lea    eax,[rax+rax*2]
    425b:	c3                   	ret
    425c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    4260:	48 81 ff 00 04 00 00 	cmp    rdi,0x400
    4267:	77 27                	ja     4290 <_Z17get_current_statem+0x160>
    4269:	ba b0 04 00 00       	mov    edx,0x4b0
    426e:	41 b8 3c 00 00 00    	mov    r8d,0x3c
    4274:	41 b9 06 00 00 00    	mov    r9d,0x6
    427a:	e9 e9 fe ff ff       	jmp    4168 <_Z17get_current_statem+0x38>
    427f:	90                   	nop
    4280:	47 8d 44 89 0a       	lea    r8d,[r9+r9*4+0xa]
    4285:	45 01 c0             	add    r8d,r8d
    4288:	e9 67 ff ff ff       	jmp    41f4 <_Z17get_current_statem+0xc4>
    428d:	0f 1f 00             	nop    DWORD PTR [rax]
    4290:	ba 08 07 00 00       	mov    edx,0x708
    4295:	41 b8 5a 00 00 00    	mov    r8d,0x5a
    429b:	41 b9 09 00 00 00    	mov    r9d,0x9
    42a1:	e9 c2 fe ff ff       	jmp    4168 <_Z17get_current_statem+0x38>
    42a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    42ad:	00 00 00 
    42b0:	48 8b 05 f1 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cf1]        # 6fa8 <g_avg_fragmentation@@Base-0xaff18>
    42b7:	31 c9                	xor    ecx,ecx
    42b9:	c5 f9 6e 00          	vmovd  xmm0,DWORD PTR [rax]
    42bd:	c5 fa 10 0d c7 0d 00 	vmovss xmm1,DWORD PTR [rip+0xdc7]        # 508c <_fini+0x7f8>
    42c4:	00 
    42c5:	c5 f8 2f c8          	vcomiss xmm1,xmm0
    42c9:	0f 87 7b ff ff ff    	ja     424a <_Z17get_current_statem+0x11a>
    42cf:	c5 fa 10 0d 01 0e 00 	vmovss xmm1,DWORD PTR [rip+0xe01]        # 50d8 <_fini+0x844>
    42d6:	00 
    42d7:	c5 f8 2f c8          	vcomiss xmm1,xmm0
    42db:	76 11                	jbe    42ee <_Z17get_current_statem+0x1be>
    42dd:	41 8d 51 01          	lea    edx,[r9+0x1]
    42e1:	31 c9                	xor    ecx,ecx
    42e3:	69 d2 c8 00 00 00    	imul   edx,edx,0xc8
    42e9:	e9 5c ff ff ff       	jmp    424a <_Z17get_current_statem+0x11a>
    42ee:	41 83 c1 02          	add    r9d,0x2
    42f2:	31 c9                	xor    ecx,ecx
    42f4:	41 69 d1 c8 00 00 00 	imul   edx,r9d,0xc8
    42fb:	e9 4a ff ff ff       	jmp    424a <_Z17get_current_statem+0x11a>

0000000000004300 <_Z12save_q_tablePKc>:
    4300:	53                   	push   rbx
    4301:	48 8d 35 03 0d 00 00 	lea    rsi,[rip+0xd03]        # 500b <_fini+0x777>
    4308:	e8 93 de ff ff       	call   21a0 <fopen@plt>
    430d:	ba 20 bf 02 00       	mov    edx,0x2bf20
    4312:	be 04 00 00 00       	mov    esi,0x4
    4317:	48 8b 3d 72 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c72]        # 6f90 <Q@@Base-0x2b0>
    431e:	48 89 c3             	mov    rbx,rax
    4321:	48 89 c1             	mov    rcx,rax
    4324:	e8 47 e0 ff ff       	call   2370 <fwrite@plt>
    4329:	48 89 df             	mov    rdi,rbx
    432c:	5b                   	pop    rbx
    432d:	e9 3e de ff ff       	jmp    2170 <fclose@plt>
    4332:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    4339:	00 00 00 00 
    433d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000004340 <_Z13train_q_tablev>:
    4340:	41 57                	push   r15
    4342:	ba 80 fc 0a 00       	mov    edx,0xafc80
    4347:	31 f6                	xor    esi,esi
    4349:	41 56                	push   r14
    434b:	41 55                	push   r13
    434d:	41 54                	push   r12
    434f:	55                   	push   rbp
    4350:	53                   	push   rbx
    4351:	48 83 ec 38          	sub    rsp,0x38
    4355:	48 8b 05 9c 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b9c]        # 6ef8 <g_alpha@@Base-0x2dc>
    435c:	48 8b 3d 2d 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c2d]        # 6f90 <Q@@Base-0x2b0>
    4363:	c5 fa 10 38          	vmovss xmm7,DWORD PTR [rax]
    4367:	48 8b 05 f2 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bf2]        # 6f60 <g_gamma@@Base-0x270>
    436e:	c5 fa 11 7c 24 0c    	vmovss DWORD PTR [rsp+0xc],xmm7
    4374:	c5 fa 10 38          	vmovss xmm7,DWORD PTR [rax]
    4378:	48 8b 05 99 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b99]        # 6f18 <g_epsilon@@Base-0x2b4>
    437f:	c5 fa 11 7c 24 10    	vmovss DWORD PTR [rsp+0x10],xmm7
    4385:	c5 fa 10 38          	vmovss xmm7,DWORD PTR [rax]
    4389:	48 8b 05 b0 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bb0]        # 6f40 <g_epsilon_decay@@Base-0x288>
    4390:	c5 fa 11 7c 24 08    	vmovss DWORD PTR [rsp+0x8],xmm7
    4396:	c5 fa 10 38          	vmovss xmm7,DWORD PTR [rax]
    439a:	48 8b 05 c7 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bc7]        # 6f68 <g_epsilon_min@@Base-0x25c>
    43a1:	c5 fa 11 7c 24 18    	vmovss DWORD PTR [rsp+0x18],xmm7
    43a7:	c5 fa 10 38          	vmovss xmm7,DWORD PTR [rax]
    43ab:	c5 fa 11 7c 24 1c    	vmovss DWORD PTR [rsp+0x1c],xmm7
    43b1:	e8 4a dd ff ff       	call   2100 <memset@plt>
    43b6:	31 ff                	xor    edi,edi
    43b8:	e8 83 dd ff ff       	call   2140 <time@plt>
    43bd:	89 c7                	mov    edi,eax
    43bf:	e8 9c dd ff ff       	call   2160 <srand@plt>
    43c4:	48 8b 05 3d 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b3d]        # 6f08 <g_total_episode@@Base-0x2b8>
    43cb:	8b 10                	mov    edx,DWORD PTR [rax]
    43cd:	85 d2                	test   edx,edx
    43cf:	0f 8e f6 00 00 00    	jle    44cb <_Z13train_q_tablev+0x18b>
    43d5:	45 31 ed             	xor    r13d,r13d
    43d8:	48 8b 1d d9 2b 00 00 	mov    rbx,QWORD PTR [rip+0x2bd9]        # 6fb8 <step_per_episode@@Base-0x204>
    43df:	44 89 ed             	mov    ebp,r13d
    43e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    43e8:	e8 03 df ff ff       	call   22f0 <_Z15init_simulationv@plt>
    43ed:	e8 8e dd ff ff       	call   2180 <_Z16get_random_statev@plt>
    43f2:	41 89 c4             	mov    r12d,eax
    43f5:	e8 96 dc ff ff       	call   2090 <rand@plt>
    43fa:	89 c1                	mov    ecx,eax
    43fc:	c1 f9 1f             	sar    ecx,0x1f
    43ff:	c1 e9 16             	shr    ecx,0x16
    4402:	8d 14 08             	lea    edx,[rax+rcx*1]
    4405:	8b 03                	mov    eax,DWORD PTR [rbx]
    4407:	81 e2 ff 03 00 00    	and    edx,0x3ff
    440d:	29 ca                	sub    edx,ecx
    440f:	83 c2 01             	add    edx,0x1
    4412:	85 c0                	test   eax,eax
    4414:	48 63 d2             	movsxd rdx,edx
    4417:	7e 71                	jle    448a <_Z13train_q_tablev+0x14a>
    4419:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    441d:	45 31 ed             	xor    r13d,r13d
    4420:	4c 8d 7c 24 2c       	lea    r15,[rsp+0x2c]
    4425:	4c 8d 74 24 28       	lea    r14,[rsp+0x28]
    442a:	89 6c 24 14          	mov    DWORD PTR [rsp+0x14],ebp
    442e:	44 89 e5             	mov    ebp,r12d
    4431:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    4438:	c5 fa 10 44 24 08    	vmovss xmm0,DWORD PTR [rsp+0x8]
    443e:	89 ef                	mov    edi,ebp
    4440:	41 83 c5 01          	add    r13d,0x1
    4444:	e8 57 de ff ff       	call   22a0 <_Z13select_actionif@plt>
    4449:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    444d:	4c 89 fa             	mov    rdx,r15
    4450:	4c 89 f6             	mov    rsi,r14
    4453:	89 c7                	mov    edi,eax
    4455:	41 89 c4             	mov    r12d,eax
    4458:	e8 93 dc ff ff       	call   20f0 <_Z15simulate_actioniPfPim@plt>
    445d:	c5 fa 10 54 24 10    	vmovss xmm2,DWORD PTR [rsp+0x10]
    4463:	89 ef                	mov    edi,ebp
    4465:	44 89 e6             	mov    esi,r12d
    4468:	c5 fa 10 4c 24 0c    	vmovss xmm1,DWORD PTR [rsp+0xc]
    446e:	8b 54 24 2c          	mov    edx,DWORD PTR [rsp+0x2c]
    4472:	c5 fa 10 44 24 28    	vmovss xmm0,DWORD PTR [rsp+0x28]
    4478:	e8 a3 dd ff ff       	call   2220 <_Z14update_q_tableiififf@plt>
    447d:	44 39 2b             	cmp    DWORD PTR [rbx],r13d
    4480:	8b 6c 24 2c          	mov    ebp,DWORD PTR [rsp+0x2c]
    4484:	7f b2                	jg     4438 <_Z13train_q_tablev+0xf8>
    4486:	8b 6c 24 14          	mov    ebp,DWORD PTR [rsp+0x14]
    448a:	c5 fa 10 5c 24 18    	vmovss xmm3,DWORD PTR [rsp+0x18]
    4490:	c5 e2 59 44 24 08    	vmulss xmm0,xmm3,DWORD PTR [rsp+0x8]
    4496:	69 c5 d5 78 e9 26    	imul   eax,ebp,0x26e978d5
    449c:	c5 fa 10 74 24 1c    	vmovss xmm6,DWORD PTR [rsp+0x1c]
    44a2:	c4 e3 7b f0 c0 03    	rorx   eax,eax,0x3
    44a8:	3d 37 89 41 00       	cmp    eax,0x418937
    44ad:	c5 ca 5f e8          	vmaxss xmm5,xmm6,xmm0
    44b1:	c5 fa 11 6c 24 08    	vmovss DWORD PTR [rsp+0x8],xmm5
    44b7:	76 3f                	jbe    44f8 <_Z13train_q_tablev+0x1b8>
    44b9:	48 8b 05 48 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a48]        # 6f08 <g_total_episode@@Base-0x2b8>
    44c0:	83 c5 01             	add    ebp,0x1
    44c3:	39 28                	cmp    DWORD PTR [rax],ebp
    44c5:	0f 8f 1d ff ff ff    	jg     43e8 <_Z13train_q_tablev+0xa8>
    44cb:	48 8d 3d 6e 0b 00 00 	lea    rdi,[rip+0xb6e]        # 5040 <_fini+0x7ac>
    44d2:	e8 59 dd ff ff       	call   2230 <puts@plt>
    44d7:	48 83 c4 38          	add    rsp,0x38
    44db:	48 8d 3d 1e 0b 00 00 	lea    rdi,[rip+0xb1e]        # 5000 <_fini+0x76c>
    44e2:	5b                   	pop    rbx
    44e3:	5d                   	pop    rbp
    44e4:	41 5c                	pop    r12
    44e6:	41 5d                	pop    r13
    44e8:	41 5e                	pop    r14
    44ea:	41 5f                	pop    r15
    44ec:	e9 3f db ff ff       	jmp    2030 <_Z12save_q_tablePKc@plt>
    44f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    44f8:	89 ee                	mov    esi,ebp
    44fa:	b8 01 00 00 00       	mov    eax,0x1
    44ff:	c5 d2 5a c5          	vcvtss2sd xmm0,xmm5,xmm5
    4503:	83 c5 01             	add    ebp,0x1
    4506:	48 8d 3d 01 0b 00 00 	lea    rdi,[rip+0xb01]        # 500e <_fini+0x77a>
    450d:	e8 2e db ff ff       	call   2040 <printf@plt>
    4512:	48 8b 05 ef 29 00 00 	mov    rax,QWORD PTR [rip+0x29ef]        # 6f08 <g_total_episode@@Base-0x2b8>
    4519:	39 28                	cmp    DWORD PTR [rax],ebp
    451b:	0f 8f c7 fe ff ff    	jg     43e8 <_Z13train_q_tablev+0xa8>
    4521:	eb a8                	jmp    44cb <_Z13train_q_tablev+0x18b>
    4523:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    452a:	00 00 00 00 
    452e:	66 90                	xchg   ax,ax

0000000000004530 <_Z12load_q_tablePKc>:
    4530:	53                   	push   rbx
    4531:	48 8d 35 f0 0a 00 00 	lea    rsi,[rip+0xaf0]        # 5028 <_fini+0x794>
    4538:	e8 63 dc ff ff       	call   21a0 <fopen@plt>
    453d:	48 85 c0             	test   rax,rax
    4540:	74 25                	je     4567 <_Z12load_q_tablePKc+0x37>
    4542:	48 89 c3             	mov    rbx,rax
    4545:	48 89 c1             	mov    rcx,rax
    4548:	ba 20 bf 02 00       	mov    edx,0x2bf20
    454d:	be 04 00 00 00       	mov    esi,0x4
    4552:	48 8b 3d 37 2a 00 00 	mov    rdi,QWORD PTR [rip+0x2a37]        # 6f90 <Q@@Base-0x2b0>
    4559:	e8 a2 dc ff ff       	call   2200 <fread@plt>
    455e:	48 89 df             	mov    rdi,rbx
    4561:	5b                   	pop    rbx
    4562:	e9 09 dc ff ff       	jmp    2170 <fclose@plt>
    4567:	48 8b 3d 22 2a 00 00 	mov    rdi,QWORD PTR [rip+0x2a22]        # 6f90 <Q@@Base-0x2b0>
    456e:	ba 80 fc 0a 00       	mov    edx,0xafc80
    4573:	31 f6                	xor    esi,esi
    4575:	5b                   	pop    rbx
    4576:	e9 85 db ff ff       	jmp    2100 <memset@plt>
    457b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000004580 <_Z22compaction_thread_funcPv>:
    4580:	41 57                	push   r15
    4582:	41 56                	push   r14
    4584:	41 55                	push   r13
    4586:	41 54                	push   r12
    4588:	55                   	push   rbp
    4589:	53                   	push   rbx
    458a:	48 83 ec 18          	sub    rsp,0x18
    458e:	4c 8b 3d 33 2a 00 00 	mov    r15,QWORD PTR [rip+0x2a33]        # 6fc8 <g_compaction_running@@Base-0x210>
    4595:	0f 1f 00             	nop    DWORD PTR [rax]
    4598:	41 0f b6 07          	movzx  eax,BYTE PTR [r15]
    459c:	84 c0                	test   al,al
    459e:	0f 84 49 01 00 00    	je     46ed <_Z22compaction_thread_funcPv+0x16d>
    45a4:	bf 40 0d 03 00       	mov    edi,0x30d40
    45a9:	e8 32 dc ff ff       	call   21e0 <usleep@plt>
    45ae:	48 8b 05 a3 29 00 00 	mov    rax,QWORD PTR [rip+0x29a3]        # 6f58 <g_page_count@@Base-0xaffc8>
    45b5:	48 63 00             	movsxd rax,DWORD PTR [rax]
    45b8:	85 c0                	test   eax,eax
    45ba:	74 dc                	je     4598 <_Z22compaction_thread_funcPv+0x18>
    45bc:	7e da                	jle    4598 <_Z22compaction_thread_funcPv+0x18>
    45be:	48 8b 2d 1b 2a 00 00 	mov    rbp,QWORD PTR [rip+0x2a1b]        # 6fe0 <g_page_pool@@Base-0xaff60>
    45c5:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [rsp+0xc],0x0
    45cc:	00 
    45cd:	45 31 f6             	xor    r14d,r14d
    45d0:	4c 8d 64 c5 00       	lea    r12,[rbp+rax*8+0x0]
    45d5:	e9 8f 00 00 00       	jmp    4669 <_Z22compaction_thread_funcPv+0xe9>
    45da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    45e0:	e8 6b dc ff ff       	call   2250 <compute_max_free_run@plt>
    45e5:	89 c1                	mov    ecx,eax
    45e7:	87 4b 04             	xchg   DWORD PTR [rbx+0x4],ecx
    45ea:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
    45ee:	c5 fa 10 25 e6 0a 00 	vmovss xmm4,DWORD PTR [rip+0xae6]        # 50dc <_fini+0x848>
    45f5:	00 
    45f6:	89 c0                	mov    eax,eax
    45f8:	c4 c1 6a 2a cd       	vcvtsi2ss xmm1,xmm2,r13d
    45fd:	48 89 df             	mov    rdi,rbx
    4600:	c4 e1 ea 2a c0       	vcvtsi2ss xmm0,xmm2,rax
    4605:	c5 fa 5e c1          	vdivss xmm0,xmm0,xmm1
    4609:	c5 da 5c d8          	vsubss xmm3,xmm4,xmm0
    460d:	c5 fa 11 5c 24 08    	vmovss DWORD PTR [rsp+0x8],xmm3
    4613:	e8 98 da ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    4618:	c5 fa 10 5c 24 08    	vmovss xmm3,DWORD PTR [rsp+0x8]
    461e:	c5 f8 2f 1d ba 0a 00 	vcomiss xmm3,DWORD PTR [rip+0xaba]        # 50e0 <_fini+0x84c>
    4625:	00 
    4626:	0f 87 d4 00 00 00    	ja     4700 <_Z22compaction_thread_funcPv+0x180>
    462c:	c5 fa 10 74 24 0c    	vmovss xmm6,DWORD PTR [rsp+0xc]
    4632:	c5 ca 58 6c 24 08    	vaddss xmm5,xmm6,DWORD PTR [rsp+0x8]
    4638:	41 83 c6 01          	add    r14d,0x1
    463c:	c5 fa 11 6c 24 0c    	vmovss DWORD PTR [rsp+0xc],xmm5
    4642:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    4649:	00 00 00 00 
    464d:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    4654:	00 00 00 00 
    4658:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    465f:	00 
    4660:	48 83 c5 08          	add    rbp,0x8
    4664:	4c 39 e5             	cmp    rbp,r12
    4667:	74 4f                	je     46b8 <_Z22compaction_thread_funcPv+0x138>
    4669:	48 8b 5d 00          	mov    rbx,QWORD PTR [rbp+0x0]
    466d:	48 85 db             	test   rbx,rbx
    4670:	74 ee                	je     4660 <_Z22compaction_thread_funcPv+0xe0>
    4672:	80 7b 0d 00          	cmp    BYTE PTR [rbx+0xd],0x0
    4676:	75 e8                	jne    4660 <_Z22compaction_thread_funcPv+0xe0>
    4678:	48 89 df             	mov    rdi,rbx
    467b:	e8 00 dc ff ff       	call   2280 <_Z9lock_pageP21page_metadata_entry_t@plt>
    4680:	44 0f b7 2b          	movzx  r13d,WORD PTR [rbx]
    4684:	66 45 85 ed          	test   r13w,r13w
    4688:	0f 84 82 00 00 00    	je     4710 <_Z22compaction_thread_funcPv+0x190>
    468e:	48 83 7b 28 00       	cmp    QWORD PTR [rbx+0x28],0x0
    4693:	48 89 df             	mov    rdi,rbx
    4696:	74 0b                	je     46a3 <_Z22compaction_thread_funcPv+0x123>
    4698:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
    469b:	85 c0                	test   eax,eax
    469d:	0f 85 3d ff ff ff    	jne    45e0 <_Z22compaction_thread_funcPv+0x60>
    46a3:	e8 08 da ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    46a8:	48 83 c5 08          	add    rbp,0x8
    46ac:	4c 39 e5             	cmp    rbp,r12
    46af:	75 b8                	jne    4669 <_Z22compaction_thread_funcPv+0xe9>
    46b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    46b8:	45 85 f6             	test   r14d,r14d
    46bb:	0f 84 d7 fe ff ff    	je     4598 <_Z22compaction_thread_funcPv+0x18>
    46c1:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
    46c5:	c4 c1 52 2a c6       	vcvtsi2ss xmm0,xmm5,r14d
    46ca:	c5 fa 10 7c 24 0c    	vmovss xmm7,DWORD PTR [rsp+0xc]
    46d0:	48 8b 15 d1 28 00 00 	mov    rdx,QWORD PTR [rip+0x28d1]        # 6fa8 <g_avg_fragmentation@@Base-0xaff18>
    46d7:	c5 c2 5e f0          	vdivss xmm6,xmm7,xmm0
    46db:	c5 f9 7e f0          	vmovd  eax,xmm6
    46df:	89 02                	mov    DWORD PTR [rdx],eax
    46e1:	41 0f b6 07          	movzx  eax,BYTE PTR [r15]
    46e5:	84 c0                	test   al,al
    46e7:	0f 85 b7 fe ff ff    	jne    45a4 <_Z22compaction_thread_funcPv+0x24>
    46ed:	48 83 c4 18          	add    rsp,0x18
    46f1:	31 c0                	xor    eax,eax
    46f3:	5b                   	pop    rbx
    46f4:	5d                   	pop    rbp
    46f5:	41 5c                	pop    r12
    46f7:	41 5d                	pop    r13
    46f9:	41 5e                	pop    r14
    46fb:	41 5f                	pop    r15
    46fd:	c3                   	ret
    46fe:	66 90                	xchg   ax,ax
    4700:	48 89 df             	mov    rdi,rbx
    4703:	e8 08 db ff ff       	call   2210 <_Z12compact_pageP21page_metadata_entry_t@plt>
    4708:	e9 1f ff ff ff       	jmp    462c <_Z22compaction_thread_funcPv+0xac>
    470d:	0f 1f 00             	nop    DWORD PTR [rax]
    4710:	31 c0                	xor    eax,eax
    4712:	87 43 04             	xchg   DWORD PTR [rbx+0x4],eax
    4715:	48 89 df             	mov    rdi,rbx
    4718:	e8 93 d9 ff ff       	call   20b0 <_Z11unlock_pageP21page_metadata_entry_t@plt>
    471d:	e9 3e ff ff ff       	jmp    4660 <_Z22compaction_thread_funcPv+0xe0>
    4722:	48 89 c7             	mov    rdi,rax
    4725:	e9 76 dc ff ff       	jmp    23a0 <_Z22compaction_thread_funcPv.cold>
    472a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000004730 <_Z23start_compaction_threadv>:
    4730:	48 83 3d 48 a8 0b 08 	cmp    QWORD PTR [rip+0x80ba848],0x0        # 80bef80 <_ZL17compaction_thread>
    4737:	00 
    4738:	74 06                	je     4740 <_Z23start_compaction_threadv+0x10>
    473a:	c3                   	ret
    473b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    4740:	53                   	push   rbx
    4741:	48 8b 1d 80 28 00 00 	mov    rbx,QWORD PTR [rip+0x2880]        # 6fc8 <g_compaction_running@@Base-0x210>
    4748:	31 c9                	xor    ecx,ecx
    474a:	31 f6                	xor    esi,esi
    474c:	48 8d 3d 2d a8 0b 08 	lea    rdi,[rip+0x80ba82d]        # 80bef80 <_ZL17compaction_thread>
    4753:	c6 03 01             	mov    BYTE PTR [rbx],0x1
    4756:	48 8b 15 f3 27 00 00 	mov    rdx,QWORD PTR [rip+0x27f3]        # 6f50 <_Z22compaction_thread_funcPv@@Base+0x29d0>
    475d:	e8 ee db ff ff       	call   2350 <pthread_create@plt>
    4762:	85 c0                	test   eax,eax
    4764:	75 0a                	jne    4770 <_Z23start_compaction_threadv+0x40>
    4766:	5b                   	pop    rbx
    4767:	c3                   	ret
    4768:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    476f:	00 
    4770:	c6 03 00             	mov    BYTE PTR [rbx],0x0
    4773:	5b                   	pop    rbx
    4774:	c3                   	ret
    4775:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    477c:	00 00 00 00 

0000000000004780 <_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIZ32ensure_compaction_thread_startedvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS5_ENUlvE_4_FUNEv>:
    4780:	48 83 ec 08          	sub    rsp,0x8
    4784:	e8 27 da ff ff       	call   21b0 <_Z23start_compaction_threadv@plt>
    4789:	48 8b 05 90 27 00 00 	mov    rax,QWORD PTR [rip+0x2790]        # 6f20 <compaction_started@@Base-0x80b8058>
    4790:	c6 00 01             	mov    BYTE PTR [rax],0x1
    4793:	48 83 c4 08          	add    rsp,0x8
    4797:	c3                   	ret
    4798:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    479f:	00 

00000000000047a0 <_Z22stop_compaction_threadv>:
    47a0:	48 8b 05 21 28 00 00 	mov    rax,QWORD PTR [rip+0x2821]        # 6fc8 <g_compaction_running@@Base-0x210>
    47a7:	c6 00 00             	mov    BYTE PTR [rax],0x0
    47aa:	c3                   	ret
    47ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000047b0 <_Z22join_compaction_threadv>:
    47b0:	48 8b 3d c9 a7 0b 08 	mov    rdi,QWORD PTR [rip+0x80ba7c9]        # 80bef80 <_ZL17compaction_thread>
    47b7:	48 85 ff             	test   rdi,rdi
    47ba:	75 04                	jne    47c0 <_Z22join_compaction_threadv+0x10>
    47bc:	c3                   	ret
    47bd:	0f 1f 00             	nop    DWORD PTR [rax]
    47c0:	48 83 ec 08          	sub    rsp,0x8
    47c4:	31 f6                	xor    esi,esi
    47c6:	e8 65 d9 ff ff       	call   2130 <pthread_join@plt>
    47cb:	48 c7 05 aa a7 0b 08 	mov    QWORD PTR [rip+0x80ba7aa],0x0        # 80bef80 <_ZL17compaction_thread>
    47d2:	00 00 00 00 
    47d6:	48 83 c4 08          	add    rsp,0x8
    47da:	c3                   	ret
    47db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000047e0 <_Z21is_compaction_runningv>:
    47e0:	48 8b 05 e1 27 00 00 	mov    rax,QWORD PTR [rip+0x27e1]        # 6fc8 <g_compaction_running@@Base-0x210>
    47e7:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    47ea:	84 c0                	test   al,al
    47ec:	0f 95 c0             	setne  al
    47ef:	c3                   	ret

00000000000047f0 <_Z32ensure_compaction_thread_startedv>:
    47f0:	48 8b 05 29 27 00 00 	mov    rax,QWORD PTR [rip+0x2729]        # 6f20 <compaction_started@@Base-0x80b8058>
    47f7:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    47fa:	84 c0                	test   al,al
    47fc:	74 02                	je     4800 <_Z32ensure_compaction_thread_startedv+0x10>
    47fe:	c3                   	ret
    47ff:	90                   	nop
    4800:	48 83 ec 28          	sub    rsp,0x28
    4804:	48 8d 44 24 17       	lea    rax,[rsp+0x17]
    4809:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    480e:	66 48 8d 3d 12 27 00 	data16 lea rdi,[rip+0x2712]        # 6f28 <_ZSt15__once_callable@GLIBCXX_3.4.11>
    4815:	00 
    4816:	66 66 48 e8 b2 da ff 	data16 data16 rex.W call 22d0 <__tls_get_addr@plt>
    481d:	ff 
    481e:	48 8d 54 24 18       	lea    rdx,[rsp+0x18]
    4823:	48 89 10             	mov    QWORD PTR [rax],rdx
    4826:	66 48 8d 3d 4a 27 00 	data16 lea rdi,[rip+0x274a]        # 6f78 <_ZSt11__once_call@GLIBCXX_3.4.11>
    482d:	00 
    482e:	66 66 48 e8 9a da ff 	data16 data16 rex.W call 22d0 <__tls_get_addr@plt>
    4835:	ff 
    4836:	48 8b 35 73 27 00 00 	mov    rsi,QWORD PTR [rip+0x2773]        # 6fb0 <__once_proxy@GLIBCXX_3.4.11>
    483d:	48 8d 0d 3c ff ff ff 	lea    rcx,[rip+0xffffffffffffff3c]        # 4780 <_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIZ32ensure_compaction_thread_startedvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS5_ENUlvE_4_FUNEv>
    4844:	48 8d 3d 31 a7 0b 08 	lea    rdi,[rip+0x80ba731]        # 80bef7c <_ZL21compaction_start_flag>
    484b:	48 89 08             	mov    QWORD PTR [rax],rcx
    484e:	e8 fd d8 ff ff       	call   2150 <pthread_once@plt>
    4853:	85 c0                	test   eax,eax
    4855:	0f 85 57 db ff ff    	jne    23b2 <_Z32ensure_compaction_thread_startedv.cold>
    485b:	66 48 8d 3d c5 26 00 	data16 lea rdi,[rip+0x26c5]        # 6f28 <_ZSt15__once_callable@GLIBCXX_3.4.11>
    4862:	00 
    4863:	66 66 48 e8 65 da ff 	data16 data16 rex.W call 22d0 <__tls_get_addr@plt>
    486a:	ff 
    486b:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    4872:	66 48 8d 3d fe 26 00 	data16 lea rdi,[rip+0x26fe]        # 6f78 <_ZSt11__once_call@GLIBCXX_3.4.11>
    4879:	00 
    487a:	66 66 48 e8 4e da ff 	data16 data16 rex.W call 22d0 <__tls_get_addr@plt>
    4881:	ff 
    4882:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    4889:	48 83 c4 28          	add    rsp,0x28
    488d:	c3                   	ret
    488e:	e9 26 db ff ff       	jmp    23b9 <_Z32ensure_compaction_thread_startedv.cold+0x7>

Disassembly of section .fini:

0000000000004894 <_fini>:
    4894:	48 83 ec 08          	sub    rsp,0x8
    4898:	48 83 c4 08          	add    rsp,0x8
    489c:	c3                   	ret
