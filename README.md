# DevScripts
All the scripts I use to make my development experience much easier, more to come

## Compatibility
* OS must have Bash capabilities
* Any OS that uses Bash (Linux, MacOS, e.t.c)

## Get my scripts
`git clone https://github.com/oakerele/devscripts.git`

## Installation
### Make scripts accessible in all directories

### Route 1
* Add the scripts into `/usr/local/bin`
    * The good thing about this method is you don't have to mess with your bash_profile file
    * Disadvantage of this is that you have to constantly go into this folder to make changes, something that can be very dangerous in the long run (Like if you mistakenly delete an important file).

### Route 2
* Define any folder anywhere on your Computer e.g `/Desktop/scripts/`
* Run vim .bash_profile (Alternatively, you can find this file in Users/your_name/, just have hidden files set to true somewhere in the settings).
* Hit the `i` button then type or paste this `export PATH=$PATH:/Users/name/Desktop/scripts/`. Since my example is in my desktop, please replace with appropriate folder structure. Then the `esc key` then type in `:wq`
    * The good thing about this method is that you can set a clean area of your system that will not tamper with other important files
    * The con of this method is that initially you will have to set path and all your scripts must go in here.
