% Solicitar el año de nacimiento
anio_nacimiento = input("Ingrese su año de nacimiento: ");

% Determinar si el año es bisiesto
bisiesto = false;
if (anio_nacimiento % 4 == 0)
    if (anio_nacimiento % 100 != 0 || anio_nacimiento % 400 == 0)
        bisiesto = true;
    end
end

% Almacenar el resultado
historial = [anio_nacimiento, bisiesto];

% Mostrar el resultado
if (bisiesto)
    fprintf("El año %d fue bisiesto.\n", anio_nacimiento);
else
    fprintf("El año %d no fue bisiesto.\n", anio_nacimiento);
end

% Mostrar el historial
fprintf("Historial:\n");
for i = 1:length(historial)
    fprintf("Año: %d, Bisiesto: %d\n", historial(i, 1), historial(i, 2));
end

