require 'spec_helper'

describe Constellation do
  it 'has a version number' do
    expect(Constellation::VERSION).not_to be nil
  end

  describe '.constellation' do
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
