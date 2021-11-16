import re
import os
import argparse

def encapsulate(enc,atom):
    return f'{enc}({atom.group()})'



REG_PROGRAM_C1 = "%Replace_with_program_c1%"
REG_PROGRAM_C2 = "%Replace_with_program_c2%"
REG_OBSERVATION = "%Replace_with_observations%"
OUTLIER_DETECTION_QASP_TEMPLATE = "outlierDetectionQasp_template.lp"

# ruleProgram = 'rule_network.lp'
# factProgram = 'testFacts.lp'
# # observationProgram = 'obs_network.lp'
# observationProgram = 'obs_testFacts.lp'

def createQASP(ruleProgram,factProgram,observationProgram, outputFile):

    outFile = outputFile

    with open(ruleProgram,'r') as f:
        ruleProgram = f.read().strip()
        
    with open(factProgram,'r') as f:
        factProgram = f.read().strip()

    with open(observationProgram,'r') as f:
        observationProgram = f.read().strip()

    with open(OUTLIER_DETECTION_QASP_TEMPLATE,'r') as f:
        outlierDetectionQasp = f.read().strip()




    with open(outFile,'w') as f:
        c1 = re.sub('([a-z]\w*\([\w,]+\))', lambda atom: encapsulate('c1',atom),ruleProgram+'\n'+factProgram)
        c2 = re.sub('([a-z]\w*\([\w,]+\))', lambda atom: encapsulate('c2',atom),ruleProgram+'\n'+factProgram)
        obs = re.sub('([a-z]\w*\([\w,]+\))', lambda atom: encapsulate('obs',atom),observationProgram)

        outlierDetectionQasp = re.sub(REG_PROGRAM_C1, c1, outlierDetectionQasp)
        outlierDetectionQasp = re.sub(REG_PROGRAM_C2, c2, outlierDetectionQasp)
        outlierDetectionQasp = re.sub(REG_OBSERVATION, obs, outlierDetectionQasp)

        f.write(outlierDetectionQasp)



def main():
    ruleProgram = ''
    factProgram = ''
    observationProgram = ''
    outputFile = ''

    parser = argparse.ArgumentParser()
    
    parser.add_argument('-r', '--ruleProgram', metavar='ruleProgram.lp', help="file with rules", required=True)
    parser.add_argument('-f', '--factProgram', metavar='factProgram.lp', help="file with facts", required=True)
    parser.add_argument('-obs', '--observationProgram', metavar='observationProgram.lp', help="file with observation", required=True)
    parser.add_argument('-o', '--outputFile', metavar='QASP.lp', default='./QASP.lp')


    args = parser.parse_args()

    createQASP(args.ruleProgram,args.factProgram,args.observationProgram, args.outputFile)

    
if __name__ == "__main__":
   main()
