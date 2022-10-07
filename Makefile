SEV_SNP_CACHE_PATH := /tmp/sev-snp-utils-test

.PHONY: test
test:
	rm -rf ${SEV_SNP_CACHE_PATH}
	mkdir -p ${SEV_SNP_CACHE_PATH}
	SEV_SNP_CACHE_PATH=${SEV_SNP_CACHE_PATH} cargo test && rm -rf ${SEV_SNP_CACHE_PATH}
