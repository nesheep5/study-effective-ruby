# UFO演算子について

# 1.0.10 などバージョンを表すクラス
class Version
  include Comparable # < <= == >= > を提供する

  attr_accessor :major, :minor, :patch
  def initialize(version)
    @major, @minor, @patch =
    version.split('.').map(&:to_i)
  end

  # 順序を定義する
  def <=>(other)
    return nil unless other.is_a?(Version)

    [major <=> other.major,
     minor <=> other.minor,
     patch <=> other.patch].find { |n| !n.zero? } || 0
   end
end


v_1_0_0 = Version.new('1.0.0')
v_1_9_2 = Version.new('1.9.2')
v_1_3_8 = Version.new('1.3.8')

vs = [v_1_0_0, v_1_9_2, v_1_3_8]
vs.sort
# => [#<Version:0x00007f954d96ed50 @major=1, @minor=0, @patch=0>,
#  #<Version:0x00007f954d96e878 @major=1, @minor=9, @patch=0>,
#  #v_1_0_0<Version:0x00007f954d96eb70 @major=1, @minor=11, @patch=1>]

v_1_0_0 > v_1_9_2