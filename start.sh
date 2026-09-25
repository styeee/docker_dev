clear

while true
do
	echo "0 build all"
	echo "1 build bulder"
	echo "2 build tester"
	echo "3 build runner"
	echo "4 run builder"
	echo "5 run tester"
	echo "6 run runner"
	echo "7 show ip"
	echo "8 stop all"
	echo "ctrl+c for stop"
	
	read i
	case $i in
		0) cd _images && ./build.sh && cd ..;;
		1) cd _images && ./build.sh builder.docker && cd ..;;
		2) cd _images && ./build.sh tester.docker && cd ..;;
		3) cd _images && ./build.sh runner.docker && cd ..;;
		4) _actions/1builder.sh;;
		5) _actions/2tester.sh;;
		6) _actions/3runner.sh;;
		7) hostname -I;;
		8) sudo docker stop $(sudo docker ps -q);;
	esac
done
