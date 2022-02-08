class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
      url "https://github.com/blacknon/hwatch/releases/download/0.3.0/hwatch_0.3.0_darwin_amd64.tar.gz"
    sha256 "ef0a2cd878ba7c4580f4391095be596f08b779f9ed55eb7c3033bf1ae4a7de7e"
  end

  def install
    bin.install Dir['hwatch']
  end
  test do
    system "#{bin}/hwatch"
  end
end
