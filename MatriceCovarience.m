function matcov = MatriceCovarience(zone)

sumx = sum((zone.*zone));
sumy = sum((zone.*zone)');

sumxy =  sum(zone.*zone');

matcov = [sumx,sumxy;sumxy,sumy];