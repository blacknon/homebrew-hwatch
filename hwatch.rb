class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
      url "https://github.com/blacknon/hwatch/releases/download/0.2.0/hwatch_0.2.0_darwin_amd64.tar.gz"
    sha256 "ea127e57b362c0e4adbea86365fc9b3913ba5226b5ad8d6e12f8a17c413e6d43"
  end

  def install
    bin.install Dir['hwatch']
  end
  test do
    system "#{bin}/hwatch"
  end
end
