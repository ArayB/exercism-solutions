object Hamming {
  def compute(s1: String, s2: String): Int = {
    if(s1.length != s2.length)
       throw new IllegalArgumentException("Lengths do not match")
    else
      println(s1 diff s2)
      (s1 diff s2).length
    0
  }
}
