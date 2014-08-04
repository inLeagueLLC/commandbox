/**
 * Display basic information about the shell and some cool ASCII art.
 * .
 * {code}
 * info 
 * {code}
 *
 **/
component extends="commandbox.system.BaseCommand" aliases="about" excludeFromHelp=false {

	function run() {
		
		var width = 100;
		
		shellVersion = '#shell.getVersion()#';
		CFMLEngine = '#server.coldfusion.productName#';
		CFMLVersion = '#server.railo.version# #server.railo.state# (#server.railo.versionName#)';
		javaVersion = '#server.java.version# (#server.java.vendor#)';
		
		print.line();
		print.greenLine( '****************************************************************************************************' );
		print.greenText( '*                                         ' );
		print.redBoldText( 'About CommandBox' );
		print.greenLine( '                                         *' );
		print.greenLine( '****************************************************************************************************' );
		print.greenLine( '*                                                                                                  *' );
		print.greenLine( '*                                                                                                  *' ); 
		print.green( '*' ); print.magenta( '  CommandBox Version: ' ); print.white( '#shellVersion##repeatString( ' ', width - 24 - len( shellVersion ) )#' );	print.greenLine( '*' );
		print.green( '*' ); print.magenta( '  CFML Engine:        ' ); print.white( '#CFMLEngine##repeatString( ' ', width - 24 - len( CFMLEngine ) )#' );		print.greenLine( '*' );
		print.green( '*' ); print.magenta( '  Railo Version:      ' ); print.white( '#CFMLVersion##repeatString( ' ', width - 24 - len( CFMLVersion ) )#' );	print.greenLine( '*' );
		print.green( '*' ); print.magenta( '  Java Version:       ' ); print.white( '#javaVersion##repeatString( ' ', width - 24 - len( javaVersion ) )#' );	print.greenLine( '*' );
		print.green( '*' ); print.magenta( '  Authors:            ' ); print.white( 'Brad Wood, Luis Majano, Denny Valiant                                       ' );	print.greenLine( '*' );
		print.greenLine( '*                                                                                                  *' );
		print.greenLine( '*                                                                                                  *' );
		print.greenLine( '****************************************************************************************************' );
		print.line();
		
		print.line('     ```````````````````````````````````````````````````````````````````````````````````````````    ');
		print.line('   `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.`  ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@''              ##@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@::@@@@@@@@@@@@@@@@@@@@@@@@@@              ``      @@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@::::@@@@@@@@@@@@@@@@@@@@@@         ''@@@@@@@@@@@@@@@ +@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@::::::@@@@@@@@@@@@@@@@@@        @@@@@@@@@@##@@@@@@@## @@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@:::::::@@@@@@@@@@@@@@@       @@@@@,           .@@@@@  @@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@::::::;@@@@@@@@@@@##       @@@@  @@@@@@@@@@##    @@@@   @@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@::::::''@@@@@@@@@       @@@@@@@@@@@@@@@@@@@@   `@@@   @@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@::::::+@@@@@@       @,@@@@@@@@@@@@@@@@@@@@   .@@##  `@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@::::::@@@@@@       @,@@@@@@@@@@@@@@@@@@@@##   @@@   @@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@::::@@@@@@      ##@`@@@@@@@@@@@@@@@@@@@@@   @@@   @@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@:::::@@@@@@      @@ @@@@@@@@@@@@@@@@@@@@@   @@@   ''@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@::::::+@@@@@@      @@ .@@@@@@@@@@@@@@@@@@@@  `@@@   @@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@::::::;@@@@@@@@      .@  ''@@@@@@@@@@@@@@@@@@   @@@    @@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@::::::;@@@@@@@@@@@      @@  .@@@@@@@@@@@@@@@@  ,@@@    @@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@:::::::@@@@@@@@@@@@@@      @@   @@@@@@@@@@@@   ##@@@     @@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@::::::@@@@@@@@@@@@@@@@@      @@    `@@@+;;''##@@@@:       @@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@::::@@@@@@@@@@@@@@@@@@@@+      @@;                   ''@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@::@@@@@@@@@@@@@@@@@@@@@@@@+      `@@@             @@@`@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+        .@@@@@@@@,   @@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+          `##@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@@@########@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@####@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `@@@@@@@@      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@:::::::@@@@@@@@::##@@::@@@@@@@,` ');
		print.line('  `@@@@@@@  ;@@@@@@ `@:@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@:;@@@::@@;:::@@@::@::@@@@@@@@,` ');
		print.line('  `@@@@@@@  @@@@@@ @ ,`:@@        @@        @@     ;@     .@+     @@:;@@@::@::@:@:@@@:::##@@@@@@@@,` ');
		print.line('  `@@@@@@@  @@@@@+ @@@@##,@ ''@  @@ :@ .@: @@ `@@@@@  @  @@  @  @@  @@::::::@@:@@@####;@@:::@@@@@@@@@,` ');
		print.line('  `@@@@@@@  @@@@@''`@@@@:`@ ''@  @@ ,@ .@: @@ `@''     @  @@  @ :@@  @@:;####''::##:@@@@::@@:::@@@@@@@@@,` ');
		print.line('  `@@@@@@@  @@@@@@  @@.;##@ ''@  @@ ,@ .@: @@ `@  ####  @  @@  @ .@@  @@:;@@@::@::@@@+:@;:@::@@@@@@@@,` ');
		print.line('  `@@@@@@@##      @ . ` ,@@ ''@  @@ ,@ .@: @@ `@ `####  @  @@  @  .;  @@:;++;::@:##'';@:@@::@'':''@@@@@@@,` ');
		print.line('  `@@@@@@@@@     @@@  ,@@@ ;@  @@ ,@ `@: @@ `@.     @  @@  @@     @@::::::@@@::++;@::@@@::@@@@@@@,` ');
		print.line('  `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,` ');
		print.line('  `.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:.  ');
		print.line('   `.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,.`  ');
		print.line('    `..,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,..`   ');
		print.line('      `````````````````````````````````````````````````````````````````````````````````````````     ');
		
	}

}


