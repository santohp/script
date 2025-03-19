#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY8\�  �_�Tp}���~�ގ����  D   � P P.��f�=���Q�<S'�Q�4�44h���3S@	(�4~��iM��� �d     2��P���6�� 4�d�2j6�i�2z��OP  j@ M $�e6CE6S�S�ҏS��e ��6I�z�� '���x�x��F�/�l��u(���ai
4���ଣ�2J$��\J7�h�E�	eՅ␱H�9��/��v(�����(Bn묳�i�M�zLC �Mq	�8C�I��mB���J����A�e)(,k�Dw�AvQ\�T�*�}z�WDԲ`�\��� Ppa�T��iA:����-K� �q�K�x\0$
I�Zp�;É�m*��r�������� _�r-
� n� [G9Ȋ��*�7��a]�� �KSOݕG�<DID�*x��#:�-��k�Ǌ�Tٷ����2Q���z��\�fٯXDx]#g��nT76���H���h��3��|`29�L����a�C!A�T$%<"�'�� �'/�[��dl6368�,�~L'=52�>�򀂧����k�lƔ%$����H�����*����n�2@ȡ>V��(�O�gY�P)�V
��v\_V��e��I�M�B9Ld!�Ly)���K!����4Y�8e*܂�P�}C	sఓM!QK��o*hBW���`8eJf@����
��m5A[hR����%d�X����.p���uG4C��ƣ(��
ŀ����*
Ψ�u �\�Emv���>��aI��"W�ڱ=W�M޿3���lf1Y'h�7��kN�砈ġI��`+e�N�ı�RX!HccHY�����Hs�,,A0�(��Y�Hg�<�BYn�[�H���CWb�JC�eY�r~ā/�H�i`͵��i$�0��.�p� p�;P