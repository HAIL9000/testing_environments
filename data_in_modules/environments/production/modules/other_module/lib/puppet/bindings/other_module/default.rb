
          Puppet::Bindings.newbindings('other_module::default') do
            # In the default bindings for this module
            bind {
              # bind its name to the 'puppet' module data provider
              name         'other_module'
              to           'function'
              in_multibind 'puppet::module_data'
           }
          end
        