#include <iostream>
#include <fstream>
#include <ctime>
#include <mutex>
#include <string>
#include <thread>
#include <vector>
#include <chrono>
#include <regex>
#include <SDL2/SDL.h>
// using namespace std ;
using std::cout ;
using std::endl ;
using std::cin ;
using std::string ;
using std::vector ;
using std::getline ;
void maintainString ( std::string & inputString , std::mutex & stringMtx , bool & isRunning ) ; 
int main () {
    // initializing the SDL
    SDL_Init(SDL_INIT_EVERYTHING) ;
    // creating a event 
    SDL_Event event ;
    time_t now ; 
    time(&now) ; // stores time in current time 
    // opening the text file 
    std::string textfile ; 
    textfile = "debug.txt" ;
    std::string line ;
	std::ifstream file(textfile);
	std::getline (file  , line ) ; 
	std::string allInputLines ;
    // making the variables 
    bool isRunning = true ;

    while ( isRunning || !file.eof() ) {
        cout << line << endl ;
        // getting the current event 
        SDL_PollEvent(&event) ;
        // checking if the event is a keydown event
        if ( event.type == SDL_KEYDOWN ) {
            // checking if the key is q
            if ( event.key.keysym.sym == SDLK_q ) {
                // setting the isRunning to false
                isRunning = false ;
            }
            // checking if the key is enter
            if ( event.key.keysym.sym == SDLK_RETURN ) {
                // getting next line from the file 
                getline ( file , line ) ;
                time (&now) ;
            }
        }
        // rendering the current time 
        time_t currentnow ; 
        time(&currentnow) ;
        if ( difftime(currentnow , now) > 1 ) {
            cout << "time passes in this loop is " << difftime(currentnow , now) << endl ;
        }
        //closing the file 
       

    }
	 file.close() ;

    return 0  ; 
}

