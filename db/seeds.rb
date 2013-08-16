#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ["Linux", "Mac OS X", "Windows"].each do |os|
#   OperatingSystem.find_or_create_by_name os
# end


contacts = Contact.create([{contact: 'Elizabeth McCliment', email: 'lmccliment@mbl.edu', institution: 'MBL', vamps_name: 'lmccliment', first_name: 'Elizabeth', last_name:'McCliment'},
{contact: 'Jeffrey Gordon', email: 'jgordon@wustl.edu', institution: 'Washington University School of Medicine', vamps_name: 'Gordon', first_name: 'Jeffrey', last_name:'Gordon'},
{contact: 'David Relman', email: 'relman@stanford.edu', institution: 'Stanford University', vamps_name: 'Relman', first_name: 'David', last_name:'Relman'}])

# TODO: add all fields
datasets = Dataset.create([{dataset: '0002_SP2_2.2m', dataset_description: '0002_SP-2_2.2m'},
{dataset: '0003_JW76',     dataset_description: '0003_JW76'},
{dataset: '0003_SP3_2.9m', dataset_description: '0003_SP-3_2.9m'}])

dna_regions = DnaRegion.create([{dna_region: '2'},
{dna_region: 'cDNA'},
{dna_region: 'ditag'},
{dna_region: 'Entrez Genome'},
{dna_region: 'EST'},
{dna_region: 'fosmid'},
{dna_region: 'genomic'},
{dna_region: 'genomic dna'},
{dna_region: 'Glockner, Amsterdam'},
{dna_region: 'Hugenholtz'},
{dna_region: 'ICNB'},
{dna_region: 'ITS1'},
{dna_region: 'MBL'},
{dna_region: 'NCBI'},
{dna_region: 'RDP'},
{dna_region: 'Silva'},
{dna_region: 'Sogin, August 2008'},
{dna_region: 'v3'},
{dna_region: 'v3v1'},
{dna_region: 'v3v5'},
{dna_region: 'v3v6'},
{dna_region: 'v4'},
{dna_region: 'v4v5'},
{dna_region: 'v4v6'},
{dna_region: 'v5v3'},
{dna_region: 'v5v4'},
{dna_region: 'v6'},
{dna_region: 'v6a'},
{dna_region: 'v6v4'},
{dna_region: 'v6v4a'},
{dna_region: 'v6_dutch'},
{dna_region: 'v9'},
{dna_region: 'v9v6'}])

env_sample_sources = EnvSampleSource.create([{env_sample_source_id: '0', env_source_name: ''},
{env_sample_source_id: '10', env_source_name: 'air'},
{env_sample_source_id: '20', env_source_name: 'extreme habitat'},
{env_sample_source_id: '30', env_source_name: 'host associated'},
{env_sample_source_id: '40', env_source_name: 'human associated'},
{env_sample_source_id: '45', env_source_name: 'human-amniotic-fluid'},
{env_sample_source_id: '47', env_source_name: 'human-blood'},
{env_sample_source_id: '43', env_source_name: 'human-gut'},
{env_sample_source_id: '42', env_source_name: 'human-oral'},
{env_sample_source_id: '41', env_source_name: 'human-skin'},
{env_sample_source_id: '46', env_source_name: 'human-urine'},
{env_sample_source_id: '44', env_source_name: 'human-vaginal'},
{env_sample_source_id: '140', env_source_name: 'indoor'},
{env_sample_source_id: '50', env_source_name: 'microbial mat/biofilm'},
{env_sample_source_id: '60', env_source_name: 'miscellaneous_natural_or_artificial_environment'},
{env_sample_source_id: '70', env_source_name: 'plant associated'},
{env_sample_source_id: '80', env_source_name: 'sediment'},
{env_sample_source_id: '90', env_source_name: 'soil/sand'},
{env_sample_source_id: '100', env_source_name: 'unknown'},
{env_sample_source_id: '110', env_source_name: 'wastewater/sludge'},
{env_sample_source_id: '120', env_source_name: 'water-freshwater'},
{env_sample_source_id: '130', env_source_name: 'water-marine'}])

primer_suites = PrimerSuite.create([{primer_suite: 'Archaeal V4-V5 Suite'},
{primer_suite: 'Archaeal V6 Suite'},
{primer_suite: 'Archaeal V6-V4 Suite'},
{primer_suite: 'Archaeal V6mod Suite'},
{primer_suite: 'Bacterial V3 Suite'},
{primer_suite: 'Bacterial V3-V1 Suite'},
{primer_suite: 'Bacterial V3-V5 Suite'},
{primer_suite: 'Bacterial V4-V5 Suite'},
{primer_suite: 'Bacterial V4-V6 Suite'},
{primer_suite: 'Bacterial V5-V3 Suite'},
{primer_suite: 'Bacterial V6 Suite'},
{primer_suite: 'Bacterial V6-V4 Suite'},
{primer_suite: 'CDSIII'},
{primer_suite: 'Eukaryal V9 Suite'},
{primer_suite: 'eukv9_1380'},
{primer_suite: 'eukv9_1389'},
{primer_suite: 'Fungal ITS1 Suite'},
{primer_suite: 'HMP V3-V1 Suite'},
{primer_suite: 'HMP V5-V3 Suite'},
{primer_suite: 'hmpv3v1'},
{primer_suite: 'hmpv5v3'},
{primer_suite: 'Relman'},
{primer_suite: 'ti_v3v6'},
{primer_suite: 'ti_v6'},
{primer_suite: 'topo'},
{primer_suite: 'v6v4'},
{primer_suite: 'v6_dutch'},
{primer_suite: 'Vibrio V4'}])

# primer_suites_primers = PrimerSuitesPrimers.create()

primers = Primer.create([{primer: 'F', direction: '', sequence: '', region: '', original_seq: '', domain: ''},
{primer: '0', direction: 'F', sequence: '', region: '', original_seq: '', domain: ''},
{primer: '1046F-1', direction: 'F', sequence: 'CGACAGCCATGCA.CACCT', region: 'v6', original_seq: 'CGACAGCCATGCANCACCT', domain: ''},
{primer: '1046F-2', direction: 'F', sequence: 'CGACAACCATGCA.CACCT', region: 'v6', original_seq: 'CGACAACCATGCANCACCT', domain: ''},
{primer: '1046F-3', direction: 'F', sequence: 'CGACGGCCATGCA.CACCT', region: 'v6', original_seq: 'CGACGGCCATGCANCACCT', domain: ''},
{primer: '1046F-4', direction: 'F', sequence: 'CGACGACCATGCA.CACCT', region: 'v6', original_seq: 'CGACGACCATGCANCACCT', domain: ''},
{primer: '1046R', direction: 'R', sequence: 'AGGTG.?TGCATGG*CTGTCG', region: 'v6', original_seq: 'CGACAGCCATGCANCACCT', domain: 'bacteria'},
{primer: '1046R-AQ1', direction: 'R', sequence: 'AGGTG.?TGCATGG*CCGTCG', region: 'v6', original_seq: 'CGACGGCCATGCANCACCT', domain: 'bacteria'},
{primer: '1046R-AQ2', direction: 'R', sequence: 'AGGTG.?TGCATGG*TCGTCG', region: 'v6', original_seq: 'CGACGACCATGCANCACCT', domain: 'bacteria'},
{primer: '1046R-PP', direction: 'R', sequence: 'AGGTG.?TGCATGG*TTGTCG', region: 'v6', original_seq: 'CGACAACCATGCANCACCT', domain: 'bacteria'},
{primer: '1046R-set', direction: 'R', sequence: 'AGGTG.TGCATGG[CT][CT]?GTCG', region: 'v6', original_seq: '', domain: 'bacteria'},
{primer: '1048R', direction: 'R', sequence: 'GWGGTRCATGGCY?GY?CG', region: 'v6', original_seq: 'CGRCRGCCATGYACCWC', domain: 'archaea'},
{primer: '1059R', direction: 'R', sequence: 'GTCGTCAG?CTCG?TG[TC]?CG?TGA', region: 'v6_dutch_old', original_seq: '', domain: 'bacteria'},
{primer: '1059Rmod', direction: 'R', sequence: 'AGAGGWGGTGCATGGC', region: 'v6long', original_seq: 'GCCATGCACCWCCTCT', domain: 'archaea'},
{primer: '1061R', direction: 'R', sequence: '[CG]TCGTCAGCTCGTG[TC]CGTGA?', region: 'v6_dutch', original_seq: 'TCACG(AG)CACGAGCTGACGAC', domain: 'bacteria'},
{primer: '1064R', direction: 'R', sequence: 'AGGTG.TGCATGG[CT][CT]?GTCG', region: 'v6v5', original_seq: 'CGAC[AG][AG]?CCATGCA.CACCT', domain: 'bacteria'},
{primer: '1064R-1', direction: 'R', sequence: 'AGGTG.TGCATGGCTGTCG', region: 'v6', original_seq: 'CGACAGCCATGCANCACCT', domain: ''},
{primer: '1064R-2', direction: 'R', sequence: 'AGGTG.TGCATGGTTGTCG', region: 'v6', original_seq: 'CGACAACCATGCANCACCT', domain: ''},
{primer: '1064R-3', direction: 'R', sequence: 'AGGTG.TGCATGGCCGTCG', region: 'v6', original_seq: 'CGACGGCCATGCANCACCT', domain: ''},
{primer: '1064R-4', direction: 'R', sequence: 'AGGTG.TGCATGGTCGTCG', region: 'v6', original_seq: 'CGACGACCATGCANCACCT', domain: ''},
{primer: '10F-1', direction: 'F', sequence: 'AGTTTGATC.TGGCTCA', region: 'v1', original_seq: 'AGTTTGATCNTGGCTCA', domain: ''},
{primer: '10F-2', direction: 'F', sequence: 'A[AG]TTTGATCTT[AG]GTTCA', region: 'v1', original_seq: 'ARTTTGATCTTRGTTCA', domain: ''},
{primer: '10F-3', direction: 'F', sequence: 'AGTTTGATCCTGGCTTA', region: 'v1', original_seq: 'AGTTTGATCCTGGCTTA', domain: ''},
{primer: '1194R', direction: 'R', sequence: 'GAGGAAGG.GGGGA[CT]GACGT', region: 'v5v7', original_seq: 'ACGTCRTCCCCDCCTTCCTC', domain: 'bacteria'},
{primer: '1380F', direction: 'F', sequence: 'CCC+TGCC.TTT+GTACACAC..?CCC+', region: 'v9', original_seq: 'CCCTGCCHTTTGTACACAC', domain: 'eukarya'},
{primer: '1389F', direction: 'F', sequence: 'TTGTACACACCGCCC+', region: 'v9', original_seq: 'TTGTACACACCGCCC', domain: 'eukarya'},
{primer: '1510R', direction: 'R', sequence: 'GTAGGTGAACCTGC.?GAAGG', region: 'v9', original_seq: 'CCTTCNGCAGGTTCACCTAC', domain: 'eukarya'},
{primer: '1513R', direction: 'R', sequence: 'AAGTC[AG]TAACAAGGTA[AG]CCGTA', region: 'v9', original_seq: 'TACGGYTACCTTGTTAYGACTT', domain: 'bacteria'},
{primer: '26R-1', direction: 'R', sequence: 'TGAGCCA.GATCAAACT', region: 'v1', original_seq: 'AGTTTGATCNTGGCTCA', domain: ''},
{primer: '26R-2', direction: 'R', sequence: 'TGAAC[CT]AAGATCAAA[CT]T', region: 'v1', original_seq: 'TGAACYAAGATCAAAYT', domain: ''},
{primer: '26R-3', direction: 'R', sequence: 'TAAGCCAGGATCAAACT', region: 'v1', original_seq: 'AGTTTGATCCTGGCTTA', domain: ''},
{primer: '338F', direction: 'F', sequence: 'ACTCCTACGGGAGGCAGCAG', region: 'v3', original_seq: 'ACTCCTACGGGAGGCAGCAG', domain: 'bacteria'},
{primer: '341F-1', direction: 'F', sequence: 'CCTACGGGAGGCAGCAG', region: 'v3', original_seq: 'CCTACGGGAGGCAGCAG', domain: 'bacteria'},
{primer: '341F-2', direction: 'F', sequence: 'CCTACGGG.GGC[AT]GCAG', region: 'v3', original_seq: 'CCTACGGGNGGCWGCAG', domain: 'bacteria'},
{primer: '341F-3', direction: 'F', sequence: 'TCTACGGAAGGCTGCAG', region: 'v3', original_seq: 'TCTACGGAAGGCTGCAG', domain: 'bacteria'},
{primer: '341F-A', direction: 'F', sequence: 'CCTACGGG[AG][GC]GCAGCAG', region: 'v3', original_seq: 'CCTACGGGRSGCAGCAG', domain: 'archaea'},
{primer: '357R-1', direction: 'R', sequence: 'CTGCTGCCTCCCGTAGG', region: 'v3', original_seq: 'CCTACGGGAGGCAGCAG', domain: 'bacteria'},
{primer: '357R-2', direction: 'R', sequence: 'CTGC.GCC.CCCGTAGG', region: 'v3', original_seq: 'CCTACGGGNGGCWGCAG', domain: 'bacteria'},
{primer: '357R-3', direction: 'R', sequence: 'CTGCAGCCTTCCGTAGA', region: 'v3', original_seq: 'TCTACGGAAGGCTGCAG', domain: 'bacteria'},
{primer: '517F-1', direction: 'F', sequence: 'GCCTAAAGCATCCGTAGC', region: 'v4v5', original_seq: 'GCCTAAAGCATCCGTAGC', domain: 'archaea'},
{primer: '517F-2', direction: 'F', sequence: 'GCCTAAArCGTyCGTAGC', region: 'v4v5', original_seq: 'GCCTAAArCGTyCGTAGC', domain: 'archaea'},
{primer: '517F-3', direction: 'F', sequence: 'GTCTAAAGGGTCyGTAGC', region: 'v4v5', original_seq: 'GTCTAAAGGGTCyGTAGC', domain: 'archaea'},
{primer: '517F-4', direction: 'F', sequence: 'GCTTAAAGnGTyCGTAGC', region: 'v4v5', original_seq: 'GCTTAAAGnGTyCGTAGC', domain: 'archaea'},
{primer: '517F-5', direction: 'F', sequence: 'GTCTAAArCGyyCGTAGC', region: 'v4v5', original_seq: 'GTCTAAArCGyyCGTAGC', domain: 'archaea'},
{primer: '518F-1', direction: 'F', sequence: 'CCAGCAGCCGCGGTAA.', region: 'v4', original_seq: 'CCAGCAGCCGCGGTAAN', domain: 'bacteria'},
{primer: '518F-2', direction: 'F', sequence: 'CCAGCAGCTGCGGTAA.', region: 'v4', original_seq: 'CCAGCAGCTGCGGTAAN', domain: 'bacteria'},
{primer: '520F', direction: 'F', sequence: 'A.TGGG..TAAAG.G', region: 'v4', original_seq: 'AYTGGGYDTAAAGNG', domain: 'bacteria'},
{primer: '525F', direction: 'F', sequence: '[CG]GT[CT][CT]GTAGC[CT][GT]G', region: 'v4', original_seq: 'SGTYYGTAGCCGG', domain: 'archaea'},
{primer: '531R-A', direction: 'R', sequence: 'ACCGCGGC[GT]GCTGGC', region: 'v3', original_seq: 'GCCAGCMGCCGCGGT', domain: 'archaea'},
{primer: '533R', direction: 'R', sequence: 'GTGCCAGCAGCCGCGGTAA', region: 'v3', original_seq: 'TTACCGCGGCTGCTGGCAC', domain: 'bacteria'},
{primer: '534R-1', direction: 'R', sequence: 'CCAGCAGCCGCGGTAAT', region: 'v3', original_seq: 'NTTACCGCAGCTGCTGG', domain: ''},
{primer: '534R-2', direction: 'R', sequence: 'CCAGCAGCTGCGGTAA.', region: 'v5', original_seq: 'NTTACCGCGGCTGCTGG', domain: ''},
{primer: '565F', direction: 'F', sequence: 'TGGGCGTAAAG', region: 'v4', original_seq: 'TGGGCGTAAAG', domain: 'bacteria'},
{primer: '575R', direction: 'R', sequence: 'CTTTACGCCCA', region: 'v4', original_seq: 'TGGGCGTAAAG', domain: 'bacteria'},
{primer: '680R-Vib', direction: 'R', sequence: 'CTGTAGAGGGGG+TAGAA', region: 'v4', original_seq: 'GAAATTCTACCCCCCTCTACAG', domain: ''},
{primer: '685F-a', direction: 'F', sequence: 'G[TA]AG[GA][GA]GT[GA]AAAT', region: 'v4', original_seq: 'GWAGRRGTRAAAT', domain: 'archaea'},
{primer: '784F-DEG', direction: 'F', sequence: 'GGNTTAGATACCC', region: 'v5', original_seq: 'GGMTTAGATACCC', domain: 'bacteria'},
{primer: '785F', direction: 'F', sequence: 'GGATTAGATACCC', region: 'v4', original_seq: 'GGATTAGATACCC', domain: 'bacteria'},
{primer: '785F-a', direction: 'R', sequence: 'GGATTAG.TACCC', region: 'v3v5', original_seq: 'GGATTAGATACCC', domain: 'bacteria'},
{primer: '785F-D', direction: 'F', sequence: 'GGATTAGATACCC.[AG]GTA[CG]TC', region: 'v6_dutch', original_seq: 'GGATTAGATACCC(GCT)(AG)GTAGTC', domain: 'bacteria'},
{primer: '787F', direction: 'F', sequence: 'ATTAGATACCC.GGTAG', region: 'quince_v6', original_seq: 'ATTAGATACCCNGGTAG', domain: 'bacteria'},
{primer: '787F-a', direction: 'F', sequence: 'ATTAGATACCCGGGTAGTCC', region: 'v6v5', original_seq: 'GGACTACCCGGGTATCTAAT', domain: 'bacteria'},
{primer: '797R', direction: 'R', sequence: 'GGGTATCTAATCC', region: 'v4', original_seq: 'GGATTAGATACCC', domain: ''},
{primer: '802R', direction: 'F', sequence: 'GGATTAGATACCC..GTA', region: 'v4', original_seq: 'TACNVGGGTATCTAATCC', domain: 'bacteria'},
{primer: '880R', direction: 'R', sequence: 'CNCCTGNGNAGTANG', region: 'v5', original_seq: 'CRTACTHCHCAGGYG', domain: 'bacteria'},
{primer: '8F', direction: 'F', sequence: 'AGAGTTTGATC[AC]TGGC', region: 'v1', original_seq: 'AGAGTTTGATCMTGGC', domain: ''},
{primer: '8F-1', direction: 'F', sequence: '', region: 'v3v1', original_seq: '', domain: 'bacteria'},
{primer: '8F-2', direction: 'F', sequence: 'AGAGTTTGATCCTGGCTCAG', region: 'v1', original_seq: 'AGAGTTTGATCCTGGCTCAG', domain: ''},
{primer: '8F-3', direction: 'F', sequence: '', region: 'v3v1', original_seq: '', domain: 'bacteria'},
{primer: '906F', direction: 'F', sequence: 'CCGTCAATT[CT][CT]TTT[GA]AGTTT', region: 'v6_dutch_old', original_seq: '', domain: 'bacteria'},
{primer: '909F-1', direction: 'F', sequence: 'CCGTCAATTC.?TTT.AGT', region: 'v5', original_seq: 'CCGTCAATTCNTTTRAGT', domain: ''},
{primer: '909F-2', direction: 'F', sequence: 'CCGTCAATTCTTTTGAGT', region: 'v5', original_seq: 'CCGTCAATTCTTTTGAGT', domain: ''},
{primer: '909F-3', direction: 'F', sequence: 'CCGTCAATTTCTTTGAGT', region: 'v5', original_seq: 'CCGTCAATTTCTTTGAGT', domain: ''},
{primer: '909F-4', direction: 'F', sequence: '', region: 'v5v3', original_seq: '', domain: 'bacteria'},
{primer: '915Fmod', direction: 'F', sequence: 'AATTGGCGGGGGAGCAC', region: 'v6long', original_seq: 'AATTGGCGGGGGAGCAC', domain: 'archaea'},
{primer: '916F', direction: 'F', sequence: 'GAATTGACGGGG.CCCGCA', region: 'v6_dutch_old', original_seq: '', domain: 'bacteria'},
{primer: '926R-1', direction: 'R', sequence: 'ACT[CT]AAA.GAATTGACGG', region: 'v5', original_seq: 'CCGTCAATTCNTTTRAGT', domain: ''},
{primer: '926R-2', direction: 'R', sequence: 'ACTCAAAAGAATTGACGG', region: 'v5', original_seq: 'CCGTCAATTCTTTTGAGT', domain: ''},
{primer: '926R-3', direction: 'R', sequence: 'ACTCAAAGAAATTGACGG', region: 'v5', original_seq: 'CCGTCAATTTCTTTGAGT', domain: ''},
{primer: '958F', direction: 'F', sequence: 'AATTGGA.?TCAACGCC.G', region: 'v6', original_seq: 'AATTGGANTCAACGCCGG', domain: 'archaea'},
{primer: '958R', direction: 'R', sequence: 'CCGGCGTTGANTCCAATT', region: 'v4v5', original_seq: 'AATTGGANTCAACGCCGG', domain: 'archaea'},
{primer: '967F', direction: 'F', sequence: 'CAACGCGAAGAACCTTACC', region: 'v6', original_seq: 'CAACGCGAAGAACCTTACC', domain: 'bacteria'},
{primer: '967F-AQ', direction: 'F', sequence: 'CTAACCGA.GAACCT[CT]ACC', region: 'v6', original_seq: 'CTAACCGANGAACCTYACC', domain: 'bacteria'},
{primer: '967F-PP', direction: 'F', sequence: 'C.ACGCGAAGAACCTTA.C', region: 'v6', original_seq: 'CNACGCGAAGAACCTTANC', domain: 'bacteria'},
{primer: '967F-UC1', direction: 'F', sequence: 'CAACGCGAAAA+CCTTACC', region: 'v6', original_seq: 'CAACGCGAAAAACCTTACC', domain: 'bacteria'},
{primer: '967F-UC12', direction: 'F', sequence: 'CAACGCG[AC]A[AG]AACCTTACC', region: 'v6', original_seq: 'CAACGCGMARAACCTTACC', domain: 'bacteria'},
{primer: '967F-UC2', direction: 'F', sequence: 'CAACGCGCAGAACCTTACC', region: 'v6', original_seq: 'CAACGCGCAGAACCTTACC', domain: 'bacteria'},
{primer: '967F-UC3', direction: 'F', sequence: 'ATACGCGA[AG]GAACCTTACC', region: 'v6', original_seq: 'ATACGCGARGAACCTTACC', domain: 'bacteria'},
{primer: '968F', direction: 'F', sequence: 'AACGCGAAGAACCTTACC', region: 'v6', original_seq: 'AACGCGAAGAACCTTACC', domain: 'bacteria'},
{primer: 'A-adaptor', direction: 'F', sequence: 'GCCTCCCTCGCGCCATCAG', region: '454', original_seq: 'GCCTCCCTCGCGCCATCAG', domain: ''},
{primer: 'B-adaptor', direction: 'R', sequence: 'GCCTTGCCAGCCCGCTCAG', region: '454', original_seq: 'GCCTTGCCAGCCCGCTCAG', domain: ''},
{primer: 'BSL', direction: 'F', sequence: 'GGCTTATTACAACTTA.CAAG', region: '', original_seq: '', domain: 'eukarya'},
{primer: 'CDSIII', direction: 'R', sequence: 'AAAAAAAAAAAAAA*TCGGCCCGCCTCGGCCTCTAG', region: 'est', original_seq: 'AAAAAAAAAAAAAAATCGGCCCGCCTCGGCCTCTAG', domain: 'eukarya'},
{primer: 'EST-GG', direction: 'F', sequence: 'GG?', region: 'est', original_seq: 'GG', domain: 'eukarya'},
{primer: 'ITS-1F', direction: 'F', sequence: 'GTAAAAGTCGTAACAAGGTTTC', region: 'ITS1', original_seq: 'GTAAAAGTCGTAACAAGGTTTC', domain: 'eukarya'},
{primer: 'ITS-1R', direction: 'R', sequence: 'GTGAATCATCGARTCTTTGAAC', region: 'ITS1', original_seq: 'GTTCAAAGAYTCGATGATTCAC', domain: 'eukarya'},
{primer: 'none', direction: 'F', sequence: '', region: '', original_seq: '', domain: ''},
{primer: 'TopoF', direction: 'F', sequence: 'GTTTAAACGAATTCGCCCTT', region: 'pCR4', original_seq: 'GTTTAAACGAATTCGCCCTT', domain: 'eukarya'},
{primer: 'TopoR', direction: 'R', sequence: 'AAGGGCGATTCGCGGCCGC', region: 'pCR4', original_seq: 'AAGGGCGATTCGCGGCCGC', domain: 'eukarya'}])

projects = Project.create([{project: 'JPL_PHXF_Bv6', title: 'JPL facilities and Phoneix spacecraft', project_description: 'Planetary Protection assessment of JPL facilities and the Phoenix Spacecraft', rev_project_name: '6vB_FXHP_LPJ', funding: 'JetPropulsionLab CalTech',  contact_id: '1'},
{project: 'BPC_MRB_C', title: 'cDNA sampling of Marinobacter', project_description: 'cDNA sampling of Marinobacter', rev_project_name: 'C_BRM_CPB', funding: 'pilot', contact_id: '2'},
{project: 'KCK_MHB_Bv6', title: 'Mount Hope Bay - winter and summer', project_description: 'Mount Hope Bay - winter and summer study', rev_project_name: '6vB_BHM_KCK', funding: 'Keck', contact_id: '3'}])

ranks = Rank.create([{rank:  "NA"}, {rank: "class"}, {rank: "domain"}, {rank: "family"}, {rank: "genus"}, {rank: "order"}, {rank: "orderx"}, {rank: "phylum"}, {rank: "species"}, {rank: "strain"}, {rank: "superkingdom"}])

#todo: run_infos

run_keys = RunKey.create([{run_key: ''},
{run_key: 'AACACTCG'},
{run_key: 'AACACTCGTGC'},
{run_key: 'AACCAGC'},
{run_key: 'AACCTTCGTT'},
{run_key: 'AACGGAGTC'},
{run_key: 'AACTTGC'},
{run_key: 'AAGAGGATTC'},
{run_key: 'AAGAGGATTCGAT'},
{run_key: 'AAGCCGC'},
{run_key: 'AAGGCAC'},
{run_key: 'AAGTGCGT'},
{run_key: 'AAGTGCGTATC'},
{run_key: 'AAT'},
{run_key: 'AATTACCGGT'},
{run_key: 'ACA'},
{run_key: 'ACAAGGC'},
{run_key: 'acac'},
{run_key: 'ACACACTG'},
{run_key: 'ACACGC'},
{run_key: 'ACACT'},
{run_key: 'ACACTGAC'},
{run_key: 'ACAGA'},
{run_key: 'ACAGGTGA'},
{run_key: 'ACATC'},
{run_key: 'acca'},
{run_key: 'ACG'},
{run_key: 'ACGAAGTC'},
{run_key: 'ACGAC'},
{run_key: 'ACGAGTGA'}])

runs = Run.create([{run: '20120706', run_prefix: 'HQW4LSJ', date_trimmed: '2012-07-26'},
{run: '20120713', run_prefix: 'HRAEZ44', date_trimmed: '2012-07-16'},
{run: '20120711', run_prefix: 'HQ6GOU0', date_trimmed: '2012-07-26'},
{run: '20120714', run_prefix: 'B2SDE', date_trimmed: '2012-10-10'},
{run: '20120712', run_prefix: 'B2O7N', date_trimmed: '2012-09-25'},
{run: '20120707', run_prefix: 'CHQW4LS', date_trimmed: '2012-07-26'},
{run: '20120614', run_prefix: '', date_trimmed: '0000-00-00'},
{run: '20120719', run_prefix: 'CRLB4DY', date_trimmed: '2012-08-30'},
{run: '20120720', run_prefix: 'HRLB4DY', date_trimmed: '2012-08-30'},
{run: '20120727', run_prefix: 'HR0AXTI', date_trimmed: '2012-09-15'},
{run: '20120820', run_prefix: '94G7T', date_trimmed: '2012-09-17'},
{run: '20120822', run_prefix: '94G7T', date_trimmed: '2012-09-17'},
{run: '20120914', run_prefix: 'HUMKV7S', date_trimmed: '2012-11-05'},
{run: '20120824', run_prefix: 'HTHV1PQ', date_trimmed: '2012-09-19'},
{run: '20120821', run_prefix: 'BZZ72', date_trimmed: '2012-09-19'},
{run: '20120823', run_prefix: 'BZZ72', date_trimmed: '2012-09-19'},
{run: '20120716', run_prefix: 'B2O7N', date_trimmed: '2012-09-25'},
{run: '20120906', run_prefix: 'HT7R3WJ', date_trimmed: '2012-10-04'},
{run: '20120717', run_prefix: 'B2SDE', date_trimmed: '2012-10-10'},
{run: '20121010', run_prefix: 'HV2F04X', date_trimmed: '2012-10-12'},
{run: '20121019', run_prefix: 'HWIWFSD', date_trimmed: '2012-10-23'},
{run: '20121017', run_prefix: 'HVTHACL', date_trimmed: '2012-10-24'},
{run: '20121026', run_prefix: 'HWVVU73', date_trimmed: '2012-11-07'},
{run: '20101004', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20121108', run_prefix: 'HXL2F5I', date_trimmed: '2012-11-12'},
{run: '20121115', run_prefix: 'HXY06J1', date_trimmed: '2012-12-07'},
{run: '20121114', run_prefix: 'HXWZKLZ', date_trimmed: '2012-11-27'},
{run: '20121004', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20121207', run_prefix: 'HY7HEEJ', date_trimmed: '2012-12-10'},
{run: '20121214', run_prefix: 'HZKIAXE', date_trimmed: '2012-12-19'},
{run: '20121221', run_prefix: 'HZW4XE1', date_trimmed: '2013-01-02'},
{run: '20130117', run_prefix: 'H20IVBA', date_trimmed: '2013-01-23'},
{run: '20121106', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130104', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130110', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130107', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130125', run_prefix: 'H3E3MBH', date_trimmed: '2013-02-25'},
{run: '20130204', run_prefix: 'H3ZRT21', date_trimmed: '2013-02-25'},
{run: '20130220', run_prefix: 'H4TD0QZ', date_trimmed: '2013-02-26'},
{run: '20121025', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130227', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130322', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130405', run_prefix: 'H7BW09N', date_trimmed: '2013-04-11'},
{run: '20130419', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130408', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130507', run_prefix: 'H821PUT', date_trimmed: '2013-05-10'},
{run: '20130422', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130514', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130611', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130614', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130607', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130619', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20150000', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130710', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130719', run_prefix: 'illumin', date_trimmed: '0000-00-00'},
{run: '20130721', run_prefix: 'illumin', date_trimmed: '0000-00-00'}])

# todo: sequence_pdr_infos
# todo: sequence_uniq_infos

# sequences = Sequence.create([])

taxonomies = Taxonomy.create([{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Desulfurococcaceae;Unassigned;uncultured crenarchaeote pBA3'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Desulfurococcaceae;Unassigned;uncultured Desulfurococcaceae archaeon'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;environmental samples;'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Ignisphaera;'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Geogemma'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Geogemma;'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Geogemma;Geogemma indica'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Geogemma;Geogemma pacifica'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Hyperthermus'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Hyperthermus;'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Hyperthermus;butylicus'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Hyperthermus;butylicus;DSM 5456'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Hyperthermus;Hyperthermus butylicus'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Hyperthermus;uncultured Hyperthermus sp.'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Pyrodictium'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Pyrodictium;'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Pyrodictium;abyssi'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Pyrodictium;brockii'},
{taxonomy: 'Archaea;Crenarchaeota;Thermoprotei;Desulfurococcales;Pyrodictiaceae;Pyrodictium;environmental samples;'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. BIGigoW09'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. BIHTY10/11'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. HPA-86'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. HPA-87'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. HSA18'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. HSA19'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. HSA20'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. IS10-2'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus sp. JCM 8979'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;Halococcus thailandensis'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;hamelinensis'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;morrhuae'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;qingdaonensis'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;saccharolyticus'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;salifodinae'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;thailandensis'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;turkmenicus'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Halococcus;uncultured Halococcus sp.'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Haloferax'},
{taxonomy: 'Archaea;Euryarchaeota;Halobacteria;Halobacteriales;Halobacteriaceae;Haloferax;'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DH-6'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DH2001'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DH24-2'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DH27-2'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DH38-2'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DH93-2'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DhA-51'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DhA-91'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DHHS2'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DHS3Y'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DHT2'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. dI1'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. dI14'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DJCJ55'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DJCJ69'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DJF1'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DJFZ'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DJHH69'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DJHH74'},
{taxonomy: 'Bacteria;Proteobacteria;Gammaproteobacteria;Pseudomonadales;Pseudomonadaceae;Pseudomonas;Pseudomonas sp. DJWH11'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Acleisanthes;Acleisanthes wrightii'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Allionia'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Allionia;Allionia choisyi'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Allionia;Allionia incarnata'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Andradea'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Andradea;Andradea floribunda'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Anulocaulis'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Anulocaulis;Anulocaulis annulatus'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Anulocaulis;Anulocaulis eriosolenus'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Anulocaulis;Anulocaulis leiosolenus'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Anulocaulis;Anulocaulis reflexus'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Belemia'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Belemia;Belemia fucsioides'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Boerhavia'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Boerhavia;Boerhavia anisophylla'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Boerhavia;Boerhavia ciliata'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Boerhavia;Boerhavia coccinea'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Boerhavia;Boerhavia coulteri'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Boerhavia;Boerhavia dominii'},
{taxonomy: 'Eukarya;Streptophyta;Unassigned;Caryophyllales;Nyctaginaceae;Boerhavia;Boerhavia erecta'}])
