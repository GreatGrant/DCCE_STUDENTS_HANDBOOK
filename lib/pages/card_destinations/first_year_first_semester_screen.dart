import 'package:dcce_handbook/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class FirstYearFirstSemester extends StatelessWidget {
  const FirstYearFirstSemester({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseHeader('MTH 111: ELEMENTARY ALGEBRA I (3 UNITS)'),
              CourseContent(
                'Trigonometric Functions:',
                'Radian measure, Laws of Sine and cosine, sum, difference and product formulae. Trigonometric identities. Inverse trigonometric functions; Solution of trigonometric equations',
              ),
              CourseContent(
                'Exponential and Logarithmic Function:',
                'Definition of a^x for any positive number ‘a’ and any real number ‘x’. The number ‘e’. Natural exponential and natural logarithmic functions.',
              ),
              CourseContent(
                'Algebraic Functions:',
                'Polynomials: division, synthetic division, factor theorem, remainder theorem. Rational functions: Asymptotes, partial fractions decomposition. Roots of rational functions, finding the domain',
              ),
              CourseContent(
                'Complex numbers:',
                'Representation in the plane. Sum, product, quotient, Modulus, argument. Complex conjugate and its properties; Polar representation, unit circle; De moivre’s theorem. Zeroes of polynomials, Euler formula',
              ),
              // Repeat similar structures for other courses and content
              CourseHeader('MTH 112: CALCULUS I (3 UNITS)'),
              CourseContent(
                'Real Numbers:',
                'The number line, intervals, properties of absolute value. Solving inequalities, sign chart.',
              ),
              CourseContent(
                'Functions from R to R:',
                'Domain, range graph monotonically increasing, decreasing, inverse functions, composite functions; Even and odd functions, periodic functions',
              ),
              CourseContent(
                'Limits:',
                'Convergent sequences. Limit of a function, left and right hand limits continuity of functions.',
              ),
              CourseContent(
                'Differentiation:',
                'differentiability at a point and in an interval. Sum, product and quotient rule. Chain rule, rule for inverse functions. Implicit differentiation.',
              ),
              CourseContent(
                'Integration:',
                'Fundamental theorem of calculus. Integration by parts, change of variable, integration of rational functions, trigonometric integrals; trigonometric substitutions. Trapezium rule, Simpson’s rule',
              ),
              // ... Repeat similar structures for other courses and content
              CourseHeader('PHY 111: INTRODUCTORY MECHANICS AND PROPERTIES OF MATTER (3 UNITS)'),
              CourseContent(
                'General Concepts:',
                'Physical interactions: mention of strong or nuclear, electromagnetic, weak and gravitational interactions.',
              ),
              CourseContent(
                'Unit and dimension:',
                'Basic S.I units, derived units, uses of dimensions in physical analysis.',
              ),
              CourseContent(
                'Scalars and vectors:',
                'addition and subtraction of vectors, resolution of a vector into rectangular components, simple multiplication of vectors.',
              ),
              CourseContent(
                'Statics:',
                'Concurrent forces in equilibrium: The triangle method, tensions and compressions, the first condition of equilibrium.',
              ),
              CourseContent(
                'Kinematics:',
                'Speed, velocity and acceleration; equations of motion for bodies moving with uniform acceleration, motion with variable acceleration; displacement-time and velocity-time graphs, free fall due to gravity and vertical projection, projectile motion in two dimensions and trajectory.',
              ),
              // ... Repeat similar structures for other courses and content
              CourseHeader('PHY 113: INTRODUCTION TO WAVE MOTION, HEAT AND SOUND (3 UNITS)'),
              CourseContent(
                'Simple Harmonic Motion (SHM):',
                'Definition of SHM, Displacement, velocity and acceleration derived from a body in uniform circular motion; Period and frequency. Force and SHM: Vibration of springs examples, the simple pendulum, the torsion pendulum, the physical pendulum, energy in a vibration.',
              ),
              CourseContent(
                'Wave Motion:',
                'Transverse and longitudinal waves; Wavelength, frequency and speed; Traveling waves, Standing waves; Principles of Superposition of Waves; Vibration in air columns; Forced vibrations; Resonance, Interference and Beats; Vibration in rods.',
              ),
              CourseContent(
                'Sound:',
                'Propagation of sound waves in free air. Thermometers and scales of temperature: liquid in glass, resistance, thermocouple and gas thermometers; Optical pyrometer. Linear expansion: the bimetallic strip; Area expansion; Volumetric expansion; Anomalous expansion of water; Thermal stress in rods.',
              ),
              CourseContent(
                'Heat energy:',
                'Joule’s experiment; The joule as unit of heat energy; Specific heat capacity; Changes of phase: Latent heat of combustion.',
              ),
              CourseContent(
                'Thermodynamics:',
                'Heat and work and Pressure versus Volume diagram; First law of thermodynamics; Special cases of the first law; Iso-volumetric process, adiabatic process, isothermal process, free expansion, throttling process; The second laws of thermodynamics; The Carnot cycle. The four-stroke gasoline engine; The diesel engine; The gas turbine, jet engine, and rockets; The rotary engine. Refrigerators',
              ),
              CourseContent(
                'Thermal properties of gases:',
                'Boyle’s law. Charle’s law; The ideal gas law; Volume and pressure coefficient of ideal gases. The absolute zero of temperature and Kelvin scale; The two principal specific heat capacities of a gas. Cp-Cv = R and Cp/Cv = γ. Isothermal and adiabatic expansions of an ideal gas. Real gases: Van der Waal’s equation of state, the Joule-Kelvin effect and the liquefaction of gases.',
              ),
              CourseContent(
                'Kinetic theory of gases:',
                'Assumptions of the kinetic theory, speeds of gas molecules, the Maxwellian distribution, the root mean square speed. Pressure exerted by an ideal gas: Derivation of p = 3.ρ.c2. Deductions from kinetic theory of gases: Kinetic interpretation of temperature, Avogadro’s law, Graham’s law of diffusion, Dalton’s law of partial pressures; Brownian motion.',
              ),
              // ... Repeat similar structures for other courses and content
              CourseContent(
                'Transfer of Heat:',
                'Conduction: Definition of thermal conductivity; Measurements of the conductivities of good and bad conductors. Radiation: Detection of radiant energy; The ideal radiator, Intensity distribution in black body radiation; Provost’s theory; Kirchoff’s law; Stefan’s law; Wien’s displacement law. Radiation pyrometers; the solar constant and an estimate of the Sun’s temperature',
              ),
              CourseHeader('PHY 171: BASIC EXPERIMENTAL PHYSICS I (1 UNIT)'),
              CourseContent(
                'A laboratory course covering basic experiments illustrative of the first semester 100 level physics syllabus.',
                '',
              ),
              CourseHeader('CHM 111: FOUNDATION CHEMISTRY I (3 UNITS)'),
              CourseContent(
                'Physical Quantities and Units:',
                'The physical quantities understood as consisting of numerical magnitude and unit; International system of units; Base units; mass, length, time, current, amount of substance. Other units expressed as products or quotients of base units.',
              ),
              CourseContent(
                'Relative Masses of Atoms and Molecules:',
                'Relative atomic, isotopic, molecular and formula masses; The mole concept and the Avogadro constant; Determination of Relative Masses; Calculation of empirical and molecular formula; Chemical stoichiometry.',
              ),
              CourseContent(
                'Atomic and Nuclear Basis:',
                'Evidence for atomic constituents: Electrons, Protons and Neutrons – their relative charges and masses; The nucleus, atomic number, mass isotopes and mass spectra; The electronic structure of the atom; Radioactivity, X – ray radiation and detection; Nuclear transformation and binding energy; Nuclear reactions and stability; Applications of radionuclides; Electromagnetic radiation, Wavelength and frequency; Radiation as energy, the Plank relation; Regions of electromagnetic spectrum, absorption and emission of radiation; Wave-particle dualism and the de Broglie equation. The wave equation treated symbolically; Heisenberg uncertainty principle. Energy levels in atomic hydrogen and their quantum numbers; Ionization energy; The size, shape and orientation of atomic nuclear spin, the Stern Gerlach experiment; Many electron atoms, electron configuration and Pauli Principle, Hund’s rule.',
              ),
              CourseContent(
                'Chemical Bonding:',
                'Dependence of properties of solids, liquids and gases on the type of chemical bonding; Electrovalent bond between ions; Covalent bonds; The shape of simple molecules including CO2 (linear), CH4 (tetrahedral), NH3 (pyramidal), H2O (non – linear), SO3 (trigonal), SF6 (octahedral); Metallic bonds; Intermolecular bonds; Hydrogen bonding and its influence on properties.',
              ),
              // ... Repeat similar structures for other courses and content
              CourseHeader('GNS 111: USE OF ENGLISH I(2 UNITS)'),
              CourseContent(
                'Grammar:',
                'Type of sentences and sentence structure; Concord – treatment of types of common faults; Violations of unit, inclusion of irrelevant details, Illogical association of ideas etc; Punctuation. Note-taking; principles of note-taking, note-taking practices; Practice procedure; Application of the procedure. Changes required in indirect speech.',
              ),
              CourseHeader('GNS 211: LIBRARY AND INFORMATION SCIENCE (2 UNITS)'),
              CourseContent(
                'National planning and development',
                'information for international understanding and cooperation – economic, cultural, political, scientific and technological; Types of Libraries according to organization, materials, services and users; Private and public, public and communal, academic, special and national; Acquisition of materials (for acquisition of knowledge); Types of materials – books, serials, maps, documents, non-books – audio-visuals, archival materials etc.',
              ),
              CourseContent(
                'Methods of acquisition – orders, gifts, exchanges and legal depository, organization of libraries and information:',
                'Descriptive cataloging – identification of each item in a collection, classification – grouping each item by subject- decimal (000 – 999), Dewey – Universal Decimal Classification Alphabetical – Library of Congress (A – Z).',
              ),
              CourseContent(
                'Using Library resources:',
                'circulation of materials for home use, reserved book system for use in the library for a limited period and reference resources for use in the library.',
              ),
              CourseContent(
                'inter-library lending of materials among libraries collection. Information retrieval by and for users:',
                'the book: its parts and uses.',
              ),
              CourseContent(
                'The catalogues:',
                'index to library collections reference sources: Encyclopedias, dictionaries, biographies, atlases and gazettes, guides, handbook, manuals directories, annuals, year books, abstracts, bibliographies, indexes, literature summaries, reviews and current contents.',
              ),
              CourseContent(
                'Current awareness services – selective dissemination of information (SDI):',
                'academic profiles, circulation of contents pages and in – house indexes, abstracts and literature summaries.',
              ),
              CourseContent(
                'Research methods:',
                'writing term papers; Technical report of projects, choice of a topic of interest to students and set project. Outline of the project: literature searches, compile bibliographies on topics, find out areas covered – list available publications, find out gaps to be filled in a subject of the project or problem to be solved in the project.',
              ),
              CourseContent(
                'Decide methodology:',
                'questionnaires, interviews, fieldwork, and correspondence. Gather relevant data: make full citation of all works consulted and all quotations to be used (author, title, data imprint, and page). Analyze data; discarding irrelevant, classifying relevant according to outline.',
              ),
              CourseContent(
                'Library etiquettes:',
                'rules and regulations.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}