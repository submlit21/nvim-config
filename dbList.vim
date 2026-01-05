" let g:db_ui_timeout = 10000
" let g:db_ui_output_encoding = 'utf-8'
" let g:db_ui_use_location_list = 0
 " function s:resolve_production_url()
 "   let url = system('get-prod-url')
 "   return url
 " end

" let g:dbs = [
" \ { 'name': 'dev', 'url': 'postgres://postgres:mypassword@localhost:5432/my-dev-db' }
" \ { 'name': 'staging', 'url': 'postgres://postgres:mypassword@localhost:5432/my-staging-db' },
" \ { 'name': 'wp', 'url': 'mysql://root@localhost/wp_awesome' },
" \ { 'name': 'production', 'url': function('s:resolve_production_url') },
" \ ]
" let g:dbs = [
" \ {'name' : 'ubuntuMySQL','url' : 'mysql://root@localhost:33066'},
" \ {'name' : 'localMySQL','url' : 'mysql://root@localhost:3306'},
" \ {'name' : 'submlit','url' : 'mysql://sf@localhost:3306'}
" \ ]
