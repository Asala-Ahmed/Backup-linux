run : create
	./lab2.sh ${dir} ${backupdir} ${intervalsecs} ${maxbackups}
create :
	mkdir -p /home/asala/6916-lab2/os-lab2/backup
dir=/home/asala/6916-lab2/os-lab2/dir
backupdir=/home/asala/6916-lab2/os-lab2/backup
intervalsecs=15
maxbackups=2

	
