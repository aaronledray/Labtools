from chimerax.core.commands import run
import os
import time

# To run: Launch Chimera X, open the script! Also, cd to the script folder!

# This script deletes all chains except for A, matches them to a template model, then saves the new coordinates in an aligned sub-directory:

def process_pdbs(folder_path: str, output_folder: str):
    # Get a list of all PDB files in the specified folder
    pdb_files = [f for f in os.listdir(folder_path) if f.endswith('.ent')] #.ent or .pdb as needed
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
        run(session, f'open "{os.path.join(folder_path, "pdb5gep.ent")}"')
        time.sleep(0.2)

        # Match the structure to myoglobin (model #2)
        # if "id #2" in str(run(session, f'info models')):
            
        run(session, 'match #1 to #2')
        time.sleep(0.2)

        #info dismat #1:55@CA #2@CA, etc.


        run(session, 'close #2')

        # Save the matched PDB to the output folder
        run(session, f'save "{os.path.join(output_folder, pdb_file)}" #1')
        time.sleep(0.2)
            
        # Close the current model
        run(session, 'close #1')
        time.sleep(0.2)


# Currently: Change to the correct directories, ugh
process_pdbs(r'C:\X', r'C:\Y')