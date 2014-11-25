module Fir
  class Cli < Thor
		desc 'login USER_TOKEN', '以 USER_TOKEN 身份登陆'
		option :verbose, :aliases => '-v', :desc => '设置输出级别 v, vv, vvv'
    option :quite, :aliases => '-q', :desc => '安静模式，不输出任何选项'
    def login(token)
    	if _opt_token && _opt_token != token
	    	_puts "> 已登陆用户: #{ _opt_token }"
	    	_puts "> 替换为用户: #{ token }"
	    end
      @config['token'] = token
      @config.save
      _puts "> 当前登陆用户为：#{ token }"
    end
  end
end
