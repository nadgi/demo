
M=man/man7

$(M)/%.man : %.pm
	pod2man --section=MGen $< $@

all: $(M)/A64.man $(M)/C64.man $(M)/mgen.man


$(M)/mgen.man : A64.pm C64.pm
	 cat $^ | pod2man --section=MGen > $@

$(M)/A64.man : A64.pm
$(M)/C64.man : C64.pm

clean:
	rm $(M)/*.man

.PHONY: clean
