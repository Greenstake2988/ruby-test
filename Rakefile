namespace :admin do
  desc "Borrando todas los archivos en /tmp"
  task :clean_tmp do
    Dir["/tmp/*"].each do |f|
      next unless File.file?(f)
      print "¿Borrar #{f}? "
      answer = $stdin.gets
      case answer
      when /^y/
        File.unlink(f)
      when /^q/
        break
      end
    end
  end
end
