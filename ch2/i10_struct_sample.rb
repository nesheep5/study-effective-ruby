require 'csv'

# --- Hashを利用した年間気温クラス
class AnnualWeatherWithHash
  def initialize(file_name)
    @readings = []
    CSV.foreach(file_name, headers: true) do |row|
      @readings << {
        date: Date.parse(row[2]),
        high: row[10].to_f,
        low: row[11].to_f,
      }
    end
  end

  # 平均気温
  def mean
    return 0.0 if @readings.size.zero?
    total = @readings.reduce(0.0) do |sum, reading|
      sum + (reading[:high] + reading[:low]) / 2.0
    end
    total / @readings.size.to_f
  end
end

# --- Structを利用した年間気温クラス
class AnnualWeatherWithStruct
   # Structを作成しReading定数に保持
  Reading = Struct.new(:date, :high, :low) do
    def mean  # ブロックでメソッド定義することも可能
      (high + low) / 2.0
    end
  end

  def initialize(file_name)
    @readings = []
    CSV.foreach(file_name, headers: true) do |row|
      # Reading定数をクラスのように利用することができる
      @readings << Reading.new(Date.parse(row[2]), row[10].to_f, row[11].to_f)
    end
  end

  # 平均気温
  def mean
    return 0.0 if @readings.size.zero?
    total = @readings.reduce(0.0) { |sum, reading| sum + reading.mean }
    total / @readings.size.to_f
  end
end

# --- 参考：Classを利用した年間気温クラス
class AnnualWeatherWithClass
  class Reading
    attr_accessor :date, :high, :low

    def mean
      (high + low) / 2.0
    end
  end

  def initialize(file_name)
    @readings = []
    CSV.foreach(file_name, headers: true) do |row|
      @readings << Reading.new(Date.parse(row[2]), row[10].to_f, row[11].to_f)
    end
  end

  # 平均気温
  def mean
    return 0.0 if @readings.size.zero?
    total = @readings.reduce(0.0) { |sum, reading| sum + reading.mean }
    total / @readings.size.to_f
  end
end
