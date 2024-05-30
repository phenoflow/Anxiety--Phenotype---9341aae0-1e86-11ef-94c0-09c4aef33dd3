# John, A., McGregor, J., Fone, D., Dunstan, F., Cornish, R.., Lyons, R A., and Lloyd, K R., 2024.

import sys, csv, re

codes = [{"code":"d21k.","system":"readv2"},{"code":"d182.","system":"readv2"},{"code":"d21n.","system":"readv2"},{"code":"d1f1.","system":"readv2"},{"code":"d246.","system":"readv2"},{"code":"d187.","system":"readv2"},{"code":"d2f2.","system":"readv2"},{"code":"d24h.","system":"readv2"},{"code":"d1d1.","system":"readv2"},{"code":"d1d2.","system":"readv2"},{"code":"d186.","system":"readv2"},{"code":"d243.","system":"readv2"},{"code":"d18b.","system":"readv2"},{"code":"d241.","system":"readv2"},{"code":"d21F.","system":"readv2"},{"code":"d188.","system":"readv2"},{"code":"d1f2.","system":"readv2"},{"code":"d1g1.","system":"readv2"},{"code":"d1d5.","system":"readv2"},{"code":"d2f3.","system":"readv2"},{"code":"d21C.","system":"readv2"},{"code":"d21s.","system":"readv2"},{"code":"d21b.","system":"readv2"},{"code":"d189.","system":"readv2"},{"code":"d2f1.","system":"readv2"},{"code":"d218.","system":"readv2"},{"code":"d266.","system":"readv2"},{"code":"d24b.","system":"readv2"},{"code":"d21f.","system":"readv2"},{"code":"d24f.","system":"readv2"},{"code":"d2by.","system":"readv2"},{"code":"d21x.","system":"readv2"},{"code":"d21h.","system":"readv2"},{"code":"d1gy.","system":"readv2"},{"code":"d18f.","system":"readv2"},{"code":"d1d3.","system":"readv2"},{"code":"d249.","system":"readv2"},{"code":"d2b1.","system":"readv2"},{"code":"d18e.","system":"readv2"},{"code":"d212.","system":"readv2"},{"code":"d214.","system":"readv2"},{"code":"d1d4.","system":"readv2"},{"code":"d181.","system":"readv2"},{"code":"d1d6.","system":"readv2"},{"code":"d21q.","system":"readv2"},{"code":"d27y.","system":"readv2"},{"code":"d185.","system":"readv2"},{"code":"d265.","system":"readv2"},{"code":"d271.","system":"readv2"},{"code":"d18d.","system":"readv2"},{"code":"d21A.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anxiety--phenotype-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anxiety--phenotype-375mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anxiety--phenotype-375mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anxiety--phenotype-375mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
