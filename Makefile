MODULES=gate server web

.PHONY: all clean $(MODULES)

all: $(MODULES)
	mkdir -p ./out
	cp gate/out/* ./out/
	cp server/out/* ./out/
	cp web/out/* ./out/

$(MODULES): 
	cd $@; $(MAKE) all

clean:
	cd gate; $(MAKE) clean
	cd server; $(MAKE) clean
	cd web; $(MAKE) clean
	rm -rf out
