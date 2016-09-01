require "constellation/version"

module Constellation

  extend self

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
  def constellation(_date)
    _date = _date.is_a?(Date) ? _date : Date.parse(_date)

    m = _date.month
    d = _date.day

    case
    when (m == 1  && d >= 20) || (m == 2  && d <= 18)
      "水瓶座"
    when (m == 2  && d >= 19) || (m == 3  && d <= 20)
      "双鱼座"
    when (m == 3  && d >= 21) || (m == 4  && d <= 19)
      "白羊座"
    when (m == 4  && d >= 20) || (m == 5  && d <= 20)
      "金牛座"
    when (m == 5  && d >= 21) || (m == 6  && d <= 21)
      "双子座"
    when (m == 6  && d >= 22) || (m == 7  && d <= 22)
      "巨蟹座"
    when (m == 7  && d >= 23) || (m == 8  && d <= 22)
      "狮子座"
    when (m == 8  && d >= 23) || (m == 9  && d <= 22)
      "处女座"
    when (m == 9  && d >= 23) || (m == 10 && d <= 23)
      "天秤座"
    when (m == 10 && d >= 24) || (m == 11 && d <= 22)
      "天蝎座"
    when (m == 11 && d >= 22) || (m == 12 && d <= 21)
      "射手座"
    when (m == 12 && d >= 22) || (m == 1  && d <= 19)
      "摩羯座"
    else
      raise "日期错误！"
    end
  end

end
