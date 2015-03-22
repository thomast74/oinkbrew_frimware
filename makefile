$(MAKECMDGOALS) %: run_make

.PHONY: run_make

APPDIR = ../../oinkbrew_firmware
APP = oinkbrew

run_make:
	@$(MAKE) -e -C ../spark-firmware/main APPDIR=$(APPDIR) \
	APP=$(APP) \
	TARGET_FILE=oinkbrew TARGET_DIR=$(APPDIR)/target \
	SPARK_CLOUD=n \
	$(MAKEOVERRIDES) $(MAKECMDGOALS) 
