
ejecutable32:     file format elf32-i386


Disassembly of section .init:

08048410 <_init>:
 8048410:	53                   	push   %ebx
 8048411:	83 ec 08             	sub    $0x8,%esp
 8048414:	e8 37 01 00 00       	call   8048550 <__x86.get_pc_thunk.bx>
 8048419:	81 c3 e7 1b 00 00    	add    $0x1be7,%ebx
 804841f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048425:	85 c0                	test   %eax,%eax
 8048427:	74 05                	je     804842e <_init+0x1e>
 8048429:	e8 92 00 00 00       	call   80484c0 <__gmon_start__@plt>
 804842e:	83 c4 08             	add    $0x8,%esp
 8048431:	5b                   	pop    %ebx
 8048432:	c3                   	ret    

Disassembly of section .plt:

08048440 <printf@plt-0x10>:
 8048440:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048446:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804844c:	00 00                	add    %al,(%eax)
	...

08048450 <printf@plt>:
 8048450:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048456:	68 00 00 00 00       	push   $0x0
 804845b:	e9 e0 ff ff ff       	jmp    8048440 <_init+0x30>

08048460 <shmget@plt>:
 8048460:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048466:	68 08 00 00 00       	push   $0x8
 804846b:	e9 d0 ff ff ff       	jmp    8048440 <_init+0x30>

08048470 <time@plt>:
 8048470:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048476:	68 10 00 00 00       	push   $0x10
 804847b:	e9 c0 ff ff ff       	jmp    8048440 <_init+0x30>

08048480 <shmat@plt>:
 8048480:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048486:	68 18 00 00 00       	push   $0x18
 804848b:	e9 b0 ff ff ff       	jmp    8048440 <_init+0x30>

08048490 <perror@plt>:
 8048490:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048496:	68 20 00 00 00       	push   $0x20
 804849b:	e9 a0 ff ff ff       	jmp    8048440 <_init+0x30>

080484a0 <malloc@plt>:
 80484a0:	ff 25 20 a0 04 08    	jmp    *0x804a020
 80484a6:	68 28 00 00 00       	push   $0x28
 80484ab:	e9 90 ff ff ff       	jmp    8048440 <_init+0x30>

080484b0 <puts@plt>:
 80484b0:	ff 25 24 a0 04 08    	jmp    *0x804a024
 80484b6:	68 30 00 00 00       	push   $0x30
 80484bb:	e9 80 ff ff ff       	jmp    8048440 <_init+0x30>

080484c0 <__gmon_start__@plt>:
 80484c0:	ff 25 28 a0 04 08    	jmp    *0x804a028
 80484c6:	68 38 00 00 00       	push   $0x38
 80484cb:	e9 70 ff ff ff       	jmp    8048440 <_init+0x30>

080484d0 <exit@plt>:
 80484d0:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 80484d6:	68 40 00 00 00       	push   $0x40
 80484db:	e9 60 ff ff ff       	jmp    8048440 <_init+0x30>

080484e0 <__libc_start_main@plt>:
 80484e0:	ff 25 30 a0 04 08    	jmp    *0x804a030
 80484e6:	68 48 00 00 00       	push   $0x48
 80484eb:	e9 50 ff ff ff       	jmp    8048440 <_init+0x30>

080484f0 <sprintf@plt>:
 80484f0:	ff 25 34 a0 04 08    	jmp    *0x804a034
 80484f6:	68 50 00 00 00       	push   $0x50
 80484fb:	e9 40 ff ff ff       	jmp    8048440 <_init+0x30>

08048500 <__isoc99_scanf@plt>:
 8048500:	ff 25 38 a0 04 08    	jmp    *0x804a038
 8048506:	68 58 00 00 00       	push   $0x58
 804850b:	e9 30 ff ff ff       	jmp    8048440 <_init+0x30>

08048510 <atoi@plt>:
 8048510:	ff 25 3c a0 04 08    	jmp    *0x804a03c
 8048516:	68 60 00 00 00       	push   $0x60
 804851b:	e9 20 ff ff ff       	jmp    8048440 <_init+0x30>

Disassembly of section .text:

08048520 <_start>:
 8048520:	31 ed                	xor    %ebp,%ebp
 8048522:	5e                   	pop    %esi
 8048523:	89 e1                	mov    %esp,%ecx
 8048525:	83 e4 f0             	and    $0xfffffff0,%esp
 8048528:	50                   	push   %eax
 8048529:	54                   	push   %esp
 804852a:	52                   	push   %edx
 804852b:	68 f0 88 04 08       	push   $0x80488f0
 8048530:	68 90 88 04 08       	push   $0x8048890
 8048535:	51                   	push   %ecx
 8048536:	56                   	push   %esi
 8048537:	68 5e 87 04 08       	push   $0x804875e
 804853c:	e8 9f ff ff ff       	call   80484e0 <__libc_start_main@plt>
 8048541:	f4                   	hlt    
 8048542:	66 90                	xchg   %ax,%ax
 8048544:	66 90                	xchg   %ax,%ax
 8048546:	66 90                	xchg   %ax,%ax
 8048548:	66 90                	xchg   %ax,%ax
 804854a:	66 90                	xchg   %ax,%ax
 804854c:	66 90                	xchg   %ax,%ax
 804854e:	66 90                	xchg   %ax,%ax

08048550 <__x86.get_pc_thunk.bx>:
 8048550:	8b 1c 24             	mov    (%esp),%ebx
 8048553:	c3                   	ret    
 8048554:	66 90                	xchg   %ax,%ax
 8048556:	66 90                	xchg   %ax,%ax
 8048558:	66 90                	xchg   %ax,%ax
 804855a:	66 90                	xchg   %ax,%ax
 804855c:	66 90                	xchg   %ax,%ax
 804855e:	66 90                	xchg   %ax,%ax

08048560 <deregister_tm_clones>:
 8048560:	b8 4b a0 04 08       	mov    $0x804a04b,%eax
 8048565:	2d 48 a0 04 08       	sub    $0x804a048,%eax
 804856a:	83 f8 06             	cmp    $0x6,%eax
 804856d:	76 1a                	jbe    8048589 <deregister_tm_clones+0x29>
 804856f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048574:	85 c0                	test   %eax,%eax
 8048576:	74 11                	je     8048589 <deregister_tm_clones+0x29>
 8048578:	55                   	push   %ebp
 8048579:	89 e5                	mov    %esp,%ebp
 804857b:	83 ec 14             	sub    $0x14,%esp
 804857e:	68 48 a0 04 08       	push   $0x804a048
 8048583:	ff d0                	call   *%eax
 8048585:	83 c4 10             	add    $0x10,%esp
 8048588:	c9                   	leave  
 8048589:	f3 c3                	repz ret 
 804858b:	90                   	nop
 804858c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048590 <register_tm_clones>:
 8048590:	b8 48 a0 04 08       	mov    $0x804a048,%eax
 8048595:	2d 48 a0 04 08       	sub    $0x804a048,%eax
 804859a:	c1 f8 02             	sar    $0x2,%eax
 804859d:	89 c2                	mov    %eax,%edx
 804859f:	c1 ea 1f             	shr    $0x1f,%edx
 80485a2:	01 d0                	add    %edx,%eax
 80485a4:	d1 f8                	sar    %eax
 80485a6:	74 1b                	je     80485c3 <register_tm_clones+0x33>
 80485a8:	ba 00 00 00 00       	mov    $0x0,%edx
 80485ad:	85 d2                	test   %edx,%edx
 80485af:	74 12                	je     80485c3 <register_tm_clones+0x33>
 80485b1:	55                   	push   %ebp
 80485b2:	89 e5                	mov    %esp,%ebp
 80485b4:	83 ec 10             	sub    $0x10,%esp
 80485b7:	50                   	push   %eax
 80485b8:	68 48 a0 04 08       	push   $0x804a048
 80485bd:	ff d2                	call   *%edx
 80485bf:	83 c4 10             	add    $0x10,%esp
 80485c2:	c9                   	leave  
 80485c3:	f3 c3                	repz ret 
 80485c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080485d0 <__do_global_dtors_aux>:
 80485d0:	80 3d 48 a0 04 08 00 	cmpb   $0x0,0x804a048
 80485d7:	75 13                	jne    80485ec <__do_global_dtors_aux+0x1c>
 80485d9:	55                   	push   %ebp
 80485da:	89 e5                	mov    %esp,%ebp
 80485dc:	83 ec 08             	sub    $0x8,%esp
 80485df:	e8 7c ff ff ff       	call   8048560 <deregister_tm_clones>
 80485e4:	c6 05 48 a0 04 08 01 	movb   $0x1,0x804a048
 80485eb:	c9                   	leave  
 80485ec:	f3 c3                	repz ret 
 80485ee:	66 90                	xchg   %ax,%ax

080485f0 <frame_dummy>:
 80485f0:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 80485f5:	8b 10                	mov    (%eax),%edx
 80485f7:	85 d2                	test   %edx,%edx
 80485f9:	75 05                	jne    8048600 <frame_dummy+0x10>
 80485fb:	eb 93                	jmp    8048590 <register_tm_clones>
 80485fd:	8d 76 00             	lea    0x0(%esi),%esi
 8048600:	ba 00 00 00 00       	mov    $0x0,%edx
 8048605:	85 d2                	test   %edx,%edx
 8048607:	74 f2                	je     80485fb <frame_dummy+0xb>
 8048609:	55                   	push   %ebp
 804860a:	89 e5                	mov    %esp,%ebp
 804860c:	83 ec 14             	sub    $0x14,%esp
 804860f:	50                   	push   %eax
 8048610:	ff d2                	call   *%edx
 8048612:	83 c4 10             	add    $0x10,%esp
 8048615:	c9                   	leave  
 8048616:	e9 75 ff ff ff       	jmp    8048590 <register_tm_clones>

0804861b <initShareMem>:
 804861b:	55                   	push   %ebp
 804861c:	89 e5                	mov    %esp,%ebp
 804861e:	83 ec 08             	sub    $0x8,%esp
 8048621:	83 ec 0c             	sub    $0xc,%esp
 8048624:	68 10 89 04 08       	push   $0x8048910
 8048629:	e8 82 fe ff ff       	call   80484b0 <puts@plt>
 804862e:	83 c4 10             	add    $0x10,%esp
 8048631:	83 ec 04             	sub    $0x4,%esp
 8048634:	68 b6 01 00 00       	push   $0x1b6
 8048639:	6a 3c                	push   $0x3c
 804863b:	68 70 17 00 00       	push   $0x1770
 8048640:	e8 1b fe ff ff       	call   8048460 <shmget@plt>
 8048645:	83 c4 10             	add    $0x10,%esp
 8048648:	a3 4c a0 04 08       	mov    %eax,0x804a04c
 804864d:	a1 4c a0 04 08       	mov    0x804a04c,%eax
 8048652:	85 c0                	test   %eax,%eax
 8048654:	79 1a                	jns    8048670 <initShareMem+0x55>
 8048656:	83 ec 0c             	sub    $0xc,%esp
 8048659:	68 10 89 04 08       	push   $0x8048910
 804865e:	e8 2d fe ff ff       	call   8048490 <perror@plt>
 8048663:	83 c4 10             	add    $0x10,%esp
 8048666:	83 ec 0c             	sub    $0xc,%esp
 8048669:	6a 01                	push   $0x1
 804866b:	e8 60 fe ff ff       	call   80484d0 <exit@plt>
 8048670:	83 ec 0c             	sub    $0xc,%esp
 8048673:	68 18 89 04 08       	push   $0x8048918
 8048678:	e8 33 fe ff ff       	call   80484b0 <puts@plt>
 804867d:	83 c4 10             	add    $0x10,%esp
 8048680:	a1 4c a0 04 08       	mov    0x804a04c,%eax
 8048685:	83 ec 04             	sub    $0x4,%esp
 8048688:	6a 00                	push   $0x0
 804868a:	6a 00                	push   $0x0
 804868c:	50                   	push   %eax
 804868d:	e8 ee fd ff ff       	call   8048480 <shmat@plt>
 8048692:	83 c4 10             	add    $0x10,%esp
 8048695:	a3 50 a0 04 08       	mov    %eax,0x804a050
 804869a:	a1 50 a0 04 08       	mov    0x804a050,%eax
 804869f:	83 f8 ff             	cmp    $0xffffffff,%eax
 80486a2:	75 1a                	jne    80486be <initShareMem+0xa3>
 80486a4:	83 ec 0c             	sub    $0xc,%esp
 80486a7:	68 18 89 04 08       	push   $0x8048918
 80486ac:	e8 df fd ff ff       	call   8048490 <perror@plt>
 80486b1:	83 c4 10             	add    $0x10,%esp
 80486b4:	83 ec 0c             	sub    $0xc,%esp
 80486b7:	6a 01                	push   $0x1
 80486b9:	e8 12 fe ff ff       	call   80484d0 <exit@plt>
 80486be:	c9                   	leave  
 80486bf:	c3                   	ret    

080486c0 <writeShareMem>:
 80486c0:	55                   	push   %ebp
 80486c1:	89 e5                	mov    %esp,%ebp
 80486c3:	83 ec 18             	sub    $0x18,%esp
 80486c6:	a1 50 a0 04 08       	mov    0x804a050,%eax
 80486cb:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80486ce:	83 ec 0c             	sub    $0xc,%esp
 80486d1:	68 1f 89 04 08       	push   $0x804891f
 80486d6:	e8 d5 fd ff ff       	call   80484b0 <puts@plt>
 80486db:	83 c4 10             	add    $0x10,%esp
 80486de:	83 ec 0c             	sub    $0xc,%esp
 80486e1:	6a 00                	push   $0x0
 80486e3:	e8 88 fd ff ff       	call   8048470 <time@plt>
 80486e8:	83 c4 10             	add    $0x10,%esp
 80486eb:	89 c2                	mov    %eax,%edx
 80486ed:	8b 45 08             	mov    0x8(%ebp),%eax
 80486f0:	89 50 10             	mov    %edx,0x10(%eax)
 80486f3:	8b 45 08             	mov    0x8(%ebp),%eax
 80486f6:	8b 10                	mov    (%eax),%edx
 80486f8:	89 d0                	mov    %edx,%eax
 80486fa:	c1 e0 02             	shl    $0x2,%eax
 80486fd:	01 d0                	add    %edx,%eax
 80486ff:	c1 e0 02             	shl    $0x2,%eax
 8048702:	89 c2                	mov    %eax,%edx
 8048704:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048707:	01 c2                	add    %eax,%edx
 8048709:	8b 45 08             	mov    0x8(%ebp),%eax
 804870c:	8b 08                	mov    (%eax),%ecx
 804870e:	89 0a                	mov    %ecx,(%edx)
 8048710:	8b 48 04             	mov    0x4(%eax),%ecx
 8048713:	89 4a 04             	mov    %ecx,0x4(%edx)
 8048716:	8b 48 08             	mov    0x8(%eax),%ecx
 8048719:	89 4a 08             	mov    %ecx,0x8(%edx)
 804871c:	8b 48 0c             	mov    0xc(%eax),%ecx
 804871f:	89 4a 0c             	mov    %ecx,0xc(%edx)
 8048722:	8b 40 10             	mov    0x10(%eax),%eax
 8048725:	89 42 10             	mov    %eax,0x10(%edx)
 8048728:	c9                   	leave  
 8048729:	c3                   	ret    

0804872a <bufferOverflow>:
 804872a:	55                   	push   %ebp
 804872b:	89 e5                	mov    %esp,%ebp
 804872d:	83 ec 48             	sub    $0x48,%esp
 8048730:	83 ec 04             	sub    $0x4,%esp
 8048733:	ff 75 08             	pushl  0x8(%ebp)
 8048736:	68 38 89 04 08       	push   $0x8048938
 804873b:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 804873e:	50                   	push   %eax
 804873f:	e8 ac fd ff ff       	call   80484f0 <sprintf@plt>
 8048744:	83 c4 10             	add    $0x10,%esp
 8048747:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804874a:	83 ec 0c             	sub    $0xc,%esp
 804874d:	8d 45 c2             	lea    -0x3e(%ebp),%eax
 8048750:	50                   	push   %eax
 8048751:	e8 5a fd ff ff       	call   80484b0 <puts@plt>
 8048756:	83 c4 10             	add    $0x10,%esp
 8048759:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804875c:	c9                   	leave  
 804875d:	c3                   	ret    

0804875e <main>:
 804875e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048762:	83 e4 f0             	and    $0xfffffff0,%esp
 8048765:	ff 71 fc             	pushl  -0x4(%ecx)
 8048768:	55                   	push   %ebp
 8048769:	89 e5                	mov    %esp,%ebp
 804876b:	53                   	push   %ebx
 804876c:	51                   	push   %ecx
 804876d:	83 ec 20             	sub    $0x20,%esp
 8048770:	89 cb                	mov    %ecx,%ebx
 8048772:	83 3b 05             	cmpl   $0x5,(%ebx)
 8048775:	7f 1a                	jg     8048791 <main+0x33>
 8048777:	83 ec 0c             	sub    $0xc,%esp
 804877a:	68 3c 89 04 08       	push   $0x804893c
 804877f:	e8 2c fd ff ff       	call   80484b0 <puts@plt>
 8048784:	83 c4 10             	add    $0x10,%esp
 8048787:	b8 00 00 00 00       	mov    $0x0,%eax
 804878c:	e9 f2 00 00 00       	jmp    8048883 <main+0x125>
 8048791:	8b 43 04             	mov    0x4(%ebx),%eax
 8048794:	83 c0 04             	add    $0x4,%eax
 8048797:	8b 00                	mov    (%eax),%eax
 8048799:	83 ec 0c             	sub    $0xc,%esp
 804879c:	50                   	push   %eax
 804879d:	e8 6e fd ff ff       	call   8048510 <atoi@plt>
 80487a2:	83 c4 10             	add    $0x10,%esp
 80487a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80487a8:	8b 43 04             	mov    0x4(%ebx),%eax
 80487ab:	83 c0 0c             	add    $0xc,%eax
 80487ae:	8b 00                	mov    (%eax),%eax
 80487b0:	83 ec 0c             	sub    $0xc,%esp
 80487b3:	50                   	push   %eax
 80487b4:	e8 57 fd ff ff       	call   8048510 <atoi@plt>
 80487b9:	83 c4 10             	add    $0x10,%esp
 80487bc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80487bf:	8b 43 04             	mov    0x4(%ebx),%eax
 80487c2:	83 c0 08             	add    $0x8,%eax
 80487c5:	8b 00                	mov    (%eax),%eax
 80487c7:	83 ec 0c             	sub    $0xc,%esp
 80487ca:	50                   	push   %eax
 80487cb:	e8 40 fd ff ff       	call   8048510 <atoi@plt>
 80487d0:	83 c4 10             	add    $0x10,%esp
 80487d3:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80487d6:	8b 43 04             	mov    0x4(%ebx),%eax
 80487d9:	83 c0 10             	add    $0x10,%eax
 80487dc:	8b 00                	mov    (%eax),%eax
 80487de:	83 ec 0c             	sub    $0xc,%esp
 80487e1:	50                   	push   %eax
 80487e2:	e8 29 fd ff ff       	call   8048510 <atoi@plt>
 80487e7:	83 c4 10             	add    $0x10,%esp
 80487ea:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80487ed:	83 ec 0c             	sub    $0xc,%esp
 80487f0:	6a 64                	push   $0x64
 80487f2:	e8 a9 fc ff ff       	call   80484a0 <malloc@plt>
 80487f7:	83 c4 10             	add    $0x10,%esp
 80487fa:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80487fd:	83 ec 08             	sub    $0x8,%esp
 8048800:	ff 75 f0             	pushl  -0x10(%ebp)
 8048803:	68 38 89 04 08       	push   $0x8048938
 8048808:	e8 f3 fc ff ff       	call   8048500 <__isoc99_scanf@plt>
 804880d:	83 c4 10             	add    $0x10,%esp
 8048810:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8048813:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8048816:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048819:	51                   	push   %ecx
 804881a:	52                   	push   %edx
 804881b:	50                   	push   %eax
 804881c:	68 73 89 04 08       	push   $0x8048973
 8048821:	e8 2a fc ff ff       	call   8048450 <printf@plt>
 8048826:	83 c4 10             	add    $0x10,%esp
 8048829:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804882c:	83 f8 01             	cmp    $0x1,%eax
 804882f:	74 07                	je     8048838 <main+0xda>
 8048831:	83 f8 02             	cmp    $0x2,%eax
 8048834:	74 26                	je     804885c <main+0xfe>
 8048836:	eb 36                	jmp    804886e <main+0x110>
 8048838:	83 ec 0c             	sub    $0xc,%esp
 804883b:	68 7d 89 04 08       	push   $0x804897d
 8048840:	e8 6b fc ff ff       	call   80484b0 <puts@plt>
 8048845:	83 c4 10             	add    $0x10,%esp
 8048848:	83 ec 08             	sub    $0x8,%esp
 804884b:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804884e:	50                   	push   %eax
 804884f:	ff 75 f0             	pushl  -0x10(%ebp)
 8048852:	e8 d3 fe ff ff       	call   804872a <bufferOverflow>
 8048857:	83 c4 10             	add    $0x10,%esp
 804885a:	eb 22                	jmp    804887e <main+0x120>
 804885c:	83 ec 0c             	sub    $0xc,%esp
 804885f:	68 97 89 04 08       	push   $0x8048997
 8048864:	e8 47 fc ff ff       	call   80484b0 <puts@plt>
 8048869:	83 c4 10             	add    $0x10,%esp
 804886c:	eb 10                	jmp    804887e <main+0x120>
 804886e:	83 ec 0c             	sub    $0xc,%esp
 8048871:	68 a5 89 04 08       	push   $0x80489a5
 8048876:	e8 35 fc ff ff       	call   80484b0 <puts@plt>
 804887b:	83 c4 10             	add    $0x10,%esp
 804887e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048883:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048886:	59                   	pop    %ecx
 8048887:	5b                   	pop    %ebx
 8048888:	5d                   	pop    %ebp
 8048889:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804888c:	c3                   	ret    
 804888d:	66 90                	xchg   %ax,%ax
 804888f:	90                   	nop

08048890 <__libc_csu_init>:
 8048890:	55                   	push   %ebp
 8048891:	57                   	push   %edi
 8048892:	31 ff                	xor    %edi,%edi
 8048894:	56                   	push   %esi
 8048895:	53                   	push   %ebx
 8048896:	e8 b5 fc ff ff       	call   8048550 <__x86.get_pc_thunk.bx>
 804889b:	81 c3 65 17 00 00    	add    $0x1765,%ebx
 80488a1:	83 ec 0c             	sub    $0xc,%esp
 80488a4:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80488a8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80488ae:	e8 5d fb ff ff       	call   8048410 <_init>
 80488b3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80488b9:	29 c6                	sub    %eax,%esi
 80488bb:	c1 fe 02             	sar    $0x2,%esi
 80488be:	85 f6                	test   %esi,%esi
 80488c0:	74 23                	je     80488e5 <__libc_csu_init+0x55>
 80488c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80488c8:	83 ec 04             	sub    $0x4,%esp
 80488cb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80488cf:	ff 74 24 2c          	pushl  0x2c(%esp)
 80488d3:	55                   	push   %ebp
 80488d4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80488db:	83 c7 01             	add    $0x1,%edi
 80488de:	83 c4 10             	add    $0x10,%esp
 80488e1:	39 f7                	cmp    %esi,%edi
 80488e3:	75 e3                	jne    80488c8 <__libc_csu_init+0x38>
 80488e5:	83 c4 0c             	add    $0xc,%esp
 80488e8:	5b                   	pop    %ebx
 80488e9:	5e                   	pop    %esi
 80488ea:	5f                   	pop    %edi
 80488eb:	5d                   	pop    %ebp
 80488ec:	c3                   	ret    
 80488ed:	8d 76 00             	lea    0x0(%esi),%esi

080488f0 <__libc_csu_fini>:
 80488f0:	f3 c3                	repz ret 

Disassembly of section .fini:

080488f4 <_fini>:
 80488f4:	53                   	push   %ebx
 80488f5:	83 ec 08             	sub    $0x8,%esp
 80488f8:	e8 53 fc ff ff       	call   8048550 <__x86.get_pc_thunk.bx>
 80488fd:	81 c3 03 17 00 00    	add    $0x1703,%ebx
 8048903:	83 c4 08             	add    $0x8,%esp
 8048906:	5b                   	pop    %ebx
 8048907:	c3                   	ret    
