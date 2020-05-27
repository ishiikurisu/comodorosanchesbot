class ComodoroSanches
    def initialize recipes_folder
        @recipes = [
            '¿te mereces una cerveza hoy, sí?',
            '¿coronavirus? Prefiero como coronabeer',
            '¿Conoces a Johnas? Él es el mejor. Deberías tomar una cerveza con él.'
        ]
    end

    def hello
        "¿Hola como estas?"
    end

    def talk
        "Sí sí, ¿Pero viste esto?\n\n#{self.recipe}"
    end

    def recipe
        @recipes[Random.rand(@recipes.length)]
    end
end
