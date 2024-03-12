from chimerax.core.commands import run
# from chimerax.core.commands import info
# from pathlib import Path
import os
import time

# To run: Launch Chimera X, open the script! Also, cd to the script folder!

# This script deletes all chains except for A, matches them to a template model, then saves the new coordinates in an aligned sub-directory:

def process_pdbs(folder_path: str, output_folder: str):
    # Get a list of all PDB files in the specified folder
    pdb_files = [f for f in os.listdir(folder_path) if f.endswith('.ent') or f.endswith('.pdb')] #.ent or .pdb as needed
    # Loop through each PDB file
    for pdb_file in pdb_files:
        # Open the PDB file in ChimeraX
        run(session, f'open "{os.path.join(folder_path, pdb_file)}"')
        time.sleep(0.1)
        
        # Delete all other chains in model #2 except for chain A
        run(session, 'select /A')
        run(session, 'select ~sel')
        run(session, 'delete sel')
        
        # Set below to the template structure!
        run(session, f'open "{os.path.join(folder_path, "pdb2gep.ent")}"')
        time.sleep(0.1)

        # Match the structure to myoglobin (model #2)
        # if "id #2" in str(run(session, f'info models')):
            
        run(session, 'match #1 to #2')
        time.sleep(0.1)

        #info dismat #1:55@CA #2@CA, etc.

        run(session, 'close #2')

        # Save the matched PDB to the output folder
        # First need to check if pdb_file is a .pdb or .ent, and replace it if that is the case.
        # Modify the output file path based on the file extension
        if pdb_file.endswith('.ent'):
            output_file_path = os.path.join(output_folder, f"{os.path.splitext(pdb_file)[0]}.pdb")
        else:
            output_file_path = os.path.join(output_folder, pdb_file)
        
        # Save the matched PDB to the output folder
        run(session, f'save "{output_file_path}" #1')
        # run(session, f'save "{os.path.join(output_folder, pdb_file)}" #1')
        time.sleep(0.1)
            
        # Close the current model
        run(session, 'close #1')
        time.sleep(0.1)
        


# Define input and output sub-directories
input_folder = r'C:\...\All_Uniprot_based_AlphaFold_Structures'
output_folder = r'C:\...\Aligned_Simulated_Structures'



# Call the function with the defined folder paths
process_pdbs(input_folder, output_folder)

