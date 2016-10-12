class Bob {
  def hey(input: String): String = {
    if(isSilence(input))
      "Fine. Be that way!"
    else if(isAllUppercase(input))
      "Whoa, chill out!"
    else if(isQuestion(input))
      "Sure."
    else
      "Whatever."
  }

  private def isAllUppercase(s: String): Boolean = {
    s.forall(!_.isLower)
  }

  private def isQuestion(s: String): Boolean = {
    s.endsWith("?")
  }

  private def isSilence(s: String): Boolean = {
    s.trim().isEmpty()
  }
}
