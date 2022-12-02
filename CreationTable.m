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

Table(1,3:6) = [0 1 1 0];   %A0

Table(2,3:6) = [1 1 0 0];   %A1

Table(3,3:6) = [1 0 0 1];   %A2

Table(4,3:6) = [1 1 1 0];   %A3

Table(5,3:6) = [0 0 0 1];   %A4

Table(6,3:6) = [1 0 0 0];   %A5

Table(7,3:6) = [0 1 1 1];   %A6

Table(8,3:6) = [1 1 0 1];   %A7

Table(9,3:6) = [1 0 1 1];   %A8

Table(10,3:6) = [0 1 0 1];  %A9

Table(11,2:5) = [1 0 0 1];  %B0

Table(12,2:5) = [1 1 0 0];  %B1

Table(13,2:5) = [0 1 1 0];  %B2

Table(14,2:5) = [1 0 0 0];  %B3

Table(15,2:5) = [0 1 1 1];  %B4

Table(16,2:5) = [1 1 1 0];  %B5

Table(17,2:5) = [0 0 0 1];  %B6

Table(18,2:5) = [0 1 0 0];  %B7

Table(19,2:5) = [0 0 1 0];  %B8

Table(20,2:5) = [0 1 0 1];  %B9

Table(21,3:6) = [1 0 0 1];  %C0

Table(22,3:6) = [0 0 1 1];  %C1

Table(23,3:6) = [0 1 1 0];  %C2

Table(24,3:6) = [0 0 0 1];  %C3

Table(25,3:6) = [1 1 1 0];  %C4

Table(26,3:6) = [0 1 1 1];  %C5

Table(27,3:6) = [1 0 0 0];  %C6

Table(28,3:6) = [0 0 1 0];  %C7

Table(29,3:6) = [0 1 0 0];  %C8

Table(30,3:6) = [1 0 1 0];  %C9

