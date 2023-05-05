.PHONY: devel

SRC = presentation.marp
OUTPUT = build
MARP = marp --allow-local-files

build: presentation.marp
	mkdir -p build
	$(MARP) $(SRC) -o $(OUTPUT)/presentation.html
	$(MARP) --pdf $(SRC) -o $(OUTPUT)/presentation.pdf

devel:
	$(MARP) -p -w $(SRC)
