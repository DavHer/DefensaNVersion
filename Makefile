SUBDIRATTACK 	:= AttackProcess
SUBDIRDEFENSE 	:= DefenseProcess

.PHONY: all
all:
	$(MAKE) -C $(SUBDIRATTACK)
	$(MAKE) -C $(SUBDIRDEFENSE)


.PHONY: clean
clean:
	$(MAKE) -C $(SUBDIRATTACK) clean
	$(MAKE) -C $(SUBDIRDEFENSE) clean

.PHONY: remove
remove: clean
	$(MAKE) -C $(SUBDIRATTACK) remove
	$(MAKE) -C $(SUBDIRDEFENSE) remove
