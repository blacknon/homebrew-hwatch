class Hwatch < Formula
  desc "alternative watch command"
  homepage "https://github.com/blacknon/hwatch"
  if OS.mac?
    url "https://github.com/blacknon/hwatch/releases/download/0.1.1/hwatch_0.1.1_darwin_amd64.tar.gz"
    sha256 "1c7a0c600f9c95d5e04936185e71db798d1c324b9053f524bd82051d0cb55fb4"
  end

  depends_on 'ncurses'

  def install
    bin.install Dir['hwatch']
  end
  test do
    system "#{bin}/hwatch"
  end
end
