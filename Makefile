vendor_dir := ./vendor
vpython := ./vendor/bin/python
all: myprog.c 
	gcc -g -Wall -o myprog myprog.c

venv:
	python3 -m venv $(vendor_dir)
	$(vpython) -m pip install --upgrade pip
	$(vpython) -m pip install -r requirements.txt

rm-vendor:
	rm -rf $(vendor_dir)

clean-install: rm-vendor venv