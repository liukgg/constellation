require 'date'
require "constellation/version"

module Constellation

  extend self

  NAME_CONFIG = {
    'Aquarius'   =>  { cn: '水瓶座',  en: 'Aquarius'    },
    'Pisces'     =>  { cn: '双鱼座',  en: 'Pisces'      },
    'Aries'      =>  { cn: '白羊座',  en: 'Aries'       },
    'Taurus'     =>  { cn: '金牛座',  en: 'Taurus'      },
    'Gemini'     =>  { cn: '双子座',  en: 'Gemini'      },
    'Cancer'     =>  { cn: '巨蟹座',  en: 'Cancer'      },
    'Leo'        =>  { cn: '狮子座',  en: 'Leo'         },
    'Virgo'      =>  { cn: '处女座',  en: 'Virgo'       },
    'Libra'      =>  { cn: '天秤座',  en: 'Libra'       },
    'Scorpio'    =>  { cn: '天蝎座',  en: 'Scorpio'     },
    'Sagittarius'=>  { cn: '射手座',  en: 'Sagittarius' },
    'Capricorn'  =>  { cn: '摩羯座',  en: 'Capricorn'   }
  }.freeze

  #水瓶座 Aquarius    01/20 - 02/18
  #双鱼座 Pisces      02/19 - 03/20
  #白羊座 Aries       03/21 - 04/19
  #金牛座 Taurus      04/20 - 05/20
  #双子座 Gemini      05/21 - 06/21
  #巨蟹座 Cancer      06/22 - 07/22
  #狮子座 Leo         07/23 - 08/22
  #处女座 Virgo       08/23 - 09/22
  #天秤座 Libra       09/23 - 10/23
  #天蝎座 Scorpio     10/24 - 11/22
  #射手座 Sagittarius 11/23 - 12/21
  #摩羯座 Capricorn   12/22 - 01/19
  def constellation(_date, lang = :cn)
    _date = _date.is_a?(Date) ? _date : Date.parse(_date)
    lang  = lang.to_sym

    m = _date.month
    d = _date.day

    case
    when (m == 1  && d >= 20) || (m == 2  && d <= 18)
      NAME_CONFIG['Aquarius'][lang]
    when (m == 2  && d >= 19) || (m == 3  && d <= 20)
      NAME_CONFIG['Pisces'][lang]
    when (m == 3  && d >= 21) || (m == 4  && d <= 19)
      NAME_CONFIG['Aries'][lang]
    when (m == 4  && d >= 20) || (m == 5  && d <= 20)
      NAME_CONFIG['Taurus'][lang]
    when (m == 5  && d >= 21) || (m == 6  && d <= 21)
      NAME_CONFIG['Gemini'][lang]
    when (m == 6  && d >= 22) || (m == 7  && d <= 22)
      NAME_CONFIG['Cancer'][lang]
    when (m == 7  && d >= 23) || (m == 8  && d <= 22)
      NAME_CONFIG['Leo'][lang]
    when (m == 8  && d >= 23) || (m == 9  && d <= 22)
      NAME_CONFIG['Virgo'][lang]
    when (m == 9  && d >= 23) || (m == 10 && d <= 23)
      NAME_CONFIG['Libra'][lang]
    when (m == 10 && d >= 24) || (m == 11 && d <= 22)
      NAME_CONFIG['Scorpio'][lang]
    when (m == 11 && d >= 22) || (m == 12 && d <= 21)
      NAME_CONFIG['Sagittarius'][lang]
    when (m == 12 && d >= 22) || (m == 1  && d <= 19)
      NAME_CONFIG['Capricorn'][lang]
    else
      raise "日期错误！"
    end
  end

end
