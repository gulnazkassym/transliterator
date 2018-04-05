class Word < ActiveRecord::Base
  before_save :convert
  validates :text, presence: true

  def convert
    text.each_line do |line|
        t = line.gsub("а", "a").gsub("ә", "á").gsub("б", "b").gsub("в","v").gsub("г","g").gsub("ғ","ǵ")
                   .gsub("д", "d").gsub("е","e").gsub("ж","j").gsub("з","z").gsub("и","ı").gsub("й","ı").gsub("к","k").gsub("қ","q")
                   .gsub("л","l").gsub("м","m").gsub("н","n").gsub("ң","ń").gsub("о","o").gsub("ө","ó").gsub("п","p")
                   .gsub("р","r").gsub("с","s").gsub("т","t").gsub("у","ý").gsub("ұ","u").gsub("ү","ú").gsub("ф","f")
                   .gsub("х","h").gsub("һ","h").gsub("ц","ts").gsub("ч","ch").gsub("ш","sh").gsub("щ","sh").gsub("ы","y")
                   .gsub("і","i").gsub("э","e").gsub("ю","yu").gsub("я","ya")
                   .gsub("А","A").gsub("Ә","Á").gsub("Б","B").gsub("В","V").gsub("Г","G").gsub("Ғ","Ǵ").gsub("Д","D")
                   .gsub("Е","E").gsub("Ж","J").gsub("З","Z").gsub("И","I").gsub("Й","I").gsub("К","K").gsub("Қ","Q")
                   .gsub("Л","L").gsub("М","M").gsub("Н","N").gsub("Ң","Ń").gsub("О","O").gsub("Ө","Ó").gsub("П","P")
                   .gsub("Р","R").gsub("С","S").gsub("Т","T").gsub("У","Ý").gsub("Ұ","U").gsub("Ү","Ú")
                   .gsub("Ф","F").gsub("Х","H").gsub("Һ","H").gsub("Ц","TS").gsub("Ч","CH").gsub("Ш","SH").gsub("Щ","SH")
                   .gsub("Ы","Y").gsub("І","I").gsub("Э","E").gsub("Ю","YU").gsub("Я","YA")

        #text.replace(t)
        text << t
    end
      text
  end
end
