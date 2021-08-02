require 'spec_helper'

describe Constellation do
  it 'has a version number' do
    expect(Constellation::VERSION).not_to be nil
  end

  describe '.constellation' do
    context 'Chinese' do
      it '水瓶座' do
        expect(Constellation.constellation(Date.parse "20000120")).to eql "水瓶座"
        expect(Constellation.constellation("20000120")).to eql "水瓶座"
        expect(Constellation.constellation("20000218")).to eql "水瓶座"
      end

      it '双鱼座' do
        constellation = "双鱼座"

        expect(Constellation.constellation("20000219")).to eql constellation
        expect(Constellation.constellation("20000320")).to eql constellation
      end

      it '白羊座' do
        constellation = "白羊座"

        expect(Constellation.constellation("20000321")).to eql constellation
        expect(Constellation.constellation("20000419")).to eql constellation
      end

      it '金牛座' do
        constellation = "金牛座"

        expect(Constellation.constellation("20000420")).to eql constellation
        expect(Constellation.constellation("20000520")).to eql constellation
      end

      it '双子座' do
        constellation = "双子座"

        expect(Constellation.constellation("20000521")).to eql constellation
        expect(Constellation.constellation("20000621")).to eql constellation
      end

      it '巨蟹座' do
        constellation = "巨蟹座"

        expect(Constellation.constellation("20000622")).to eql constellation
        expect(Constellation.constellation("20000722")).to eql constellation
      end

      it '狮子座' do
        constellation = "狮子座"

        expect(Constellation.constellation("20000723")).to eql constellation
        expect(Constellation.constellation("20000822")).to eql constellation
      end

      it '处女座' do
        constellation = "处女座"

        expect(Constellation.constellation("20000823")).to eql constellation
        expect(Constellation.constellation("20000922")).to eql constellation
      end

      it '天秤座' do
        constellation = "天秤座"

        expect(Constellation.constellation("20000923")).to eql constellation
        expect(Constellation.constellation("20001023")).to eql constellation
      end

      it '天蝎座' do
        constellation = "天蝎座"

        expect(Constellation.constellation("20001024")).to eql constellation
        expect(Constellation.constellation("20001122")).to eql constellation
      end

      it '射手座' do
        constellation = "射手座"

        expect(Constellation.constellation("20001123")).to eql constellation
        expect(Constellation.constellation("20001221")).to eql constellation
      end

      it '摩羯座' do
        constellation = "摩羯座"

        expect(Constellation.constellation("20001222")).to eql constellation
        expect(Constellation.constellation("20000119")).to eql constellation
      end
    end
  end

  context 'English' do
    it 'Aquarius' do
      expect(Constellation.constellation(Date.parse("20000120"), :en)).to eql "Aquarius"
      expect(Constellation.constellation("20000120", :en)).to eql "Aquarius"
      expect(Constellation.constellation("20000218", :en)).to eql "Aquarius"
    end

    it 'Pisces' do
      constellation = "Pisces"

      expect(Constellation.constellation("20000219", :en)).to eql constellation
      expect(Constellation.constellation("20000320", :en)).to eql constellation
    end

    it 'Aries' do
      constellation = "Aries"

      expect(Constellation.constellation("20000321", :en)).to eql constellation
      expect(Constellation.constellation("20000419", :en)).to eql constellation
    end

    it 'Taurus' do
      constellation = "Taurus"

      expect(Constellation.constellation("20000420", :en)).to eql constellation
      expect(Constellation.constellation("20000520", :en)).to eql constellation
    end

    it 'Gemini' do
      constellation = "Gemini"

      expect(Constellation.constellation("20000521", :en)).to eql constellation
      expect(Constellation.constellation("20000621", :en)).to eql constellation
    end

    it 'Cancer' do
      constellation = "Cancer"

      expect(Constellation.constellation("20000622", :en)).to eql constellation
      expect(Constellation.constellation("20000722", :en)).to eql constellation
    end

    it 'Leo' do
      constellation = "Leo"

      expect(Constellation.constellation("20000723", :en)).to eql constellation
      expect(Constellation.constellation("20000822", :en)).to eql constellation
    end

    it 'Virgo' do
      constellation = "Virgo"

      expect(Constellation.constellation("20000823", :en)).to eql constellation
      expect(Constellation.constellation("20000922", :en)).to eql constellation
    end

    it 'Libra' do
      constellation = "Libra"

      expect(Constellation.constellation("20000923", :en)).to eql constellation
      expect(Constellation.constellation("20001023", :en)).to eql constellation
    end

    it 'Scorpio' do
      constellation = "Scorpio"

      expect(Constellation.constellation("20001024", :en)).to eql constellation
      expect(Constellation.constellation("20001122", :en)).to eql constellation
    end

    it 'Sagittarius' do
      constellation = "Sagittarius"

      expect(Constellation.constellation("20001123", :en)).to eql constellation
      expect(Constellation.constellation("20001221", :en)).to eql constellation
    end

    it 'Capricorn' do
      constellation = "Capricorn"

      expect(Constellation.constellation("20001222", :en)).to eql constellation
      expect(Constellation.constellation("20000119", :en)).to eql constellation
    end
  end


  describe '.constellation' do
    context 'Chinese' do
      it '水瓶座' do
        expect(Constellation.date_by_constellation("水瓶座")).to eql "01/20 - 02/18"
      end
    end

    context 'English' do
      it 'Aquarius' do
        expect(Constellation.date_by_constellation("Aquarius")).to eql "01/20 - 02/18"
      end
    end
  end
end
