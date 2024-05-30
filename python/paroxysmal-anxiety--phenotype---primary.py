# John, A., McGregor, J., Fone, D., Dunstan, F., Cornish, R.., Lyons, R A., and Lloyd, K R., 2024.

import sys, csv, re

codes = [{"code":"F41.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anxiety--phenotype-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["paroxysmal-anxiety--phenotype---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["paroxysmal-anxiety--phenotype---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["paroxysmal-anxiety--phenotype---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
