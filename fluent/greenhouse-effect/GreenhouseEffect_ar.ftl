# ..................................................................
# Reusable strings that may be used in patterns below.
# ..................................................................
# ..
# Light sources
-microwave = ميكروويف
-infrared = تحت الحمراء
-visible = مرئي
-Ultraviolet = فوق البنفسجي

# ..
# Target molecules
-carbonMonoxide = أول أكسيد الكربون
-nitrogetn = نيتروجين
-oxygen = أكسجين
-carbonDioxide = ثاني أكسيد الكربون
-methane = ميثان
-water = ماء
-nitrogenDioxide = ثاني أكسيد النيتروجين
-ozone = أوزون

# ..
# Bond movement for excited states descriptions
-bendUpAndDown = ينحني صعودًا وهبوطًا
-stretchBackAndForth = يتمدد ذهابًا وإيابًا

# ..
# Molecule description phrases for excited states.
-glows = يتوهج
-rotatesClockwise = يدور مع عقارب الساعة
-rotatesCounterClockwise = يدور عكس اتجاه عقارب الساعة

# ..
# Photon and molecule movement directions
left = يسار
right = يمين
up = أعلى
down = أسفل
upAndToTheLeft = أعلى وإلى اليسار
upAndToTheRight = أعلى وإلى اليمين
downAndToTheLeft = أسفل وإلى اليسار
downAndToTheRight = أسفل وإلى اليمين

# ..
# Unknown catch
-unknown = مجهول

# ..................................................................
# Overall screen summary descriptions.
# ..................................................................
playAreaSummary = منطقة اللعب هي نافذة مراقبة تم إعدادها بمصدر ضوء وجزيء. يوجد بها خيارات لمصدر الضوء والجزيء.
controlAreaSummary = تحتوي منطقة التحكم على خيارات حول مدى سرعة حدوث الحدث في نافذة المراقبة بما في ذلك أزرار لإيقاف وإعادة التشغيل خطوة. يمكنك أيضًا الوصول إلى تفاصيل حول الطيف الضوئي وإعادة تعيين المحاكاة.
interactionHint = شغّل مصدر الضوء لاستكشاف.

# ...
# Dynamic description describing the screen.
# Only one of these 4 descriptions will be shown at a time to describe the current state of the sim.

# Describing the simulation when the sim is playing and the photon emitter is on.
dynamicPlayingEmitterOnScreenSummaryPattern = حاليًا، { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} مصدر الضوء ينبعث الفوتونات { $simSpeed ->
    [ NORMAL ] مباشرة على
    *[ SLOW ] بسرعة بطيئة مباشرة على
} مباشرة على { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

# Describing the simulation when the sim is playing and the photon emitter is off.
dynamicPlayingEmitterOffScreenSummaryPattern = حاليًا، { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} مصدر الضوء مطفأ ويوجه مباشرة على { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

# Describing the simulation when the sim is paused and the photon emitter is on.
dynamicPausedEmitterOnScreenSummaryPattern = حاليًا، المحاكاة { $simSpeed ->
   [ NORMAL ] متوقفة مؤقتًا
  *[ SLOW ] متوقفة مؤقتًا بسرعة بطيئة
}. { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} مصدر الضوء ينبعث الفوتونات مباشرة على { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

# Describing the simulation when the sim is paused and the photon emitter is off.
dynamicPausedEmitterOffScreenSummaryPattern = حاليًا، المحاكاة { $simSpeed ->
   [ NORMAL ] متوقفة مؤقتًا
  *[ SLOW ] متوقفة مؤقتًا بسرعة بطيئة
}. مصدر الضوء تحت الحمراء مطفأ ويوجه مباشرة على { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

# When the target molecule has broken apart, the above screen summaries include this
# hint to continue the sim. The $summary variable is the sentence constructed above.
screenSummaryWithHintPattern = { $summary } أعد التعيين أو قم بتغيير الجزيء.

# ..................................................................
# Descriptions for the Observation Window.
# ..................................................................
observationWindowLabel = نافذة المراقبة

# ..
# Description of the light source when it is off.
photonEmitterOffDescriptionPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} مصدر الضوء مطفأ ويوجه مباشرة إلى { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

# ..
# Description of the light source when it is on and emitting photons that do not
# interact with the target molecule.
inactiveAndPassesPhaseDescriptionPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} الفوتون يمر عبر { $targetMolecule ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in bending and stretching visuals.
absorptionPhaseBondsDescriptionPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} الفوتون ممتص، روابط { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] { -bend-up-and-down }
  [STRETCH_BACK_AND_FORTH] { -stretch-back-and-forth }
  *[ UNKNOWN ] { -unknown }
}.

# ..
# Description of the light source when it is on and emitting photons that interact
# with the target molecule in glowing and rotating visuals.
absorptionPhaseMoleculeDescriptionPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} الفوتون ممتص، { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء { $excitedRepresentation ->
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
breakApartPhaseDescriptionPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} الفوتون ممتص، { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء ينقسم إلى { $firstMolecule } و { $secondMolecule }.

# ..
# Description of the geometry of the active molecule.
geometryLabelPattern = هذا الجزيء لديه { $geometry ->
  [LINEAR] خطي
  [BENT] مثني
  [TETRAHEDRAL] رباعي الأوجه
  *[DIATOMIC] ثنائي الذرات
} الهندسة.

# More information about the molecular geometry.
linearGeometryDescription = خطي، جزيء يتألف من ذرتين أو ثلاث ذرات مترابطة لتشكيل خط مستقيم. زاوية الربط 180 درجة.
bentGeometryDescription = مثني، جزيء يتكون من ذرة مركزية مرتبطة بذرتين أخريين تشكل زاوية. زاوية الربط تتغير تحت 120 درجة.
tetrahedralGeometryDescription = رباعي الأوجه، جزيء يتكون من ذرة مركزية مرتبطة بأربع ذرات أخرى تشكل رباعياً بزاوية 109.5° بينها، مثل النرد ذو الأربعة أوجه.

# ..................................................................
# Descriptions for the light source button.
# ..................................................................
lightSourceButtonLabelPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} مصدر الضوء
lightSourceButtonPressedHelpText = أطفئ مصدر الضوء لإيقاف الفوتونات.
lightSourceButtonUnpressedHelpText = شغّل مصدر الضوء لبدء الفوتونات.

# ..................................................................
# Descriptions for the light source and molecule radio buttons.
# ..................................................................
lightSources = مصادر الضوء
lightSourceRadioButtonHelpText = اختر مصدر الضوء لنافذة الملاحظة بالترتيب من الطاقة المنخفضة إلى العالية.

molecules = الجزيئات
moleculesRadioButtonHelpText = اختر الجزيء لنافذة الملاحظة.

# Pattern for the labels for the molecule radio buttons. Molecular formulas are not translatable.
moleculeButtonLabelPattern = { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
}, { $molecularFormula }, { $geometryTitle ->
  [LINEAR] خطي
  [BENT] مثني
  [TETRAHEDRAL] رباعي الأوجه
  *[DIATOMIC] ثنائي الذرات
}

# ..................................................................
# Context responses (real-time feedback) that occurs while the sim is running.
# ..................................................................

# ...
# Spoken when a photon is re-emitted from a molecule.
emissionPhaseDescriptionPattern = الفوتون الممْتص من { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} مُنبعث من { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء { $direction ->
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
shortStretchingAlert = تمدد.
longStretchingAlert = الروابط الجزيئية تتمدد ذهابًا وإيابًا.

# Bending
shortBendingAlert = انحناء.
longBendingAlert = الروابط الجزيئية تنحني صعودًا وهبوطًا.

# Rotating/rotation
shortRotatingAlert = دوران.
longRotatingAlert = الجزيء يدور.

# Glowing
shortGlowingAlert = توهج.
longGlowingAlert = الجزيء يتوهج.

# The molecular formulas in this pattern are not translatable.
breaksApartAlertPattern = الجزيء ينقسم إلى { $firstMolecule } و { $secondMolecule }.

pausedEmittingPattern = الفوتون الممتص من الجزيء { $direction ->
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

pausedPassingPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} الفوتون يمر عبر { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

slowMotionPassingPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} الفوتونات تمر عبر { $photonTarget ->
  [ SINGLE_CO_MOLECULE ] { -carbonMonoxide }
  [ SINGLE_N2_MOLECULE ] { -nitrogen }
  [ SINGLE_O2_MOLECULE ] { -oxygen }
  [ SINGLE_CO2_MOLECULE ] { -carbonDioxide }
  [ SINGLE_CH4_MOLECULE ] { -methane }
  [ SINGLE_H2O_MOLECULE ] { -water }
  [ SINGLE_NO2_MOLECULE ] { -nitrogenDioxide }
  *[ SINGLE_O3_MOLECULE ] { -ozone }
} جزيء.

photonPasses = الفوتون يمر.

photonsPassing = الفوتونات تمر.

slowMotionVibratingPattern = الفوتون الممتص. الروابط الجزيئية { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] { -bend-up-and-down }
  [STRETCH_BACK_AND_FORTH] { -stretch-back-and-forth }
  *[ UNKNOWN ] { -unknown }
}.

slowMotionAbsorbedShortPattern = الفوتون الممتص. { $excitedRepresentation ->
  [BEND_UP_AND_DOWN] انحناء
  [STRETCH_BACK_AND_FORTH] تمدد
  [ROTATING] دوران
  [GLOWING] توهج
  *[ UNKNOWN ] { -unknown }
}.

slowMotionAbsorbedMoleculeExcitedPattern = الفوتون الممتص. الجزيء { $excitedRepresentation ->
 [GLOWING] { -glows }
 [ROTATES_CLOCKWISE] { -rotates-clockwise }
 [ROTATES_COUNTER_CLOCKWISE] { -rotates-counter-clockwise }
 *[ UNKNOWN ] { -unknown }
}.

# The molecular formulas are not translatable.
slowMotionBreakApartPattern = الفوتون الممتص. الجزيء ينقسم. { $firstMolecule } و { $secondMolecule } ينجرفان بعيداً.

# The molecular formulas are not translatable.
moleculesFloatingAwayPattern = { $firstMolecule } و { $secondMolecule } ينجرفان بعيداً.

# NOTE: Is this pattern translatable?? Combining two sentences like this seems risky.
breakApartDescriptionWithFloatPattern = { $description } { $floatDescription }

moleculePiecesGone = قطع الجزيء قد ذهبت. أعد التعيين أو قم بتغيير الجزيء.

slowMotionEmittedPattern = الفوتون المنبعث { $direction ->
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
resetOrChangeMolecule = أعد التعيين أو قم بتغيير الجزيء.

# Context responses for the light source emitter button. Longer responses describe the full context when in slow motion or when the sim is paused.
photonEmitterPhotonsOff = فوتونات مطفأة.
photonEmitterPhotonsOn = فوتونات مشغلة.
photonEmitterPhotonsOnSlowSpeed = فوتونات بسرعة بطيئة.
photonEmitterPhotonsOnSimPaused = فوتونات مشغلة. المحاكاة متوقفة.
photonEmitterPhotonsOnSlowSpeedSimPaused = فوتونات بسرعة بطيئة. المحاكاة متوقفة.

pausedPhotonEmittedPattern = { $lightSource ->
  [ MICRO ] { -microwave }
  [ INFRARED ] { -infrared }
  [ VISIBLE ] { -visible }
  [ ULTRAVIOLET ] { -ultraviolet }
  *[ UNKNOWN ] { -unknown }
} الفوتون يغادر مصدر الضوء.

# Context responses that occur when the sim is paused. Additional hints provide guidance on how to
# continue interacting with the sim.
timeControlsSimPausedEmitterOnAlert = المحاكاة متوقفة. العب للاستمرار في الاستكشاف.
timeControlsSimPausedEmitterOffAlert = المحاكاة متوقفة. مصدر الضوء مطفأ.
timeControlsSimPlayingHintAlert = شغّل مصدر الضوء لتشغيل المحاكاة.
timeControlsPlayPauseButtonPlayingWithSpeedDescription = أوقف المحاكاة مؤقتاً للتقدم خطوة بخطوة، أو الاستمرار في تشغيل المحاكاة بسرعة محددة.
timeControlsPlayPauseButtonPausedWithSpeedDescription = تقدم خطوة بخطوة، أو شغل المحاكاة بسرعة محددة.
timeControlsStepHintAlert = شغّل مصدر الضوء لاستخدام زر التقدم.

# ..................................................................
# A Static State Description describes the Light Spectrum Diagram.
# ..................................................................
spectrumButtonLabel = مخطط الطيف الضوئي
spectrumButtonDescription = افحص تفاصيل الطيف الضوئي الكامل.
spectrumWindowDescription = يظهر الطيف الضوئي الطاقة النسبية لتصنيفات مختلفة من الأمواج الضوئية كما هو معرّف بطول الموجات المميز (ويقاس بالأمتار) والترددات (ويقاس بالهرتز أو في الثواني المعكوسة).
spectrumWindowEnergyDescription = الترتيب من الطاقة الأدنى (أقل تردد وأكبر طول موجة) إلى الطاقة الأعلی (أكثر تردد وأصغر طول موجة) هو: الأمواج الراديوية، ميكروويف، تحت الحمراء، مرئي، فوق البنفسجي، الأشعة السينية، وأشعة جاما.
spectrumWindowSinWaveDescription = موجة جيبية تقل في الطول الموجي (كما تقاس من القمة إلى القمة) وتزداد في التردد (كما تقاس بعدد الموجات في الفاصل الزمني) من الراديو إلى أشعة جاما.
spectrumWindowLabelledSpectrumLabel = نطاقات التردد والطول الموجي
spectrumWindowLabelledSpectrumDescription = بالتفصيل، نطاقات التردد والطول الموجي لكل طيف، مرتبة من الطاقة الأدنى إلى الأعلى
spectrumWindowLabelledSpectrumRadioLabel = الأمواج الراديوية، نطاق كبير:
spectrumWindowLabelledSpectrumMicrowaveLabel = ميكروويف، نطاق متوسط:
spectrumWindowLabelledSpectrumInfraredLabel = تحت الحمراء، نطاق متوسط:
spectrumWindowLabelledSpectrumVisibleLabel = مرئي، نطاق صغير:
spectrumWindowLabelledSpectrumUltravioletLabel = فوق البنفسجي، نطاق صغير:
spectrumWindowLabelledSpectrumXrayLabel = أشعة سينية، نطاق متوسط:
spectrumWindowLabelledSpectrumGammaRayLabel = أشعة جاما، نطاق متوسط:
spectrumWindowLabelledSpectrumRadioFrequencyDescription = ترددات أقل من 10⁴ هرتز إلى 10⁹ هرتز.
spectrumWindowLabelledSpectrumRadioWavelengthDescription = أطوال موجية أكبر من 10⁴ متر إلى 5 × 10⁻¹ متر.
spectrumWindowLabelledSpectrumMicrowaveFrequencyDescription = ترددات 10⁹ إلى 5 × 10¹¹ هرتز.
spectrumWindowLabelledSpectrumMicrowaveWavelengthDescription = أطوال موجية 10⁻¹ إلى 10⁻³ متر.
spectrumWindowLabelledSpectrumInfraredFrequencyDescription = ترددات 5 × 10¹¹ إلى 4 × 10¹⁴ هرتز.
spectrumWindowLabelledSpectrumInfraredWavelengthDescription = أطوال موجية 10⁻³ إلى 7 × 10⁻⁷ متر.
spectrumWindowLabelledSpectrumVisibleFrequencyDescription = ترددات 4 × 10¹⁴ إلى 7 × 10¹⁴ هرتز.
spectrumWindowLabelledSpectrumVisibleWavelengthDescription = أطوال موجية 7 × 10⁻⁷ إلى 4 × 10⁻⁷ متر.
spectrumWindowLabelledSpectrumVisibleGraphicalDescription = يتم عرضها كقوس قزح يبدأ باللون الأحمر وينتهي بالبنفسجي (الأحمر، الأصفر، الأخضر، الأزرق، النيلي، البنفسجي).
spectrumWindowLabelledSpectrumUltravioletFrequencyDescription = ترددات 10¹⁵ إلى 10¹⁶ هرتز.
spectrumWindowLabelledSpectrumUltravioletWavelengthDescription = أطوال موجية 4 × 10⁻⁷ إلى 10⁻⁸ متر.
spectrumWindowLabelledSpectrumXrayFrequencyDescription = ترددات 10¹⁶ إلى 10¹⁹ هرتز.
spectrumWindowLabelledSpectrumXrayWavelengthDescription = أطوال موجية 10⁻⁸ إلى 5 × 10⁻¹¹ متر.
spectrumWindowLabelledSpectrumGammaRayFrequencyDescription = ترددات 10¹⁹ هرتز إلى أعلى من 10²⁰ هرتز.
spectrumWindowLabelledSpectrumGammaRayWavelengthDescription = أطوال موجية 5 × 10⁻¹¹ متر إلى أقل من 10⁻¹² متر.