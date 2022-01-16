defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim_leading() |> String.first()
  end

  def initial(name) do
    (name |> first_letter() |> String.upcase()) <> "."
  end

  def initials(full_name) do
    full_name |> String.split() |> Enum.map_join(" ", &initial(&1))
  end

  def pair(full_name_1, full_name_2) do
    initials_1 = initials(full_name_1)
    initials_2 = initials(full_name_2)

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials_1}  +  #{initials_2}     **
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
