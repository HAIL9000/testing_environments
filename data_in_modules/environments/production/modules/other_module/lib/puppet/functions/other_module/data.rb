
          Puppet::Functions.create_function(:'other_module::data') do
            def data()
              { 'other_module::module_data_implied' => 'module_implied_b',
                'other_module::module_data' => 'other_module_b',
                'other_module::hash_name' => {'module_hash_key' => 'module_class_b'},
                'other_module::array_key' => ['module_array_a', 'module_array_b']
              }
            end
          end
        