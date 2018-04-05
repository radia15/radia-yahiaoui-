# !/ bin / bash
echo " would you please entre your project name "
# initatialisation du projet
		mkdir "$1"
		touch "$1"/main
		touch "$1"/LICENSE  
		touch "$1"/makefile 
		gitignores
		project_name = "$1"
		
if [ $# -ne 4 ];then  #verification que on a bien saisie 4 arguments en entrée 
	echo "Expected 4 arguments with the app initdev name , please check the help file" 
	
					
		elif [ $# -eq 4 ] ; then #on a bien 4 arguments avec la syntaxe difini dans le fichier help , on garde toujours le meme ordre nom > langage >licence >-git dans l'algorithme sans qu'on oblige l'utilisateur a respecter l'ordre ,arg2: represente le langage , arg3: la licence , arg4: -git
		
		if [ "$1" != project_name];then
			echo " merci de bien saisir le nom du projet  "
			else
			if [ "$2" != "-C" ] || [ "$2" != "-Cpp" ] || [ "$2" != "-C++" ] || [ "$2" != "-Py" ] || [ "$2" != "-Latex" ] || [ "$2" != "-BEAMER" ];then	
			echo "please enter a correct file type see the disciption in the help file";
			
		fi
			else 
			if [ "$3" != "-GPL" ] || [ "$3" != "-MIT" ]  ;then
					echo " -GPL or -MIT arguement expected please checj the helpp file";
				else
				if [ "$4" != "-git" ];then
					echo " -git arguement expected";
				fi
			fi
		
		
		fi
		
		if [ "$2" = "-C" ];then
				
			cp  /home/"$USER"/.initdev/sources/main.c "$1"/ 
			elif [ "$2" = "-Cpp" ] || [ "$2" = "-C++" ];then
			cp /home/"$USER"/.initdev/sources/main.cpp "$1"/
			elif [ "$2" = "-Py" ];then
			cp /home/"$USER"/.initdev/sources/main.py "$1"/
			elif [ "$2" = "-Latex" ];then
						
			cp /home/"$USER"/.initdev/sources/latexMin.tex "$1"/
			mv "$1"/latexMin.tex "$1"/Main.tex
			elif [ "$2" = "-BEAMER" ];then
						
			cp /home/"$USER"/.initdev/sources/beamer.tex "$1"/
			mv "$1"/beamer.tex "$1"/Main.tex
			else
			
			
		fi
			if [ "$3" = "-GPL" ];then
				cp /home/"$USER"/.initdev/licenses/GPL "$1"/
				mv "$1"/GPL "$1"/LICENSE
				touch "$1"/Makefile ;
				elif [ "$3" = "-MIT" ];then
					cp /home/"$USER"/.initdev/licenses/MIT "$1"/
					mv "$1"/MIT "$1"/LICENSE
					touch "$1"/Makefile ;
				
			fi
			if [ "$4" = "-git" ] ;then

						if [ "$a2" = "-C" ];then
							cd "$1"/
							git init
							cd ../
							touch "$1"/LICENSE
							touch "$1"/makefile
							cp /home/"$USER"/.initdev/gitignores/c "$1"/
							mv "$1"/c "$1"/.gitignores
							elif [ "$2" = "-Cpp" ] || [ "$2" = "-C++" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/"cpp" "$1"/
								mv "$1"/"cpp" "$1"/.gitignore
							elif [ "$2" = "-Py" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/python "$1"/
								mv "$1"/python "$1"/.gitignore
							elif [ "$2" = "-Latex" ] || [ "$2" = "-BEAMER" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/tex "$1"/
								mv "$1"/tex "$1"/.gitignore
						
						fi
						
						
			fi
					
		
		
		fi 

fi
fi			
			
	
 

