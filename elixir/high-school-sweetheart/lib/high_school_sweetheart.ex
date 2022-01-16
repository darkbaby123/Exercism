defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim_leading() |> String.first()
  end

  def initial(name) do
    name |> first_letter() |> String.upcase() |> Kernel.<>(".")
  end

  def initials(full_name) do
    full_name |> String.split() |> Enum.map_join(" ", &initial(&1))
  end

  def pair(full_name_1, full_name_2) do
    i1 = initials(full_name_1)
    i2 = initials(full_name_2)

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{i1}  +  #{i2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
