class MiniAES

  def matrix klucz0, macierz
    macierz[0]= klucz0[0..3]
    macierz[1]= klucz0[4..7]
    macierz[2]= klucz0[8..11]
    macierz[3]= klucz0[12..15]
  end
  def addition macierz1, macierz2, out
    for i in 0..4
      for j in 0..4
      out[i][j]= (macierz1[i][j].to_i+macierz2[i][j].to_i)%2
      end
    end
  end
  def multiplication macierz1, macierz2, out
        out[0][0] = macierz1[0][0].to_i*macierz2[0][0].to_i + macierz1[0][1].to_i*macierz2[1][0].to_i
        out[0][1] = macierz1[0][0].to_i*macierz2[0][1].to_i + macierz1[0][1].to_i*macierz2[1][1].to_i
        out[1][0] = macierz1[1][0].to_i*macierz2[0][0].to_i + macierz1[1][1].to_i*macierz2[1][0].to_i
        out[1][1] = macierz1[1][0].to_i*macierz2[0][1].to_i + macierz1[1][1].to_i*macierz2[1][1].to_i
  end
  m = MiniAES.new

  k0 = "1011001011110110"
  k0mat = [[],[]]
  test = [[],[]]
  m.matrix k0, k0mat
  puts k0mat
  m.multiplication k0mat,k0mat, test
  puts test.inspect
end