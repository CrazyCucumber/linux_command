# Вывести на экран листинг характеристик
cd ~
ps

# Листинг харакетеристик всех процессов
ps auxwww | more

# Листинг процессов, запущенных пользователем
ps -u floopy

# Бесконечный цикл
echo "while [ 1 ]; do echo 1 > testfile; sleep 1s; done" > testproc.sh
sh testproc.sh &

# Выполните п. 1. Объясните изменения в листинге характеристик процессов
ps auxwww | grep testproc

# Понизьте значение приоритета процедуры
renice -n 5 -p 2962

# Проанализируйте листинг процессов. Какой процесс является родительским для процедуры
ps -o ppid= -p 2962

# Проанализируйте листинг процессов
ps auxwww

# Завершите выполнение процесса процедуры
ps auxwww | grep testproc
kill 2962

# Запустите процедуру в интерактивном режиме с перенаправлением вывода в соответствующий файл
sh testproc.sh
