
    class data_module($env_data_implied,
                         $module_data_implied,
                         $env_data_override_implied,
                         $apache_server_port_implied) {
      # lookup data from the environment function databinding
      notify { "env_data_implied $env_data_implied": }
      $lookup_env = lookup("env_data")
      notify { "env_data $lookup_env": }

      # lookup data from the module databinding
      notify { "module_data_implied $module_data_implied": }
      $lookup_module = lookup("data_module::module_data")
      notify { "module_data $lookup_module": }

      # lookup data from another modules databinding
      $lookup_module2 = lookup("other_module::module_data")
      notify { "module_data $lookup_module2": }

      # ensure env can override module
      notify { "env_data_override_implied $env_data_override_implied": }
      $lookup_override = lookup("env_data_override")
      notify { "env_data_override $lookup_override": }

      # should fall-back to hiera global.yaml data
      notify { "apache_server_port_implied $apache_server_port_implied": }
      $lookup_port = lookup("apache_server_port")
      notify { "apache_server_port $lookup_port": }

      # should be able to merge hashes across sources
      #   this mimicks/covers behavior for including classes
      $lookup_hash = lookup("data_module::hash_name",Hash[String,String],'hash')
      notify { "hash_name $lookup_hash": }

      # should be able to make an array across sources
      #   this mimicks/covers behavior for including classes
      $lookup_array = lookup("data_module::array_key",Array[String],'unique')
      notify { "yep": message => "array_key $lookup_array" }
    }