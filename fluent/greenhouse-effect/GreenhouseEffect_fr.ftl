# ..................................................................
# Reusable strings that may be used in patterns below.
# ..................................................................
# ..
# Light sources
-microwave = micro-onde
-infrared = infrarouge
-visible = visible
-ultraviolet = ultraviolet

# Light sources - which need to be pluralized (adjective)
-pluralMicrowave = micro-ondes
-pluralInfrared = infrarouges
-pluralVisible = visibles
-pluralUltraviolet = ultraviolets

# ..
# Target molecules
-carbonMonoxide = Monoxyde de carbone
-nitrogen = Azote
-oxygen = Oxygène
-carbonDioxide = Dioxyde de carbone
-methane = Méthane
-water = Eau
-nitrogenDioxide = Dioxyde d'azote
-ozone = Ozone

# Target molecules with leading particle
-particleCarbonMonoxide = de monoxyde de carbone
-particleNitrogen = d'azote
-particleOxygen = d'oxygène
-particleCarbonDioxide = de dioxyde de carbone
-particleMethane = de méthane
-particleWater = d'eau
-particleNitrogenDioxide = de dioxyde d'azote
-particleOzone = d'ozone


# ..
# Bond movement for excited states descriptions (pluralized)
-bendUpAndDown = se plient de haut en bas
-stretchBackAndForth = s'étirent d'avant en arrière

# ..
# Molecule description phrases for excited states.
-glows = luit
-rotatesClockwise = tourne dans le sens des aiguilles d'une montre
-rotatesCounterClockwise = tourne dans le sens inverse des aiguilles d'une montre

# ..
# Photon and molecule movement directions
left = la gauche
right = la droite
up = le haut
down = le bas
upAndToTheLeft = en haut à gauche
upAndToTheRight = en haut à droite
downAndToTheLeft = en bas à gauche
downAndToTheRight = en bas à droite

# ..
# Unknown catch
-unknown = INCONNU
-pluralUnknown = inconnus

# ..................................................................
# Overall screen summary descriptions.
# ..................................................................
playAreaSummary = La zone de jeu est une fenêtre d'observation installée avec une source de lumière et une molécule. Elle propose des options pour la source de lumière et la molécule.
controlAreaSummary = La zone de contrôle comprend des options pour ajuster la rapidité des actions dans la fenêtre d'observation, incluant des boutons pour mettre en pause et avancer. Vous pouvez également accéder aux détails du spectre lumineux et réinitialiser la simulation.
interactionHint = Allumez la source de lumière pour explorer.

# ...
# Dynamic description describing the screen.
# Only one of these 4 descriptions will be shown at a time to describe the current state of the sim.

# Describing the simulation when the sim is playing and the photon emitter is on.
dynamicPlayingEmitterOnScreenSummaryPattern = Présentement, la source de lumière { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} émet des photons { $simSpeed ->
    [ NORMAL ] directement sur
    *[ SLOW ] à vitesse réduite directement sur la molécule
} { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
}.

# Describing the simulation when the sim is playing and the photon emitter is off.
dynamicPlayingEmitterOffScreenSummaryPattern = Présentement, la source de lumière { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} est éteinte et pointe directement vers la molécule { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
}.

# Describing the simulation when the sim is paused and the photon emitter is on.
dynamicPausedEmitterOnScreenSummaryPattern = Présentement, la simulation { $simSpeed ->
   [ NORMAL ] est en pause
  *[ SLOW ] est en pause à vitesse réduite
}. La source de lumière { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} émet des photons directement vers la molécule { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
}.

# Describing the simulation when the sim is paused and the photon emitter is off.
dynamicPausedEmitterOffScreenSummaryPattern = Présentement, la simulation { $simSpeed ->
   [ NORMAL ] est en pause
  *[ SLOW ] est en pause à vitesse réduite
}. La source de lumière infrarouge est éteinte et pointe directement vers la molécule { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
}.

# When the target molecule has broken apart, the above screen summaries include this
# hint to continue the sim. The $summary variable is the sentence constructed above.
screenSummaryWithHintPattern = { $summary } Réinitialisez ou changez de molécule.

# ..................................................................
# Descriptions for the Observation Window.
# ..................................................................
observationWindowLabel = Fenêtre d'Observation

# ..
# Description of the light source when it is off.
photonEmitterOffDescriptionPattern = La source de lumière { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} est éteinte et pointe directement vers la molécule { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
}.

# ..
# Description of the light source when it is on and emitting photons that do not
# interact with the target molecule.
inactiveAndPassesPhaseDescriptionPattern = Le photon { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} traverse la molécule  { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
}.
# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in bending and stretching visuals.
absorptionPhaseBondsDescriptionPattern = Le photon { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} est absorbé, les liaisons de la molécule { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
} { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] { -bend-up-and-down }
  [STRETCH_BACK_AND_FORTH] { -stretch-back-and-forth }
  *[ UNKNOWN ] { -unknown }
}.

# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in glowing and rotating visuals.
absorptionPhaseMoleculeDescriptionPattern = Le photon { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} est absorbé, la molécule { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
} { $excitedRepresentation ->
  [GLOWING] { -glows }
  [ROTATES_CLOCKWISE] { -rotates-clockwise }
  [ROTATES_COUNTER_CLOCKWISE] { -rotates-counter-clockwise }
  *[ UNKNOWN ] { -unknown }
}.

# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in breaking apart visuals.
# Note that the actual resulting molecules are not translatable because the molecular formula
# is used. A note in the implementation states that the molecular formula should not be
# translatable.
breakApartPhaseDescriptionPattern = Le photon { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} est absorbé, la molécule { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
} se brise en { $firstMolecule } et { $secondMolecule }.

# ..
# Description of the geometry of the active molecule.
geometryLabelPattern = Cette molécule a une géométrie { $geometry ->
  [LINEAR] linéaire
  [BENT] coudée
  [TETRAHEDRAL] tétraédrique
  *[DIATOMIC] diatomique
}.

# More information about the molecular geometry.
linearGeometryDescription = Linéaire, une molécule avec deux ou trois atomes liés pour former une ligne droite. L'angle de liaison est de 180 degrés.
bentGeometryDescription = Coudée, molécule avec un atome central lié à deux autres atomes formant un angle. L'angle de liaison varie en dessous de 120 degrés.
tetrahedralGeometryDescription = Tétraédrique, molécule avec un atome central lié à quatre autres atomes formant un tétraèdre avec des angles de 109,5° entre eux, semblable à un dé à quatre faces.

# ..................................................................
# Descriptions for the light source button.
# ..................................................................
lightSourceButtonLabelPattern = Source lumineuse { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
}
lightSourceButtonPressedHelpText = Éteignez la source de lumière pour arrêter les photons.
lightSourceButtonUnpressedHelpText = Allumez la source de lumière pour démarrer les photons.

# ..................................................................
# Descriptions for the light source and molecule radio buttons.
# ..................................................................
lightSources = Sources lumineuses
lightSourceRadioButtonHelpText = Choisissez la source de lumière pour la fenêtre d'observation ordonnée de basse à haute énergie.

molecules = Molécules
moleculesRadioButtonHelpText = Choisissez une molécule pour la fenêtre d’observation.

# Pattern for the labels for the molecule radio buttons. Molecular formulas are not translatable.
moleculeButtonLabelPattern = { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}, { $molecularFormula }, { $geometryTitle ->
  [LINEAR] Linéaire
  [BENT] Coudée
  [TETRAHEDRAL] Tétraédrique
  *[DIATOMIC] Diatomique
}

# ..................................................................
# Context responses (real-time feedback) that occurs while the sim is running.
# ..................................................................

# ...
# Spoken when a photon is re-emitted from a molecule.
emissionPhaseDescriptionPattern = Photon { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} absorbé réémis de la molécule { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }
} vers { $direction ->
  [LEFT] { -left }
  [RIGHT] { -right }
  [UP] { -up }
  [DOWN] { -down }
  [UP_LEFT] { -up-and-to-the-left }
  [UP_RIGHT] { -up-and-to-the-right }
  [DOWN_LEFT] { -down-and-to-the-left }
  [DOWN_RIGHT] { -down-and-to-the-right }
  *[UNKNOWN] { -unknown }
}.

# ...
# Molecule excitations. The long form is spoken on first excitation, then the short form is spoken to reduce verbosity.
# Stretching
shortStretchingAlert = Étirement.
longStretchingAlert = Les liaisons de la molécule s'étirent d'avant en arrière.

# Bending
shortBendingAlert = Pliage.
longBendingAlert = Les liaisons de la molécule se plient de haut en bas.

# Rotating/rotation
shortRotatingAlert = Rotation.
longRotatingAlert = La molécule tourne.

# Glowing
shortGlowingAlert = Luminescence.
longGlowingAlert = La molécule luit.

# The molecular formulas in this pattern are not translatable.
breaksApartAlertPattern = La molécule se brise en { $firstMolecule } et { $secondMolecule }.

pausedEmittingPattern = Photon absorbé réémis par la molécule vers { $direction ->
  [LEFT] { -left }
  [RIGHT] { -right }
  [UP] { -up }
  [DOWN] { -down }
  [UP_LEFT] { -up-and-to-the-left }
  [UP_RIGHT] { -up-and-to-the-right }
  [DOWN_LEFT] { -down-and-to-the-left }
  [DOWN_RIGHT] { -down-and-to-the-right }
  *[UNKNOWN] { -unknown }
}.

pausedPassingPattern = Le photon { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} traverse la molécule { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }.
}.

slowMotionPassingPattern = Les photons { $lightSource ->
  [ MICRO ] { -plural-microwave }
  [ INFRARED ] { -plural-infrared }
  [ VISIBLE ] { -plural-visible }
  [ ULTRAVIOLET ] { -plural-ultraviolet }
  *[ UNKNOWN ] { -plural-unknown }
} traversent la molécule { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -particle-carbon-monoxide }
  [ SINGLE_N2_MOLECULE ] { -particle-nitrogen }
  [ SINGLE_O2_MOLECULE ] { -particle-oxygen }
  [ SINGLE_CO2_MOLECULE ] { -particle-carbon-dioxide }
  [ SINGLE_CH4_MOLECULE ] { -particle-methane }
  [ SINGLE_H2O_MOLECULE ] { -particle-water }
  [ SINGLE_NO2_MOLECULE ] { -particle-nitrogen-dioxide }
  *[ SINGLE_O3_MOLECULE ] { -particle-ozone }.
}.

photonPasses = Le photon passe.

photonsPassing = Les photons passent.

slowMotionVibratingPattern = Photon absorbé. Les liaisons de la molécule { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] { -bend-up-and-down }
  [STRETCH_BACK_AND_FORTH] { -stretch-back-and-forth }
  *[ UNKNOWN ] { -unknown }
}.

slowMotionAbsorbedShortPattern = Photon absorbé. { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] Pliage
  [STRETCH_BACK_AND_FORTH] Étirement
  [ROTATING] Rotation
  [GLOWING] Luminescence
  *[ UNKNOWN ] { -unknown }
}.

slowMotionAbsorbedMoleculeExcitedPattern = Photon absorbé. La molécule { $excitedRepresentation ->
 [GLOWING] { -glows }
 [ROTATES_CLOCKWISE] { -rotates-clockwise }
 [ROTATES_COUNTER_CLOCKWISE] { -rotates-counter-clockwise }
 *[ UNKNOWN ] { -unknown }
}.

# The molecular formulas are not translatable.
slowMotionBreakApartPattern = Photon absorbé. La molécule se brise. { $firstMolecule } et { $secondMolecule } flottent au loin.

# The molecular formulas are not translatable.
moleculesFloatingAwayPattern = { $firstMolecule } et { $secondMolecule } flottent au loin.

# NOTE: Is this pattern translatable?? Combining two sentences like this seems risky.
breakApartDescriptionWithFloatPattern = { $description } { $floatDescription }

moleculePiecesGone = Morceaux de molécule disparus. Réinitialisez ou changez de molécule.

slowMotionEmittedPattern = Photon émis vers { $direction ->
  [LEFT] { -left }
  [RIGHT] { -right }
  [UP] { -up }
  [DOWN] { -down }
  [UP_LEFT] { -up-and-to-the-left }
  [UP_RIGHT] { -up-and-to-the-right }
  [DOWN_LEFT] { -down-and-to-the-left }
  [DOWN_RIGHT] { -down-and-to-the-right }
  *[UNKNOWN] { -unknown }
}.

# When the user steps forward but there is no photon target, the reset hint provides important context.
resetOrChangeMolecule = Réinitialisez ou changez de molécule.

# Context responses for the light source emitter button. Longer responses describe the full context when in slow motion or when the sim is paused.
photonEmitterPhotonsOff = Photons éteints.
photonEmitterPhotonsOn = Photons allumés.
photonEmitterPhotonsOnSlowSpeed = Photons à vitesse lente.
photonEmitterPhotonsOnSimPaused = Photons allumés. Simulation en pause.
photonEmitterPhotonsOnSlowSpeedSimPaused = Photons à vitesse lente. Simulation en pause.

pausedPhotonEmittedPattern = Le photon { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} quitte la source lumineuse.

# Context responses that occur when the sim is paused. Additional hints provide guidance on how to
# continue interacting with the sim.
timeControlsSimPausedEmitterOnAlert = Simulation en pause. Cliquez sur "Jouer" pour poursuivre l'exploration.
timeControlsSimPausedEmitterOffAlert = Simulation en pause. Source de lumière éteinte.
timeControlsSimPlayingHintAlert = Allumez la source de lumière pour jouer la simulation.
timeControlsPlayPauseButtonPlayingWithSpeedDescription = Mettez en pause pour avancer pas à pas, ou continuez à jouer à la vitesse choisie.
timeControlsPlayPauseButtonPausedWithSpeedDescription = Avancez pas à pas, ou jouez à la vitesse choisie.
timeControlsStepHintAlert = Allumez la source de lumière pour utiliser "Avancer".

# ..................................................................
# A Static State Description describes the Light Spectrum Diagram.
# ..................................................................
spectrumButtonLabel = Diagramme du spectre lumineux
spectrumButtonDescription = Examinez les détails du spectre lumineux complet.
spectrumWindowDescription = Le spectre lumineux montre l'énergie relative des différentes classifications d'ondes lumineuses définies par leurs longueurs d'onde caractéristiques (mesurées en mètres) et fréquences (mesurées en Hertz ou inverse des secondes).
spectrumWindowEnergyDescription = L'ordre, de la plus basse énergie (basse fréquence et grande longueur d'onde) à la plus haute (fréquence élevée et longueur d'onde réduite) est Radio, Micro-onde, Infrarouge, Visible, Ultraviolet, Rayons X et Rayons Gamma.
spectrumWindowSinWaveDescription = Une onde sinusoïdale dont la longueur d'onde diminue (mesurée par la distance de sommet à sommet) et dont la fréquence augmente (mesurée par le nombre d'ondes par intervalle de temps) de Radio à Rayons Gamma.
spectrumWindowLabelledSpectrumLabel = Fréquence et plages de longueurs d'onde
spectrumWindowLabelledSpectrumDescription = En détail, les plages de fréquences et de longueurs d'onde pour chaque spectre, listées de la plus basse à la plus haute énergie
spectrumWindowLabelledSpectrumRadioLabel = Radio, grande plage :
spectrumWindowLabelledSpectrumMicrowaveLabel = Micro-onde, plage moyenne :
spectrumWindowLabelledSpectrumInfraredLabel = Infrarouge, plage moyenne :
spectrumWindowLabelledSpectrumVisibleLabel = Visible, plage minuscule :
spectrumWindowLabelledSpectrumUltravioletLabel = Ultraviolet, petite plage :
spectrumWindowLabelledSpectrumXrayLabel = Rayons X, plage moyenne :
spectrumWindowLabelledSpectrumGammaRayLabel = Rayons Gamma, plage moyenne :
spectrumWindowLabelledSpectrumRadioFrequencyDescription = Fréquences inférieures à 10⁴ Hertz à 10⁹ Hertz.
spectrumWindowLabelledSpectrumRadioWavelengthDescription = Longueurs d'onde supérieures à 10⁴ mètres à 5 × 10⁻¹ mètres.
spectrumWindowLabelledSpectrumMicrowaveFrequencyDescription = Fréquences 10⁹ à 5 × 10¹¹ Hertz.
spectrumWindowLabelledSpectrumMicrowaveWavelengthDescription = Longueurs d'onde 10⁻¹ à 10⁻³ mètres.
spectrumWindowLabelledSpectrumInfraredFrequencyDescription = Fréquences 5 × 10¹¹ à 4 × 10¹⁴ Hertz.
spectrumWindowLabelledSpectrumInfraredWavelengthDescription = Longueurs d'onde 10⁻³ à 7 × 10⁻⁷ mètres.
spectrumWindowLabelledSpectrumVisibleFrequencyDescription = Fréquences 4 × 10¹⁴ à 7 × 10¹⁴ Hertz.
spectrumWindowLabelledSpectrumVisibleWavelengthDescription = Longueurs d'onde 7 × 10⁻⁷ à 4 × 10⁻⁷ mètres.
spectrumWindowLabelledSpectrumVisibleGraphicalDescription = Représenté comme un arc-en-ciel commençant par le rouge et finissant par le violet (rouge, jaune, vert, bleu, indigo, violet).
spectrumWindowLabelledSpectrumUltravioletFrequencyDescription = Fréquences 10¹⁵ à 10¹⁶ Hertz.
spectrumWindowLabelledSpectrumUltravioletWavelengthDescription = Longueurs d'onde 4 × 10⁻⁷ à 10⁻⁸ mètres.
spectrumWindowLabelledSpectrumXrayFrequencyDescription = Fréquences 10¹⁶ à 10¹⁹ Hertz.
spectrumWindowLabelledSpectrumXrayWavelengthDescription = Longueurs d'onde 10⁻⁸ à 5 × 10⁻¹¹ mètres.
spectrumWindowLabelledSpectrumGammaRayFrequencyDescription = Fréquences 10¹⁹ Hertz à supérieures à 10²⁰ Hertz.
spectrumWindowLabelledSpectrumGammaRayWavelengthDescription = Longueurs d'onde 5 × 10⁻¹¹ mètres à inférieures à 10⁻¹² mètres.
