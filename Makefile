all:
	cd builder; python3 build_data_manifest_draft.py
	LOCALE="LANG_C" xml2rfc --v2 $(shell ls draft-claise-opsawg-collected-data-manifest-??.xml | sort | tail -n 1)

