defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna_to_rna = %{'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

    Enum.reduce(dna, [], fn nuc, acc ->
      acc ++ Map.get(dna_to_rna, [nuc])
    end)
  end
end
