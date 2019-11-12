class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
    url "https://github.com/blacknon/hwatch/releases/download/v0.1.2/hwatch_0.1.2_darwin_amd64.tar.gz"
    sha256 "33cd0c2dfe3416a275b1f4390ac29c489f87e7fcf091d3876905a2279a9bda2b"
  end

  depends_on 'ncurses'

  def install
    bin.install Dir['hwatch']
  end
  test do
    system "#{bin}/hwatch"
  end
end
