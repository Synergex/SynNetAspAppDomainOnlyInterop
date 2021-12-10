@echo off
setlocal
pushd %~dp0

set CODEGEN_TPLDIR=.\templates
set RPSMFIL=.\rps\rpsmain.ism
set RPSTFIL=.\rps\rpstext.ism

codegen -e -t ServicesCustom -n BusinessLogic -r -lf               -o .\BusinessLogic
codegen -e -t CrudMethods    -s PART SUPPLIER PRODUCT_GROUP -r -lf -o .\BusinessLogic\xfServerPlusCode

echo Code generation complete

popd
endlocal