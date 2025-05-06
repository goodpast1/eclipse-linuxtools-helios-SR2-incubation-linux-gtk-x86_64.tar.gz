from nltk.chat.util import Chat,reflections

movies={
  "Interstellar":["10:00AM","2:00PM","4:00PM"],
  "Mean Girls":["9:00AM","11:00AM","3:00PM"],
  "Maze Runner":["1:00PM","4:00PM","8:00PM"],
}

patterns=[
  (r'hi|hello|hey|yo|hi there'
  ["Hello there!how can i help you","Hi,what can i do for you today? "]
  ),
  (r'who|who are you|how are you'
  ["I am MovieBot,here to assist for booking tickets !","I am doing well thanks for asking,how can i help you? "]
  ),
  (r'(.*)movie',
  ['Here is a list of movies screening today '+','.join(movies.keys())]),
  (r)
]