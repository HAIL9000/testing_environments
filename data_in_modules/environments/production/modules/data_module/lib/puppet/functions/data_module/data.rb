
          Puppet::Functions.create_function(:'data_module::data') do
            def data()
              { 'data_module::module_data_implied' => 'module_implied_b',
                'data_module::module_data' => 'module_b',
                'data_module::hash_name' => {'module_hash_key' => 'module_class_b'},
                'data_module::array_key' => ['module_array_a', 'module_array_b']
              }
            end
          end
        