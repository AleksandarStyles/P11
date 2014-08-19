1. Open up your project in Kinetis Design Studio.
2. Left-click on the project in the 'Project Explorer.'
3. In the menu bar click on Project->Build Configurations->Manage...
4. Click on 'New...' and input a name and an optional description and then click 'OK'
5. Still within the 'Manage Configurations' menu click on the name of your newly created configuration, click on 'Set Active', and then click 'OK'.
6. In the menu bar click on Project->Properties.
7. In the left panel click on 'C/C++ Build.'
8. Ensure that your newly created configuration is selected. If it is not then select it from the drop down menu.
9. In the 'Builder Settings' tab uncheck 'Use default build command' and enter  in the 'Build command:' text box: 
	${ProjDirPath}\lint\do_lint.bat "${ProjDirPath}" "${MCUToolsBaseDir}"
10. Uncheck 'Expand Env. Variable Refs in Makefiles' and 'Generate Makefiles automatically'.
11. In the 'Build directory:' text box enter:
	${workspace_loc:/P11}/Debug
12. Move to the 'Behaviour' tab and delete the word "all" in the 'Build (Incremental build) text box, and uncheck Clean.
13. Click 'Apply' and then 'OK'
14. In order to run your new build configuration ensure that it is selected by going to Project->Build Configurations->Set Active and then select your newly created build configuration if it is not already selected.


Example code from main.c for in line use of PC-Lint:
/* Including needed modules to compile this module/procedure */
//lint -save -e9046 -e9026 -e808 -e835 -e322 -e7 -esym(9058,*) -e537
#include "Cpu.h"
#include "Events.h"
#include "TI1.h"
#include "TimerIntLdd1.h"
#include "TU1.h"
/* Including shared modules, which are used for whole project */
#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"
//lint -restore

Example code from Events.c for in line use of PC-Lint:
//lint -save -e9046 -e9026 -e808 -e835 -e322 -e7 -esym(9058,*) -e537
#include "Cpu.h"
#include "Events.h"
//lint -restore
