load '../../src/flow-over-hill/shallow-water.plt'

U = 1

plot h_s(x) with lines title "$h_s$", \
     H with lines title "$H$", \
     H+hprime(x, U) with lines title "$H+h'$", \
     U+uprime(x, U) with lines axes x1y2 title "$U+u'$"

