function Table = CreationTable()

Table = zeros(30,9);
for i=1:10
    Table(i,1) = 0;
    if(i<4 || i == 10)
        Table(i,2) = 0;
    else
        Table(i,2) = 1;
    end
    Table(i,7) = 1;
    Table(i,8) = i-1;
    Table(i,9) = 'A';   
end
for i=11:20
    Table(i,1) = 0;
    if(i<14 || i == 20)
        Table(i,6) = 1;
    else
        Table(i,6) = 0;
    end
    Table(i,7) = 1;
    Table(i,8) = i-11;
    Table(i,9) = 'B';   
end
for i=21:30
    Table(i,1) = 1;
    if(i<24 || i == 30)
        Table(i,2) = 1;
    else
        Table(i,2) = 0;
    end
    Table(i,7) = 0;
    Table(i,8) = i-21;
    Table(i,9) = 'C';   
end

Table(1,3) = 0;
Table(1,4) = 1;
Table(1,5) = 1;
Table(1,6) = 0;

Table(2,3) = 1;
Table(2,4) = 1;
Table(2,5) = 0;
Table(2,6) = 0;

Table(3,3) = 1;
Table(3,4) = 0;
Table(3,5) = 0;
Table(3,6) = 1;

Table(4,3) = 1;
Table(4,4) = 1;
Table(4,5) = 1;
Table(4,6) = 0;

Table(5,3:6) = [0 0 0 1];

Table(6,3:6) = [1 0 0 0];

Table(7,3:6) = [0 1 1 1];

Table(8,3:6) = [1 1 0 1] ;

Table(9,3:6 = [1 0 1 1];

Table(10,3:6) = [0 1 0 1];

Table(11,2) = 0;
Table(11,3) = 0;
Table(11,4) = 1;
Table(11,5) = 1;

Table(12,2) = 0;
Table(12,3) = 0;
Table(12,4) = 1;
Table(12,5) = 1;

Table(13,2) = 0;
Table(13,3) = 0;
Table(13,4) = 1;
Table(13,5) = 1;

Table(14,2) = 0;
Table(14,3) = 0;
Table(14,4) = 1;
Table(14,5) = 1;

Table(15,2) = 0;
Table(15,3) = 0;
Table(15,4) = 1;
Table(15,5) = 1;

Table(16,2) = 0;
Table(16,3) = 0;
Table(16,4) = 1;
Table(16,5) = 1;

Table(17,2) = 0;
Table(17,3) = 0;
Table(17,4) = 1;
Table(17,5) = 1;

Table(18,2) = 0;
Table(18,3) = 0;
Table(18,4) = 1;
Table(18,5) = 1;

Table(19,2) = 0;
Table(19,3) = 0;
Table(19,4) = 1;
Table(19,5) = 1;

Table(20,2) = 0;
Table(20,3) = 0;
Table(20,4) = 1;
Table(20,5) = 1;

Table(21,3) = 0;
Table(21,4) = 1;
Table(21,5) = 1;
Table(21,6) = 0;

Table(22,3) = 0;
Table(22,4) = 1;
Table(22,5) = 1;
Table(22,6) = 0;

Table(23,3) = 0;
Table(23,4) = 1;
Table(23,5) = 1;
Table(23,6) = 0;

Table(24,3) = 0;
Table(24,4) = 1;
Table(24,5) = 1;
Table(24,6) = 0;

Table(25,3) = 0;
Table(25,4) = 1;
Table(25,5) = 1;
Table(25,6) = 0;

Table(26,3) = 0;
Table(26,4) = 1;
Table(26,5) = 1;
Table(26,6) = 0;

Table(27,3) = 0;
Table(27,4) = 1;
Table(27,5) = 1;
Table(27,6) = 0;

Table(28,3) = 0;
Table(28,4) = 1;
Table(28,5) = 1;
Table(28,6) = 0;

Table(29,3) = 0;
Table(29,4) = 1;
Table(29,5) = 1;
Table(29,6) = 0;

Table(30,3) = 0;
Table(30,4) = 1;
Table(30,5) = 1;
Table(30,6) = 0;

