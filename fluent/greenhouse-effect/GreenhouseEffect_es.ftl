# ..................................................................
# Reusable strings that may be used in patterns below.
# ..................................................................
# ..
# Light sources
-microwave = microondas
-infrared = infrarrojo
-visible = visible
-ultraviolet = ultravioleta

-infraredFeminine = infrarroja
-infraredFeminineCapitalized = Infrarroja

-microwaveCapitalized = Microondas
-infraredCapitalized = Infrarrojo
-visibleCapitalized = Visible
-ultravioletCapitalized = Ultravioleta

# ..
# Target molecules
-carbonMonoxide = monóxido de carbono
-nitrogen = nitrógeno
-oxygen = oxígeno
-carbonDioxide = dióxido de carbono
-methane = metano
-water = agua
-nitrogenDioxide = dióxido de nitrógeno
-ozone = ozono

-carbonMonoxideCapitalized = Monóxido de carbono
-nitrogenCapitalized = Nitrógeno
-oxygenCapitalized = Oxígeno
-carbonDioxideCapitalized = Dióxido de Carbono
-methaneCapitalized = Metano
-waterCapitalized = Agua
-nitrogenDioxideCapitalized = Dióxido de Nitrógeno
-ozoneCapitalized = Ozono

# ..
# Bond movement for excited states descriptions
-bendUpAndDown = se doblan de arriba abajo
-stretchBackAndForth = se estiran de un lado a otro

# ..
# Molecule description phrases for excited states.
-glows = brilla
-rotatesClockwise = gira en sentido horario
-rotatesCounterClockwise = gira en sentido antihorario

# ..
# Photon and molecule movement directions
-left = la izquierda
-right = la derecha
-up = arriba
-down = abajo
-upAndToTheLeft = arriba y a la izquierda
-upAndToTheRight = arriba y a la derecha
-downAndToTheLeft = abajo y a la izquierda
-downAndToTheRight = abajo y a la derecha

# ..
# Unknown catch
-unknown = DESCONOCIDO

# ..................................................................
# Overall screen summary descriptions.
# ..................................................................
playAreaSummary = El Área de Juego es una ventana de observación configurada con una fuente de luz y una molécula. Tiene opciones para la fuente de luz y la molécula.
controlAreaSummary = El Área de Control tiene opciones para la rapidez con que ocurre la acción en la ventana de observación, incluidos los botones para pausar y avanzar. También puede acceder a detalles sobre el espectro de luz y reiniciar la simulación.
interactionHint = Encienda la fuente de luz para explorar.

# ...
# Dynamic description describing the screen.
# Only one of these 4 descriptions will be shown at a time to describe the current state of the sim.

# Describing the simulation when the sim is playing and the photon emitter is on.
dynamicPlayingEmitterOnScreenSummaryPattern = Actualmente, la fuente de luz { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infraredFeminine }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} emite fotones { $simSpeed ->
    [ NORMAL ] directamente a
    *[ SLOW ] a velocidad lenta directamente a
}  la molécula de { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

# Describing the simulation when the sim is playing and the photon emitter is off.
dynamicPlayingEmitterOffScreenSummaryPattern = Actualmente, la fuente de luz { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infraredFeminine }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} está apagada y apunta directamente a la molécula de { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

# Describing the simulation when the sim is paused and the photon emitter is on.
dynamicPausedEmitterOnScreenSummaryPattern = Actualmente, la simulación { $simSpeed ->
   [ NORMAL ] está pausada
  *[ SLOW ] está pausada a velocidad lenta
}. La fuente de luz { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infraredFeminine }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} emite fotones directamente a la molécula de { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

# Describing the simulation when the sim is paused and the photon emitter is off.
dynamicPausedEmitterOffScreenSummaryPattern = Actualmente, la simulación { $simSpeed ->
   [ NORMAL ] está pausada
  *[ SLOW ] está pausada a velocidad lenta
}. La fuente de luz { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infraredFeminine }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
}  está apagada y apunta directamente a la molécula de { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

# When the target molecule has broken apart, the above screen summaries include this
# hint to continue the sim. The $summary variable is the sentence constructed above.
screenSummaryWithHintPattern = { $summary } Restablecer o cambiar molécula.

# ..................................................................
# Descriptions for the Observation Window.
# ..................................................................
observationWindowLabel = Ventana de Observación

# ..
# Description of the light source when it is off.
photonEmitterOffDescriptionPattern = La fuente de luz { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infraredFeminine }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} está apagada y apunta directamente a la molécula de { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

# ..
# Description of the light source when it is on and emitting photons that do not
# interact with the target molecule.
inactiveAndPassesPhaseDescriptionPattern = El fotón { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} pasa a través de la molécula de { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in bending and stretching visuals.
absorptionPhaseBondsDescriptionPattern = Fotón { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} absorbido,los enlaces de la molécula { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] { -bendUpAndDown }
  [STRETCH_BACK_AND_FORTH] { -stretchBackAndForth }
  *[ UNKNOWN ] { -unknown }
}.

# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in glowing and rotating visuals.
absorptionPhaseMoleculeDescriptionPattern = Fotón { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} absorbido, la molécula { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} { $excitedRepresentation ->
  [GLOWING] { -glows }
  [ROTATES_CLOCKWISE] { -rotatesClockwise }
  [ROTATES_COUNTER_CLOCKWISE] { -rotatesCounterClockwise }
  *[ UNKNOWN ] { -unknown }
}.

# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in breaking apart visuals.
# Note that the actual resulting molecules are not translatable because the molecular formula
# is used. A note in the implementation states that the molecular formula should not be
# translatable.
breakApartPhaseDescriptionPattern = Fotón { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} absorbido, la molécula { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} se divide en { $firstMolecule } y { $secondMolecule }. { $firstMolecule } y { $secondMolecule } flotan alejandose.

# ..
# Description of the geometry of the active molecule.
geometryLabelPattern = Esta molécula tiene una geometría { $geometry ->
  [LINEAR] lineal
  [BENT] angular
  [TETRAHEDRAL] tetraédrica
  *[DIATOMIC] diatómica
}.

# More information about the molecular geometry.
linearGeometryDescription = Lineal, molécula con dos o tres átomos unidos para formar una línea recta. El ángulo de enlace es de 180 grados.
bentGeometryDescription = Angular, molécula con un átomo central unido a otros dos átomos que forman un ángulo. El ángulo de enlace varía por debajo de los 120 grados.
tetrahedralGeometryDescription = Tetraédrica, molécula con un átomo central unido a otros cuatro átomos formando un tetraedro con ángulos de 109.5° entre ellos, como un dado de cuatro caras.

# ..................................................................
# Descriptions for the light source button.
# ..................................................................
lightSourceButtonLabelPattern = Fuente de Luz { $lightSource ->
  [ MICRO ] { -microwaveCapitalized }
  [ INFRARED ] { -infraredFeminineCapitalized }
  [ VISIBLE ] { -visibleCapitalized }
  [ ULTRAVIOLET ] { -ultravioletCapitalized }
  *[ UNKNOWN ] { -unknown }
}
lightSourceButtonPressedHelpText = Apague la fuente de luz para detener los fotones.
lightSourceButtonUnpressedHelpText = Encienda la fuente de luz para iniciar los fotones.

# ..................................................................
# Descriptions for the light source and molecule radio buttons.
# ..................................................................
lightSources = Fuentes de Luz
lightSourceRadioButtonHelpText = Elija la fuente de luz para la ventana de observación ordenada de baja a alta energía.

molecules = Moléculas
moleculesRadioButtonHelpText = Elija molécula para la ventana de observación.

# Pattern for the labels for the molecule radio buttons. Molecular formulas are not translatable.
moleculeButtonLabelPattern = { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxideCapitalized }
  [ SINGLE_N2_MOLECULE ] { -nitrogenCapitalized }
  [ SINGLE_O2_MOLECULE ] { -oxygenCapitalized }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxideCapitalized }
  [ SINGLE_CH4_MOLECULE ] { -methaneCapitalized }
  [ SINGLE_H2O_MOLECULE ] { -waterCapitalized }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxideCapitalized }
  *[ SINGLE_O3_MOLECULE ] { -ozoneCapitalized }
}, { $molecularFormula }, { $geometryTitle ->
  [LINEAR] Lineal
  [BENT] Angular
  [TETRAHEDRAL] Tetraédrica
  *[DIATOMIC] Diatómica
}

# ..................................................................
# Dinamic description in observation window that occurs while the sim is running.
# ..................................................................

# ...
# Spoken when a photon is re-emitted from a molecule.
emissionPhaseDescriptionPattern = Fotón { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} absorbido y emitido desde la molécula de { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} hacia { $direction ->
  [LEFT] { -left }
  [RIGHT] { -right }
  [UP] { -up }
  [DOWN] { -down }
  [UP_LEFT] { -upAndToTheLeft }
  [UP_RIGHT] { -upAndToTheRight }
  [DOWN_LEFT] { -downAndToTheLeft }
  [DOWN_RIGHT] { -downAndToTheRight }
  *[UNKNOWN] { -unknown }
}.

# ...
# Molecule excitations. The long form is spoken on first excitation, then the short form is spoken to reduce verbosity.
# Stretching
shortStretchingAlert = Estiramiento.
longStretchingAlert = Los enlaces de la molécula se estiran de un lado a otro.

# Bending
shortBendingAlert = Doblado.
longBendingAlert = Los enlaces de la molécula se doblan de arriba abajo.

# Rotating/rotation
shortRotatingAlert = Rotación.
longRotatingAlert = La molécula gira.

# Glowing
shortGlowingAlert = Brillo.
longGlowingAlert = La molécula brilla.

# The molecular formulas in this pattern are not translatable.
breaksApartAlertPattern = La molécula se rompe en { $firstMolecule } y { $secondMolecule }.

pausedEmittingPattern = Fotón absorbido emitido desde la molécula hacia { $direction ->
  [LEFT] { -left }
  [RIGHT] { -right }
  [UP] { -up }
  [DOWN] { -down }
  [UP_LEFT] { -upAndToTheLeft }
  [UP_RIGHT] { -upAndToTheRight }
  [DOWN_LEFT] { -downAndToTheLeft }
  [DOWN_RIGHT] { -downAndToTheRight }
  *[UNKNOWN] { -unknown }
}.

pausedPassingPattern = Fotón { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} pasa a través de la molécula de { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

slowMotionPassingPattern = Fotones { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} pasando a través de la molécula { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}.

photonPasses = Fotón pasa.

photonsPassing = Fotones pasando.

slowMotionVibratingPattern = Fotón absorbido. Enlaces de la molécula { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] { -bendUpAndDown }
  [STRETCH_BACK_AND_FORTH] { -stretchBackAndForth }
  *[ UNKNOWN ] { -unknown }
}.

slowMotionAbsorbedShortPattern = Fotón absorbido.{ $excitedRepresentation ->
  [BEND_UP_AND_DOWN] Doblando
  [STRETCH_BACK_AND_FORTH] Estirando
  [ROTATING] Rotando
  [GLOWING] Brillando
  *[ UNKNOWN ] { -unknown }
}.

slowMotionAbsorbedMoleculeExcitedPattern = Fotón absorbido. La molécula { $excitedRepresentation ->
 [GLOWING] { -glows }
 [ROTATES_CLOCKWISE] { -rotatesClockwise }
 [ROTATES_COUNTER_CLOCKWISE] { -rotatesCounterClockwise }
 *[ UNKNOWN ] { -unknown }
}.

# The molecular formulas are not translatable.
slowMotionBreakApartPattern = Fotón absorbido. La molécula se rompe. { $firstMolecule } y { $secondMolecule } flotando lejos.

# The molecular formulas are not translatable.
moleculesFloatingAwayPattern = { $firstMolecule } y { $secondMolecule } flotando lejos.

# NOTE: Is this pattern translatable?? Combining two sentences like this seems risky.
breakApartDescriptionWithFloatPattern = { $description } { $floatDescription }

moleculePiecesGone = Piezas de molécula desaparecidas. Restablecer o cambiar molécula.

slowMotionEmittedPattern = Fotón emitido hacia { $direction ->
  [LEFT] { -left }
  [RIGHT] { -right }
  [UP] { -up }
  [DOWN] { -down }
  [UP_LEFT] { -upAndToTheLeft }
  [UP_RIGHT] { -upAndToTheRight }
  [DOWN_LEFT] { -downAndToTheLeft }
  [DOWN_RIGHT] { -downAndToTheRight }
  *[UNKNOWN] { -unknown }
}.

# When the user steps forward but there is no photon target, the reset hint provides important context.
resetOrChangeMolecule = Restablecer o cambiar molécula.

# Context responses for the light source emitter button. Longer responses describe the full context when in slow motion or when the sim is paused.
photonEmitterPhotonsOff = Fotones apagados.
photonEmitterPhotonsOn = Fotones encendidos.
photonEmitterPhotonsOnSlowSpeed = Fotones a velocidad lenta.
photonEmitterPhotonsOnSimPaused = Fotones encendidos. Simulación pausada.
photonEmitterPhotonsOnSlowSpeedSimPaused = Fotones a velocidad lenta. Simulación pausada.

pausedPhotonEmittedPattern = Fotón { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} sale de la fuente de luz.

# Context responses that occur when the sim is paused. Additional hints provide guidance on how to
# continue interacting with the sim.
timeControlsSimPausedEmitterOnAlert = Simulación pausada. Reproduzca para continuar la exploración.
timeControlsSimPausedEmitterOffAlert = Simulación pausada. Fuente de luz apagada.
timeControlsSimPlayingHintAlert = Encienda la fuente de luz para reproducir la simulación.
timeControlsPlayPauseButtonPlayingWithSpeedDescription = Pausar simulación para avanzar poco a poco, o seguir reproduciendo simulación a la velocidad elegida.
timeControlsPlayPauseButtonPausedWithSpeedDescription = Avanzar poco a poco, o reproducir simulación a la velocidad elegida.
timeControlsStepHintAlert = Encienda la fuente de luz para usar el próximo paso.

# ..................................................................
# A Static State Description describes the Light Spectrum Diagram.
# ..................................................................
spectrumButtonLabel = Diagrama del Espectro de Luz
spectrumButtonDescription = Examinar detalles del espectro completo de luz.
spectrumWindowDescription = El Espectro de Luz muestra la energía relativa de las diferentes clasificaciones de ondas de luz definidas por sus longitudes de onda características (medidas en metros) y frecuencias (medidas en Hertz o segundos inversos).
spectrumWindowEnergyDescription = El orden de menor a mayor energía (menor frecuencia y mayor longitud de onda) a mayor energía (mayor frecuencia y menor longitud de onda) es Radio, Microondas, Infrarrojo, Visible, Ultravioleta, Rayos X y Rayos Gamma.
spectrumWindowSinWaveDescription = Una onda sinusoidal que disminuye en longitud de onda (medida por la distancia de pico a pico) y aumenta en frecuencia (medida por el número de ondas por intervalo de tiempo) desde Radio hasta Rayos Gamma.
spectrumWindowLabelledSpectrumLabel = Rango de Frecuencia y Longitud de Onda
spectrumWindowLabelledSpectrumDescription = En detalle, los rangos de frecuencia y longitud de onda para cada espectro, listados de menor a mayor energía.
spectrumWindowLabelledSpectrumRadioLabel = Radio, gran rango:
spectrumWindowLabelledSpectrumMicrowaveLabel = Microondas, rango medio:
spectrumWindowLabelledSpectrumInfraredLabel = Infrarrojo, rango medio:
spectrumWindowLabelledSpectrumVisibleLabel = Visible, rango pequeño:
spectrumWindowLabelledSpectrumUltravioletLabel = Ultravioleta, rango pequeño:
spectrumWindowLabelledSpectrumXrayLabel = Rayos X, rango medio:
spectrumWindowLabelledSpectrumGammaRayLabel = Rayos Gamma, rango medio:
spectrumWindowLabelledSpectrumRadioFrequencyDescription = Frecuencias menores de 10 a la 4 Hertz a 10 a la 9 Hertz.
spectrumWindowLabelledSpectrumRadioWavelengthDescription = Longitudes de onda mayores de 10 a la 4 metros a 5 times 10 a la menos 1 metros.
spectrumWindowLabelledSpectrumMicrowaveFrequencyDescription = Frecuencias de 10 to the 9 a 5 veces 10 ¹¹ Hertz.
spectrumWindowLabelledSpectrumMicrowaveWavelengthDescription = Longitudes de onda de 10⁻¹ a 10⁻³ metros.
spectrumWindowLabelledSpectrumInfraredFrequencyDescription = Frecuencias de 5 × 10¹¹ a 4 × 10¹⁴ Hertz.
spectrumWindowLabelledSpectrumInfraredWavelengthDescription = Longitudes de onda de 10⁻³ a 7 × 10⁻⁷ metros.
spectrumWindowLabelledSpectrumVisibleFrequencyDescription = Frecuencias de 4 × 10¹⁴ a 7 × 10¹⁴ Hertz.
spectrumWindowLabelledSpectrumVisibleWavelengthDescription = Longitudes de onda de 7 × 10⁻⁷ a 4 × 10⁻⁷ metros.
spectrumWindowLabelledSpectrumVisibleGraphicalDescription = Mostrado como un arco iris comenzando con rojo y terminando con violeta (rojo, amarillo, verde, azul, índigo, violeta).
spectrumWindowLabelledSpectrumUltravioletFrequencyDescription = Frecuencias de 10¹⁵ a 10¹⁶ Hertz.
spectrumWindowLabelledSpectrumUltravioletWavelengthDescription = Longitudes de onda de 4 × 10⁻⁷ a 10⁻⁸ metros.
spectrumWindowLabelledSpectrumXrayFrequencyDescription = Frecuencias de 10¹⁶ a 10¹⁹ Hertz.
spectrumWindowLabelledSpectrumXrayWavelengthDescription = Longitudes de onda de 10⁻⁸ a 5 × 10⁻¹¹ metros.
spectrumWindowLabelledSpectrumGammaRayFrequencyDescription = Frecuencias de 10¹⁹ Hertz a más de 10²⁰ Hertz.
spectrumWindowLabelledSpectrumGammaRayWavelengthDescription = Longitudes de onda de 5 × 10⁻¹¹ metros a menos de 10⁻¹² metros.
