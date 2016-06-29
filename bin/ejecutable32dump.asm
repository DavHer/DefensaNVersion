
ejecutable64:     file format elf64-x86-64


Disassembly of section .init:

0000000000400630 <_init>:
  400630:	48 83 ec 08          	sub    $0x8,%rsp
  400634:	48 8b 05 bd 09 20 00 	mov    0x2009bd(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40063b:	48 85 c0             	test   %rax,%rax
  40063e:	74 05                	je     400645 <_init+0x15>
  400640:	e8 4b 00 00 00       	callq  400690 <__gmon_start__@plt>
  400645:	48 83 c4 08          	add    $0x8,%rsp
  400649:	c3                   	retq   

Disassembly of section .plt:

0000000000400650 <puts@plt-0x10>:
  400650:	ff 35 b2 09 20 00    	pushq  0x2009b2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400656:	ff 25 b4 09 20 00    	jmpq   *0x2009b4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40065c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400660 <puts@plt>:
  400660:	ff 25 b2 09 20 00    	jmpq   *0x2009b2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400666:	68 00 00 00 00       	pushq  $0x0
  40066b:	e9 e0 ff ff ff       	jmpq   400650 <_init+0x20>

0000000000400670 <printf@plt>:
  400670:	ff 25 aa 09 20 00    	jmpq   *0x2009aa(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400676:	68 01 00 00 00       	pushq  $0x1
  40067b:	e9 d0 ff ff ff       	jmpq   400650 <_init+0x20>

0000000000400680 <__libc_start_main@plt>:
  400680:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400686:	68 02 00 00 00       	pushq  $0x2
  40068b:	e9 c0 ff ff ff       	jmpq   400650 <_init+0x20>

0000000000400690 <__gmon_start__@plt>:
  400690:	ff 25 9a 09 20 00    	jmpq   *0x20099a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400696:	68 03 00 00 00       	pushq  $0x3
  40069b:	e9 b0 ff ff ff       	jmpq   400650 <_init+0x20>

00000000004006a0 <time@plt>:
  4006a0:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4006a6:	68 04 00 00 00       	pushq  $0x4
  4006ab:	e9 a0 ff ff ff       	jmpq   400650 <_init+0x20>

00000000004006b0 <malloc@plt>:
  4006b0:	ff 25 8a 09 20 00    	jmpq   *0x20098a(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4006b6:	68 05 00 00 00       	pushq  $0x5
  4006bb:	e9 90 ff ff ff       	jmpq   400650 <_init+0x20>

00000000004006c0 <perror@plt>:
  4006c0:	ff 25 82 09 20 00    	jmpq   *0x200982(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4006c6:	68 06 00 00 00       	pushq  $0x6
  4006cb:	e9 80 ff ff ff       	jmpq   400650 <_init+0x20>

00000000004006d0 <shmat@plt>:
  4006d0:	ff 25 7a 09 20 00    	jmpq   *0x20097a(%rip)        # 601050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4006d6:	68 07 00 00 00       	pushq  $0x7
  4006db:	e9 70 ff ff ff       	jmpq   400650 <_init+0x20>

00000000004006e0 <shmget@plt>:
  4006e0:	ff 25 72 09 20 00    	jmpq   *0x200972(%rip)        # 601058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4006e6:	68 08 00 00 00       	pushq  $0x8
  4006eb:	e9 60 ff ff ff       	jmpq   400650 <_init+0x20>

00000000004006f0 <atoi@plt>:
  4006f0:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 601060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4006f6:	68 09 00 00 00       	pushq  $0x9
  4006fb:	e9 50 ff ff ff       	jmpq   400650 <_init+0x20>

0000000000400700 <__isoc99_scanf@plt>:
  400700:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 601068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400706:	68 0a 00 00 00       	pushq  $0xa
  40070b:	e9 40 ff ff ff       	jmpq   400650 <_init+0x20>

0000000000400710 <sprintf@plt>:
  400710:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 601070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400716:	68 0b 00 00 00       	pushq  $0xb
  40071b:	e9 30 ff ff ff       	jmpq   400650 <_init+0x20>

0000000000400720 <exit@plt>:
  400720:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 601078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400726:	68 0c 00 00 00       	pushq  $0xc
  40072b:	e9 20 ff ff ff       	jmpq   400650 <_init+0x20>

Disassembly of section .text:

0000000000400730 <_start>:
  400730:	31 ed                	xor    %ebp,%ebp
  400732:	49 89 d1             	mov    %rdx,%r9
  400735:	5e                   	pop    %rsi
  400736:	48 89 e2             	mov    %rsp,%rdx
  400739:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40073d:	50                   	push   %rax
  40073e:	54                   	push   %rsp
  40073f:	49 c7 c0 e0 0a 40 00 	mov    $0x400ae0,%r8
  400746:	48 c7 c1 70 0a 40 00 	mov    $0x400a70,%rcx
  40074d:	48 c7 c7 63 09 40 00 	mov    $0x400963,%rdi
  400754:	e8 27 ff ff ff       	callq  400680 <__libc_start_main@plt>
  400759:	f4                   	hlt    
  40075a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400760 <deregister_tm_clones>:
  400760:	b8 97 10 60 00       	mov    $0x601097,%eax
  400765:	55                   	push   %rbp
  400766:	48 2d 90 10 60 00    	sub    $0x601090,%rax
  40076c:	48 83 f8 0e          	cmp    $0xe,%rax
  400770:	48 89 e5             	mov    %rsp,%rbp
  400773:	76 1b                	jbe    400790 <deregister_tm_clones+0x30>
  400775:	b8 00 00 00 00       	mov    $0x0,%eax
  40077a:	48 85 c0             	test   %rax,%rax
  40077d:	74 11                	je     400790 <deregister_tm_clones+0x30>
  40077f:	5d                   	pop    %rbp
  400780:	bf 90 10 60 00       	mov    $0x601090,%edi
  400785:	ff e0                	jmpq   *%rax
  400787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40078e:	00 00 
  400790:	5d                   	pop    %rbp
  400791:	c3                   	retq   
  400792:	0f 1f 40 00          	nopl   0x0(%rax)
  400796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40079d:	00 00 00 

00000000004007a0 <register_tm_clones>:
  4007a0:	be 90 10 60 00       	mov    $0x601090,%esi
  4007a5:	55                   	push   %rbp
  4007a6:	48 81 ee 90 10 60 00 	sub    $0x601090,%rsi
  4007ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4007b1:	48 89 e5             	mov    %rsp,%rbp
  4007b4:	48 89 f0             	mov    %rsi,%rax
  4007b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4007bb:	48 01 c6             	add    %rax,%rsi
  4007be:	48 d1 fe             	sar    %rsi
  4007c1:	74 15                	je     4007d8 <register_tm_clones+0x38>
  4007c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c8:	48 85 c0             	test   %rax,%rax
  4007cb:	74 0b                	je     4007d8 <register_tm_clones+0x38>
  4007cd:	5d                   	pop    %rbp
  4007ce:	bf 90 10 60 00       	mov    $0x601090,%edi
  4007d3:	ff e0                	jmpq   *%rax
  4007d5:	0f 1f 00             	nopl   (%rax)
  4007d8:	5d                   	pop    %rbp
  4007d9:	c3                   	retq   
  4007da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007e0 <__do_global_dtors_aux>:
  4007e0:	80 3d a9 08 20 00 00 	cmpb   $0x0,0x2008a9(%rip)        # 601090 <__TMC_END__>
  4007e7:	75 11                	jne    4007fa <__do_global_dtors_aux+0x1a>
  4007e9:	55                   	push   %rbp
  4007ea:	48 89 e5             	mov    %rsp,%rbp
  4007ed:	e8 6e ff ff ff       	callq  400760 <deregister_tm_clones>
  4007f2:	5d                   	pop    %rbp
  4007f3:	c6 05 96 08 20 00 01 	movb   $0x1,0x200896(%rip)        # 601090 <__TMC_END__>
  4007fa:	f3 c3                	repz retq 
  4007fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400800 <frame_dummy>:
  400800:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400805:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400809:	75 05                	jne    400810 <frame_dummy+0x10>
  40080b:	eb 93                	jmp    4007a0 <register_tm_clones>
  40080d:	0f 1f 00             	nopl   (%rax)
  400810:	b8 00 00 00 00       	mov    $0x0,%eax
  400815:	48 85 c0             	test   %rax,%rax
  400818:	74 f1                	je     40080b <frame_dummy+0xb>
  40081a:	55                   	push   %rbp
  40081b:	48 89 e5             	mov    %rsp,%rbp
  40081e:	ff d0                	callq  *%rax
  400820:	5d                   	pop    %rbp
  400821:	e9 7a ff ff ff       	jmpq   4007a0 <register_tm_clones>

0000000000400826 <initShareMem>:
  400826:	55                   	push   %rbp
  400827:	48 89 e5             	mov    %rsp,%rbp
  40082a:	bf f8 0a 40 00       	mov    $0x400af8,%edi
  40082f:	e8 2c fe ff ff       	callq  400660 <puts@plt>
  400834:	ba b6 01 00 00       	mov    $0x1b6,%edx
  400839:	be 3c 00 00 00       	mov    $0x3c,%esi
  40083e:	bf 70 17 00 00       	mov    $0x1770,%edi
  400843:	e8 98 fe ff ff       	callq  4006e0 <shmget@plt>
  400848:	89 05 4a 08 20 00    	mov    %eax,0x20084a(%rip)        # 601098 <shmid>
  40084e:	8b 05 44 08 20 00    	mov    0x200844(%rip),%eax        # 601098 <shmid>
  400854:	85 c0                	test   %eax,%eax
  400856:	79 14                	jns    40086c <initShareMem+0x46>
  400858:	bf f8 0a 40 00       	mov    $0x400af8,%edi
  40085d:	e8 5e fe ff ff       	callq  4006c0 <perror@plt>
  400862:	bf 01 00 00 00       	mov    $0x1,%edi
  400867:	e8 b4 fe ff ff       	callq  400720 <exit@plt>
  40086c:	bf 00 0b 40 00       	mov    $0x400b00,%edi
  400871:	e8 ea fd ff ff       	callq  400660 <puts@plt>
  400876:	8b 05 1c 08 20 00    	mov    0x20081c(%rip),%eax        # 601098 <shmid>
  40087c:	ba 00 00 00 00       	mov    $0x0,%edx
  400881:	be 00 00 00 00       	mov    $0x0,%esi
  400886:	89 c7                	mov    %eax,%edi
  400888:	e8 43 fe ff ff       	callq  4006d0 <shmat@plt>
  40088d:	48 89 05 0c 08 20 00 	mov    %rax,0x20080c(%rip)        # 6010a0 <shm>
  400894:	48 8b 05 05 08 20 00 	mov    0x200805(%rip),%rax        # 6010a0 <shm>
  40089b:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40089f:	75 14                	jne    4008b5 <initShareMem+0x8f>
  4008a1:	bf 00 0b 40 00       	mov    $0x400b00,%edi
  4008a6:	e8 15 fe ff ff       	callq  4006c0 <perror@plt>
  4008ab:	bf 01 00 00 00       	mov    $0x1,%edi
  4008b0:	e8 6b fe ff ff       	callq  400720 <exit@plt>
  4008b5:	5d                   	pop    %rbp
  4008b6:	c3                   	retq   

00000000004008b7 <writeShareMem>:
  4008b7:	55                   	push   %rbp
  4008b8:	48 89 e5             	mov    %rsp,%rbp
  4008bb:	48 83 ec 20          	sub    $0x20,%rsp
  4008bf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008c3:	48 8b 05 d6 07 20 00 	mov    0x2007d6(%rip),%rax        # 6010a0 <shm>
  4008ca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008ce:	bf 07 0b 40 00       	mov    $0x400b07,%edi
  4008d3:	e8 88 fd ff ff       	callq  400660 <puts@plt>
  4008d8:	bf 00 00 00 00       	mov    $0x0,%edi
  4008dd:	e8 be fd ff ff       	callq  4006a0 <time@plt>
  4008e2:	89 c2                	mov    %eax,%edx
  4008e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008e8:	89 50 10             	mov    %edx,0x10(%rax)
  4008eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008ef:	8b 00                	mov    (%rax),%eax
  4008f1:	89 c2                	mov    %eax,%edx
  4008f3:	48 89 d0             	mov    %rdx,%rax
  4008f6:	48 c1 e0 02          	shl    $0x2,%rax
  4008fa:	48 01 d0             	add    %rdx,%rax
  4008fd:	48 c1 e0 02          	shl    $0x2,%rax
  400901:	48 89 c2             	mov    %rax,%rdx
  400904:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400908:	48 01 c2             	add    %rax,%rdx
  40090b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40090f:	48 8b 08             	mov    (%rax),%rcx
  400912:	48 89 0a             	mov    %rcx,(%rdx)
  400915:	48 8b 48 08          	mov    0x8(%rax),%rcx
  400919:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  40091d:	8b 40 10             	mov    0x10(%rax),%eax
  400920:	89 42 10             	mov    %eax,0x10(%rdx)
  400923:	c9                   	leaveq 
  400924:	c3                   	retq   

0000000000400925 <bufferOverflow>:
  400925:	55                   	push   %rbp
  400926:	48 89 e5             	mov    %rsp,%rbp
  400929:	48 83 ec 50          	sub    $0x50,%rsp
  40092d:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  400931:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  400935:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  400939:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40093d:	be 20 0b 40 00       	mov    $0x400b20,%esi
  400942:	48 89 c7             	mov    %rax,%rdi
  400945:	b8 00 00 00 00       	mov    $0x0,%eax
  40094a:	e8 c1 fd ff ff       	callq  400710 <sprintf@plt>
  40094f:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400952:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400956:	48 89 c7             	mov    %rax,%rdi
  400959:	e8 02 fd ff ff       	callq  400660 <puts@plt>
  40095e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400961:	c9                   	leaveq 
  400962:	c3                   	retq   

0000000000400963 <main>:
  400963:	55                   	push   %rbp
  400964:	48 89 e5             	mov    %rsp,%rbp
  400967:	48 83 ec 40          	sub    $0x40,%rsp
  40096b:	89 7d cc             	mov    %edi,-0x34(%rbp)
  40096e:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  400972:	83 7d cc 05          	cmpl   $0x5,-0x34(%rbp)
  400976:	7f 14                	jg     40098c <main+0x29>
  400978:	bf 28 0b 40 00       	mov    $0x400b28,%edi
  40097d:	e8 de fc ff ff       	callq  400660 <puts@plt>
  400982:	b8 00 00 00 00       	mov    $0x0,%eax
  400987:	e9 df 00 00 00       	jmpq   400a6b <main+0x108>
  40098c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400990:	48 83 c0 08          	add    $0x8,%rax
  400994:	48 8b 00             	mov    (%rax),%rax
  400997:	48 89 c7             	mov    %rax,%rdi
  40099a:	e8 51 fd ff ff       	callq  4006f0 <atoi@plt>
  40099f:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4009a2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4009a6:	48 83 c0 18          	add    $0x18,%rax
  4009aa:	48 8b 00             	mov    (%rax),%rax
  4009ad:	48 89 c7             	mov    %rax,%rdi
  4009b0:	e8 3b fd ff ff       	callq  4006f0 <atoi@plt>
  4009b5:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4009b8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4009bc:	48 83 c0 10          	add    $0x10,%rax
  4009c0:	48 8b 00             	mov    (%rax),%rax
  4009c3:	48 89 c7             	mov    %rax,%rdi
  4009c6:	e8 25 fd ff ff       	callq  4006f0 <atoi@plt>
  4009cb:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4009ce:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4009d2:	48 83 c0 20          	add    $0x20,%rax
  4009d6:	48 8b 00             	mov    (%rax),%rax
  4009d9:	48 89 c7             	mov    %rax,%rdi
  4009dc:	e8 0f fd ff ff       	callq  4006f0 <atoi@plt>
  4009e1:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4009e4:	bf 64 00 00 00       	mov    $0x64,%edi
  4009e9:	e8 c2 fc ff ff       	callq  4006b0 <malloc@plt>
  4009ee:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4009f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4009f6:	48 89 c6             	mov    %rax,%rsi
  4009f9:	bf 20 0b 40 00       	mov    $0x400b20,%edi
  4009fe:	b8 00 00 00 00       	mov    $0x0,%eax
  400a03:	e8 f8 fc ff ff       	callq  400700 <__isoc99_scanf@plt>
  400a08:	8b 4d d0             	mov    -0x30(%rbp),%ecx
  400a0b:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  400a0e:	8b 45 d8             	mov    -0x28(%rbp),%eax
  400a11:	89 c6                	mov    %eax,%esi
  400a13:	bf 5f 0b 40 00       	mov    $0x400b5f,%edi
  400a18:	b8 00 00 00 00       	mov    $0x0,%eax
  400a1d:	e8 4e fc ff ff       	callq  400670 <printf@plt>
  400a22:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a25:	83 f8 01             	cmp    $0x1,%eax
  400a28:	74 07                	je     400a31 <main+0xce>
  400a2a:	83 f8 02             	cmp    $0x2,%eax
  400a2d:	74 21                	je     400a50 <main+0xed>
  400a2f:	eb 2b                	jmp    400a5c <main+0xf9>
  400a31:	bf 69 0b 40 00       	mov    $0x400b69,%edi
  400a36:	e8 25 fc ff ff       	callq  400660 <puts@plt>
  400a3b:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  400a3f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a43:	48 89 d6             	mov    %rdx,%rsi
  400a46:	48 89 c7             	mov    %rax,%rdi
  400a49:	e8 d7 fe ff ff       	callq  400925 <bufferOverflow>
  400a4e:	eb 16                	jmp    400a66 <main+0x103>
  400a50:	bf 83 0b 40 00       	mov    $0x400b83,%edi
  400a55:	e8 06 fc ff ff       	callq  400660 <puts@plt>
  400a5a:	eb 0a                	jmp    400a66 <main+0x103>
  400a5c:	bf 91 0b 40 00       	mov    $0x400b91,%edi
  400a61:	e8 fa fb ff ff       	callq  400660 <puts@plt>
  400a66:	b8 00 00 00 00       	mov    $0x0,%eax
  400a6b:	c9                   	leaveq 
  400a6c:	c3                   	retq   
  400a6d:	0f 1f 00             	nopl   (%rax)

0000000000400a70 <__libc_csu_init>:
  400a70:	41 57                	push   %r15
  400a72:	41 56                	push   %r14
  400a74:	41 89 ff             	mov    %edi,%r15d
  400a77:	41 55                	push   %r13
  400a79:	41 54                	push   %r12
  400a7b:	4c 8d 25 8e 03 20 00 	lea    0x20038e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400a82:	55                   	push   %rbp
  400a83:	48 8d 2d 8e 03 20 00 	lea    0x20038e(%rip),%rbp        # 600e18 <__init_array_end>
  400a8a:	53                   	push   %rbx
  400a8b:	49 89 f6             	mov    %rsi,%r14
  400a8e:	49 89 d5             	mov    %rdx,%r13
  400a91:	31 db                	xor    %ebx,%ebx
  400a93:	4c 29 e5             	sub    %r12,%rbp
  400a96:	48 83 ec 08          	sub    $0x8,%rsp
  400a9a:	48 c1 fd 03          	sar    $0x3,%rbp
  400a9e:	e8 8d fb ff ff       	callq  400630 <_init>
  400aa3:	48 85 ed             	test   %rbp,%rbp
  400aa6:	74 1e                	je     400ac6 <__libc_csu_init+0x56>
  400aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aaf:	00 
  400ab0:	4c 89 ea             	mov    %r13,%rdx
  400ab3:	4c 89 f6             	mov    %r14,%rsi
  400ab6:	44 89 ff             	mov    %r15d,%edi
  400ab9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400abd:	48 83 c3 01          	add    $0x1,%rbx
  400ac1:	48 39 eb             	cmp    %rbp,%rbx
  400ac4:	75 ea                	jne    400ab0 <__libc_csu_init+0x40>
  400ac6:	48 83 c4 08          	add    $0x8,%rsp
  400aca:	5b                   	pop    %rbx
  400acb:	5d                   	pop    %rbp
  400acc:	41 5c                	pop    %r12
  400ace:	41 5d                	pop    %r13
  400ad0:	41 5e                	pop    %r14
  400ad2:	41 5f                	pop    %r15
  400ad4:	c3                   	retq   
  400ad5:	90                   	nop
  400ad6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400add:	00 00 00 

0000000000400ae0 <__libc_csu_fini>:
  400ae0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400ae4 <_fini>:
  400ae4:	48 83 ec 08          	sub    $0x8,%rsp
  400ae8:	48 83 c4 08          	add    $0x8,%rsp
  400aec:	c3                   	retq   
