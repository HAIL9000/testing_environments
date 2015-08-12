
          Puppet::Bindings.newbindings('data_module::default') do
            # In the default bindings for this module
            bind {
              # bind its name to the 'puppet' module data provider
              name         'data_module'
              to           'function'
              in_multibind 'puppet::module_data'
           }
          end
        