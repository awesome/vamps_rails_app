module TaxaCountHelper
  def get_rank_names()
    ranks      = Rank.all.sorted 
    rank_names = []     
    ranks.map {|rank| rank.rank == "class" ? rank_names << "klass" : rank_names << rank.rank}
    rank_names.delete("NA")
    return rank_names
  end

  def get_taxonomy_per_d(my_pdrs)
    dat_counts_seq = create_dat_seq_cnts(my_pdrs)  
    all_seq_ui     = get_all_sequence_uniq_infos(dat_counts_seq.map { |u| u[:sequence_id] })

    add_tax_id(dat_counts_seq, all_seq_ui)
    puts "URA3 = dat_counts_seq: " + dat_counts_seq.inspect
    
    taxonomies = get_taxonomies(dat_counts_seq)
    puts "\nHHH: taxonomies = " + taxonomies.inspect
    #<ActiveRecord::Relation [#<Taxonomy id: 82, domain_id: 2, phylum_id: 3, klass_id: 3, order_id: 16, family_id: 18, genus_id: 129, species_id: 1, strain_id: 4, created_at: "2013-08-19 12:44:13", updated_at: "2013-08-19 12:44:13">, #<Taxonomy id: 96, domain_id: 2, phylum_id: 4, klass_id: 32, order_id: 5, family_id: 52, genus_id: 76, species_id: 1, strain_id: 4, created_at: "2013-08-19 12:44:13", updated_at: "2013-08-19 12:44:13">, #<Taxonomy id: 137, domain_id: 2, phylum_id: 3, klass_id: 5, order_id: 65, family_id: 129, genus_id: 129, species_id: 1, strain_id: 4, created_at: "2013-08-19 12:44:13", updated_at: "2013-08-19 12:44:13">]>
    # TODO: create taxonomy per dataset first? or keep tax_id and get dataset_id?

    tax_dict_obj = TaxaCount.new
    tax_dict = tax_dict_obj.create(taxonomies, tax_dict, dat_counts_seq)
    puts "\nPPP: tax_dict = " + tax_dict.inspect
    
    tax_dict = add_dataset_ids(taxonomies, tax_dict, dat_counts_seq)
    puts "2) tax_dict = " + tax_dict.inspect
    
    # uniq_seq_info_ids_per_d = get_uniq_seq_info_ids(seq_ids_n_cnt_per_d)
    # taxonomy_ids_per_d      = get_taxonomy_ids_per_d(uniq_seq_info_ids_per_d)
    # add_count_to_uniq_seq_info_ids_per_d(uniq_seq_info_ids_per_d, seq_ids_n_cnt_per_d)
    # 
    # taxonomy_per_d          = Hash.new{|hash, key| hash[key] = []}
    # taxonomy_ids_per_d.each do |dataset_id, v_arr|
    #     taxonomy_per_d[dataset_id] << Taxonomy.where(id: v_arr)
    # end
    return taxonomy_per_d
  end

  def create_dat_seq_cnts(my_pdrs)
    dat_seq_cnts = Array.new
    
    my_pdrs.each do |v|
      interm_hash = Hash.new
      interm_hash[:dataset_id]  = v.attributes["dataset_id"]
      interm_hash[:sequence_id] = v.attributes["sequence_id"]
      interm_hash[:seq_count]   = v.attributes["seq_count"]
      
      dat_seq_cnts << interm_hash
    end
    return dat_seq_cnts
  end

  def get_all_sequence_uniq_infos(seq_u_ids)
    SequenceUniqInfo.where(sequence_id: seq_u_ids)
  end

  def add_tax_id(dat_counts_seq, all_seq_ui)
    dat_counts_seq.each do |i|
      i[:taxonomy_id] = all_seq_ui.select {|u| u.attributes["sequence_id"] == i[:sequence_id]}.map{|a| a.attributes["taxonomy_id"]}[0]
    end
    return dat_counts_seq
  end

  def get_taxonomies(dat_counts_seq)
    tax_ids = dat_counts_seq.map{|i| i[:taxonomy_id]}.uniq
    Taxonomy.where(id: tax_ids)
  end

  # def create_tax_dat_hash(taxonomies)
  #   tax_dict = Hash.recursive
  #   taxonomies.each do |t|
  #     puts t.inspect
  #     t_vals = t.attributes.values
  #     puts "t_vals = " + t_vals.inspect
  #     tax_dict[t_vals[1]][t_vals[2]][t_vals[3]][t_vals[4]][t_vals[5]][t_vals[6]][t_vals[7]][t_vals[8]] = {}
  #     puts "tax_dict = " + tax_dict.inspect
  #   end
  #   return tax_dict
  # end

  def add_dataset_ids(taxonomies, tax_dict, dat_counts_seq)
   puts "INSIDE: "
   puts "taxonomies" + taxonomies.inspect
   puts "\ntax_dict" + tax_dict.inspect
   puts "\ndat_counts_seq" + dat_counts_seq.inspect
   taxonomies.each do |t_o|
      dat_counts_seq_t = dat_counts_seq.select{|d| d[:taxonomy_id] == t_o[:id]}
      
      dat_counts_seq_t.each do |dat_cnt_seq_t|                
        (1..7).each do |n|
          add_dat_id_knt_to_tax_dict(tax_dict, t_o.attributes.values[1, n], dat_cnt_seq_t)
        end
			end      
    end
    puts "\ntax_dict RES = "  + tax_dict.inspect
    return tax_dict
  end
  
  def add_dat_id_knt_to_tax_dict(tax_dict, taxon_str, dat_cnt_seq_t)
    d = tax_dict
    for i in (0...taxon_str.length)
      if i == taxon_str.length - 1
        tax_dict_next = d[taxon_str[i]][:datasets_ids]
        tax_dict_next[dat_cnt_seq_t[:dataset_id]] = get_knt(tax_dict_next, dat_cnt_seq_t)          
      end
      d = d[taxon_str[i]]      
    end
    d    
  end
  
  # def get_tax_dict_by_arr(tax_dict, taxon_str)
  #    d = Hash.recursive
  #    for i in (0...taxon_str.length)
  #      puts "\n-----\ni == #{i}"
  #      if i == taxon_str.length - 1
  #          puts "i == taxon_str.length - 1"
  #          # d[taxon_str[i]][:datasets_ids]
  #      end
  # 
  #      if i == 0
  #        puts "if i == 0"
  #      
  #        d = tax_dict[taxon_str[0]]
  #        puts "taxon_str[i] = " + taxon_str[i].inspect
  #        puts "1) d = " + d.inspect          
  #        next
  #      end
  #      
  #      puts "ELSE: taxon_str[i] = " + taxon_str[i].inspect
  #      puts "d[taxon_str[i]] = " + d[taxon_str[i]].inspect
  #      d = d[taxon_str[i]]
  #    end
  #    puts "d = " + d.inspect          
  #    d
  #  end
  #  
  #  
  
  # def nested_hash_value(obj, key)
  #   if obj.respond_to?(:key?) && obj.key?(key)
  #     obj[key]
  #   elsif obj.respond_to?(:each)
  #     r = nil
  #     obj.find{ |*a| r=nested_hash_value(a.last,key) }
  #     r
  #   end
  # end
  # 
  # def nested_hash_key(obj, key)
  #   if obj.respond_to?(:key?) && obj.key?(key)
  #     # puts "HERE1 obj[key] = " + obj[key].inspect
  #     key
  #   elsif obj.respond_to?(:each)
  #     r = nil
  #     obj.find{ |*a| r=nested_hash_key(a.last, key) }
  #     r
  #   end
  # end
  # 
  # 
  # def recursive_hash_call(tax_dict)
  #   tax_dict.each do |key, value|
  #     puts "key = #{key.inspect}, value = #{value.inspect}"
  #     # tax_dict_next = tax_dict[my_arr[1]][:datasets_ids]
  #     # tax_dict_next = tax_dict[my_arr[1]][:datasets_ids]
  #     # tax_dict_next[a[:dataset_id]] = get_knt(tax_dict_next, a)
  #     
  #     recursive_hash_call(value) if value.is_a? Hash
  #   end 
  # end
  # 
  # 
  def get_knt(tax_dict_next, a)  
    puts "FROM get_knt: tax_dict_next = " + tax_dict_next.inspect
    if tax_dict_next[a[:dataset_id]].is_a? Numeric
      # puts 'tax_dict_next[a[:dataset_id]] = ' + tax_dict_next[a[:dataset_id]].inspect
      knt = tax_dict_next[a[:dataset_id]] + a[:seq_count]
    else
      knt = a[:seq_count]
    end
    puts "a[:seq_count] = " + a[:seq_count].inspect
    puts "a[:dataset_id] = #{a[:dataset_id].inspect}, knt = " + knt.inspect
    return knt
  end
  
end

