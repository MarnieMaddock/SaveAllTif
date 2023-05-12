//********
//This work is licensed under a Creative Commons Attribution 4.0 International License.
// Use in ImageJ (FIJI) using the .ijm language
// Created by Marnie L. Maddock; 
// University of Wollongong, Australia;
// School of Medical, Indigenous and Health Sciences
// Stem Cells and Neural Modelling Lab (Dottori Group)
// mlm715@uowmail.edu.au; mmaddock@uow.edu.au; mdottori@uow.edu.au
// LinkedIn: Marnie Maddock; Twitter @marniemaddock
// 10.5.2023
// https://github.com/MarnieMaddock/SaveAllTif
//********

#@File (label = "Input directory", style = "directory") chosenInputDir
#@File (label = "Output directory", style = "directory") chosenOutputDir
#@String (label = "File suffix", value = ".lif") fileExtension

inputDir = chosenInputDir + File.separator;
outputDir = chosenOutputDir + File.separator;

run("Bio-Formats Macro Extensions");

processBioFormatFiles(inputDir);


function processBioFormatFiles(currentDirectory) {

	fileList = getFileList(currentDirectory);

	for (file = 0; file < fileList.length; file++) {

		if (endsWith(fileList[file], fileExtension)) {
			Ext.setId(currentDirectory + fileList[file]);
			Ext.getSeriesCount(seriesCount);
			
			for (series = 1; series <= seriesCount; series++) {
				//record the Bio-Formats importer with the setup you need if different from below and change accordingly
				run("Bio-Formats Importer", "open=[" + currentDirectory + fileList[file] + "] autoscale color_mode=Composite rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT series_"+series);

			}
			
		} else if (endsWith(fileList[file], "/")) {
			processBioFormatFiles(currentDirectory + fileList[file]);
		}
	}
}
// Comment this section out if all images are already unique. Highlight lines below and press ctrl /
function uniqueName( name_array ) {
/********************************************************************************************
   Version: Herbie G., 03. Dec. 2011
   Comment: gives unique names to all open image window
   Input parameter: empty array, e.g. imgNameArray = newArray( nImages );
   Output parameter: imgNameArray filled with file names
*********************************************************************************************/
   k = name_array.length;
   for ( i = 0; i < k; i++ ) {   // loop image window menu list
      selectImage( i + 1 );
      new_title = getTitle();
      for ( j = 0; j < i; j++ ) {   // check for doublets
         if ( name_array[j] == new_title ) {
            name_comp = split( new_title, "." );
            new_title = name_comp[0] + "_#" + i;
            if ( name_comp.length > 1) { new_title += "." + name_comp[1]; };
         }
         rename( new_title );
      }
      name_array[i] = new_title;
   }
}



//To save all:
run("SaveAllImages ");
exit("Done");
