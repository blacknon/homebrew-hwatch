class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
    url "https://github.com/blacknon/hwatch/releases/download/0.3.1/hwatch-0.3.1.x86_64-apple-darwin.tar.gz"
    sha256 "62b89250d443723b6748a8da842174df0b8f0343e44f00d066faa903eab0104f"
  end

  def install
    bin.install Dir['hwatch']
  end
  test do
    system "#{bin}/hwatch"
  end
end
