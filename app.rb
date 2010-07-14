
get '/' do
  erb :index
end

get '/vim-rails' do
  @abbreviations = [
    [':a',    ':action =>'],
    [':c',    ':co________ =>'],
    [':o',    ':object =>'],
    [':p',    ':partial =>'],
    ['AC::',  'ActionController'],
    ['AD::',  'ActionDispatch'],
    ['AE::',  'ActiveResource'],
    ['AM::',  'ActionMailer'],
    ['AO::',  'ActiveModel'],
    ['AR::',  'ActiveRecord'],
    ['AS::',  'ActiveSupport'],
    ['AV::',  'ActionView'],
    ['AWS::', 'ActionWebService'],
    ['co[',   'cookies'],
    ['fi(',   'find'],
    ['fl[',   'flash'],
    ['hd[',   'headers'],
    ['logd(', 'logger.debug'],
    ['loge(', 'logger.error'],
    ['logf(', 'logger.fatal'],
    ['logi(', 'logger.info'],
    ['logw(', 'logger.warn'],
    ['pa[',   'params'],
    ['ra(',   'render  :action =>'],
    ['rc(',   'render  :controller =>'],
    ['re(',   'redirect_to'],
    ['rea(',  'redirect_to     :action =>'],
    ['rec(',  'redirect_to     :controller =>'],
    ['rf(',   'render  :file =>'],
    ['ri(',   'render  :inline =>'],
    ['rj(',   'render  :json =>'],
    ['rl(',   'render  :layout =>'],
    ['rp(',   'render  :partial =>'],
    ['rq[',   'request'],
    ['rr(',   'render'],
    ['rs[',   'response'],
    ['rst(',   'respond_to'],
    ['rt(',   'render  :text =>'],
    ['rx(',   'render  :xml =>'],
    ['se[',   'session']
  ]

  @commands = [
    ':Rails {path}',
    ':Rake {target}',
    ':Rdoc',
    ':Rdestroy',
    ':Redit {file}',
    ':Rfind [{file]',
    ':Rgenerate {options}',
    ':Rlog [{logfile}]',
    ':Rinvert',
    ':Rpreview',
    ':Rscript {script} {options}',
    ':Rserver[!]',
    ':Rtags'
  ]

  @navigation = [
    ':Rapi [{name]',
    ':Rcontroller [{name]',
    ':Renvironment [{name}]',
    ':Rfixtures [{name]',
    ':RfunctionalTest [{name]',
    ':Rhelper [{name]',
    ':Rinitializer [{name}]',
    ':Rintegrationtest [{name]',
    ':Rjavascript',
    ':Rlib [{name}]',
    ':Rlocale [{name}]',
    ':Rlayout [{name]',
    ':Rmailer [{name}]',
    ':Rmetal [{name}]',
    ':Rmodel [{name}]',
    ':Rmigration [{pattern]',
    ':Robserver [{name]',
    ':Rplugin [{plugin}[/{path}]]',
    ':Rspec [{name}]',
    ':Rstylesheet [{name}]',
    ':Rtask [{name}]',
    ':Runittest [{name]',
    ':Rview [[{controller/]{view}]'
  ]

  @alternate_related = [
    ['model',   'unit test',  'schema definition'],
    ['controller', 'functional test','view'],
    ['view',    'functional test', 'controller#method'],
    ['migration', 'previous migration', 'next migration'],
    ['config/database.yml','config/routes.rb','config/environments/*.rb']
  ]

  @vim_commands = [
    "h/j/k/l - left/down/up/right",
    "G/gg - Bottom/top of screen",
    ":number - Go to line 'number'.",
    "/term - Search for 'term'. n goes to next match, S-n goes to previous match.",
    "dd - Delete line.",
    "D - Delete to end of line.",
    "P/p - Paste before/after.",
    "O/o - Open above/below.",
    "S/s - Substitute line/character.",
    'A/a - Append at end of line/append.',
    "W/w - Next word.",
    "B/b - Previous word.",
    "E/e - End of word.",
    "r/r - Replace mode/character.",
    "~ - Toggle case.",
    "$/0 - End/beginning of line.",
    "</> - un-indent/indent.",
    "v - Visual mode.",
    "gv - Re-select last visual selection.",
    "C/c - Change to end of line/change.",
    ". - Repeat command.",
    ":1,$d - Delete all lines in file.",
    ":[%]s/search/replace/[g,c] - Search and replace. g - global, c - confirm, % - entire file.",
    ":w/:q - Save/quit file.",
    "!command - Run regular shell command.",
    ":tabonly - Close all tabs except current."
  ]

  erb :vim_rails
end


def cycle(number, even = 'even', odd = 'odd')
  number % 2 == 0 ? odd : even 
end
