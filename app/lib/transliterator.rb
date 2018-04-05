class Transliterator
  LETTERS = {
      "а" => "a",
      "ә" => "á",
      "б" => "b",
      "в" => "v",
      "г" => "g",
      "ғ" => "ǵ",
      "д" => "d",
      "е" => "e",
      "ё" => "ıo",
      "ж" => "j",
      "з" => "z",
      "и" => "ı",
      "й" => "ı",
      "к" => "k",
      "қ" => "q",
      "л" => "l",
      "м" => "m",
      "н" => "n",
      "ң" => "ń",
      "о" => "o",
      "ө" => "ó",
      "п" => "p",
      "р" => "r",
      "с" => "s",
      "т" => "t",
      "у" => "ý",
      "ұ" => "u",
      "ү" => "ú",
      "ф" => "f",
      "х" => "h",
      "һ" => "h",
      "ц" => "ts",
      "ч" => "ch",
      "ш" => "sh",
      "щ" => "sch",
      "ы" => "y",
      "і" => "i",
      "э" => "e",
      "ю" => "ıý",
      "я" => "ıa",
      "А" => "A",
      "Ә" => "Á",
      "Б" => "B",
      "В" => "V",
      "Г" => "G",
      "Ғ" => "Ǵ",
      "Д" => "D",
      "Е" => "E",
      "Ё" => "Io",
      "Ж" => "J",
      "З" => "Z",
      "И" => "I",
      "Й" => "I",
      "К" => "K",
      "Қ" => "Q",
      "Л" => "L",
      "М" => "M",
      "Н" => "N",
      "Ң" => "Ń",
      "О" => "O",
      "Ө" => "Ó",
      "П" => "P",
      "Р" => "R",
      "С" => "S",
      "Т" => "T",
      "У" => "Ý",
      "Ұ" => "U",
      "Ү" => "Ú",
      "Ф" => "F",
      "Х" => "H",
      "Һ" => "H",
      "Ц" => "Ts",
      "Ч" => "Ch",
      "Ш" => "Sch",
      "Ы" => "Y",
      "І" => "I",
      "Э" => "E",
      "Ю" => "Iý",
      "Я" => "Ia"
  }

  def initialize(resume)
    @resume = resume
  end


  def convert
    file_path = "#{Rails.root}/public/uploads/resume/attachment/#{@resume.id}/#{@resume.id}.docx"
    File.open(file_path, 'a+') do |file|
      file.each_line do |line|

        LETTERS.each do |k, v|
          line.gsub!(k, v)

        end
        file.write(line)
      end

    end
  end
  end