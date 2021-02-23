# ----------------------------------------------------------------------------
# Informa quantos dias faltam para o proximo aniversario das funções ZZ.
# Uso: zzaniversariozz
# Ex.: zzaniversariozz
#
# Autor: Crauss Ferraz, @cfony
# Desde: 2021-02-18
# Versão: 1
# Requisitos: zzzz
# Tags: texto zzdata
# ----------------------------------------------------------------------------
zzaniversariozz()
{
  zzzz -h aniversario "$1" && return
  local DIA=$(zzdata | cut -d\/ -f1)
  local MES=$(expr $(zzdata | cut -d\/ -f2) + 0)
  local ANO=$(zzdata | cut -d\/ -f3)
  
  if [ $DIA -lt 22 ] && [ $MES -le 2 ] ; then
    zzdata 22/02/$ANO - hoje

  elif [ $DIA -eq 22 ] && [ $MES -eq 2 ]; then
    echo "Feliz Aniversario Funções ZZ!"

  else
    local ANONOVO=$(expr $ANO + 1)
    zzdata 22/02/$ANONOVO - hoje    
  fi
}
