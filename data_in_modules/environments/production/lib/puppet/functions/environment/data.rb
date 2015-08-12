
    Puppet::Functions.create_function(:'environment::data') do
      def data()
        { 'data_module::env_data_implied' => 'env_implied_a',
          'data_module::env_data_override_implied' => 'env_override_implied_c',
          'env_data' => 'env_a',
          'data_module::hash_name' => {'env_hash_key' => 'env_class_a'},
          'env_data_override' => 'env_override_c',
          'data_module::array_key' => ['env_array_a', 'env_array_b']
        }
      end
    end
  