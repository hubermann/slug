#coding: utf-8
def buildslug(text)
    #encoding: utf-8
    #strip the text
    text = text.strip

    #text = text.Unicode.decompose(text).delete('^0-9A-Za-z')
    #blow away apostrophes
    text.gsub! /['`]/,""

    # @ --> at, and & --> and
    text.gsub! /\s*@\s*/, " at "
    text.gsub! /\s*&\s*/, " and "
    text.gsub! /\s*ñ\s*/, "n"
    text.gsub! /á|ã|à|ä|â/, 'a'
    text.gsub! /é|è|ë|ê/, 'e'
    text.gsub! /í|ì|ï|î/, 'i'
    text.gsub! /ó|õ|ò|ô|ö/, 'o'
    text.gsub! /ú|ù|ü|û/, 'u'

    #replace all non alphanumeric, underscore or periods with underscore
     text.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '-'  

     #convert double underscores to single
     text.gsub! /__+/,"-"
     text.gsub! /--+/,"-"

     #strip off leading/trailing underscore
     text.gsub! /\A[_\.]+|[_\.]+\z/,""

     puts text
  end


  texto = "José Francisco de San Martín (Reducción de Yapeyú, Virreinato del Río de la Plata, 25 de febrero de 1778 - Boulogne-sur-Mer, Francia, 17 de agosto de 1850) fue un militar argentino, cuyas campañas fueron decisivas para las independencias de la Argentina, Chile y el Perú.
El 6 de diciembre de 1783, con aún cinco años, y previa estadía en Buenos Aires, viajó a España con su familia, pues su padre había sido destinado a Málaga. Comenzó sus estudios en el Real Seminario de Nobles de Madrid y en la Escuela de Temporalidades de Málaga en 1786. Ingresó posteriormente en el ejército haciendo su carrera militar en el Regimiento de Murcia."

  buildslug(texto)