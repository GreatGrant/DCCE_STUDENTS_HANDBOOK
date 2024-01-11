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
                title: 'Trigonometric Functions:',
                content: 'Radian measure, Laws of Sine and cosine, sum, difference and product formulae. Trigonometric identities. Inverse trigonometric functions; Solution of trigonometric equations',
              ),
              CourseContent(
                title: 'Exponential and Logarithmic Function:',
                content:'Definition of a^x for any positive number ‘a’ and any real number ‘x’. The number ‘e’. Natural exponential and natural logarithmic functions.',
              ),
              CourseContent(
                title: 'Algebraic Functions:',
                content:'Polynomials: division, synthetic division, factor theorem, remainder theorem. Rational functions: Asymptotes, partial fractions decomposition. Roots of rational functions, finding the domain',
              ),
              CourseContent(
                title: 'Complex numbers:',
                content:'Representation in the plane. Sum, product, quotient, Modulus, argument. Complex conjugate and its properties; Polar representation, unit circle; De moivre’s theorem. Zeroes of polynomials, Euler formula',
              ),
              CourseHeader('MTH 112: CALCULUS I (3 UNITS)'),
              CourseContent(
                title: 'Real Numbers:',
                content:'The number line, intervals, properties of absolute value. Solving inequalities, sign chart.',
              ),
              CourseContent(
                title: 'Functions from R to R:',
                content:'Domain, range graph monotonically increasing, decreasing, inverse functions, composite functions; Even and odd functions, periodic functions',
              ),
              CourseContent(
                title: 'Limits:',
                content:'Convergent sequences. Limit of a function, left and right hand limits continuity of functions.',
              ),
              CourseContent(
                title: 'Differentiation:',
                content:'differentiability at a point and in an interval. Sum, product and quotient rule. Chain rule, rule for inverse functions. Implicit differentiation.',
              ),
              CourseContent(
                title: 'Integration:',
                content:'Fundamental theorem of calculus. Integration by parts, change of variable, integration of rational functions, trigonometric integrals; trigonometric substitutions. Trapezium rule, Simpson’s rule',
              ),
              CourseHeader('PHY 111: INTRODUCTORY MECHANICS AND PROPERTIES OF MATTER (3 UNITS)'),
              CourseContent(
                title: 'General Concepts:',
                content:'Physical interactions: mention of strong or nuclear, electromagnetic, weak and gravitational interactions.',
              ),
              CourseContent(
                title: 'Unit and dimension:',
                content:'Basic S.I units, derived units, uses of dimensions in physical analysis.',
              ),
              CourseContent(
               title:  'Scalars and vectors:',
               content: 'addition and subtraction of vectors, resolution of a vector into rectangular components, simple multiplication of vectors.',
              ),
              CourseContent(
               title:  'Statics:',
               content: '''Concurrent forces in equilibrium: The triangle method, tensions and compressions, the first condition of equilibrium. 
Non-concurrent forces, moment of a force, couples, resultant of non concurrent forces, the second condition for equilibrium, centre of gravity, stability of equilibrium.

Frictional forces, static and dynamic friction and their experimental determination, friction on the inclined plane, equilibrium problems involving friction, molecular view of friction.''',
              ),
              CourseContent(
                title: 'Kinematics:',
                content:'Speed, velocity and acceleration; equations of motion for bodies moving with uniform acceleration, motion with variable acceleration; displacement-time and velocity-time graphs, free fall due to gravity and vertical projection, projectile motion in two dimensions and trajectory.',
              ),

              CourseContent(
              title: 'Dynamics of particles:',
              content:'''Forces and linear motion, Newton’s laws of motion and applications, inertia, mass and momentum, weight of an object, impulse of a force.

Conservation of momentum: single particle, several particles, work, energy; Work done by a constant force and by a variable force, force-displacement graphs, power, and efficiency.

Energy: kinetic energy, potential energy, gravitational and elastic potential energies, conservative and dissipative forces; Principle of conservation of mechanical energy, other forms of energy and the principle of conservation of total energy, mass-energy equivalence; Elastic and inelastic collisions, perfectly elastic, completely inelastic and partially elastic collisions with simple examples from elementary particle/atomic collisions.'''
              ),
              CourseContent(
                  title: 'Rotational dynamics and gravitation: ',
                  content: 'Circular motion: angular velocity and angular acceleration, centripetal force and the centrifuge, motion of a vehicle in a curve and banking of road, variation of g with latitude; Motion of rigid bodies, Moments of inertia and its determination for simple bodies, kinetic energy of rotation, angular momentum. Gravitation: Keppler’s laws, Newton’s law of gravitation, gravitational and inertia mass; masses of sun and planets, weightlessness, velocity of escape.'
              ),
              CourseContent(
                  title: 'Fluid at rest and fluids in motion:',
                  content: 'Fluids at rest: Pressure in a liquid, liquid columns, Archimedes principle, atmospheric pressure and variation with height; Surface tension, pressure difference across a spherical surface, surface energy. Capillarity, fluids in motion: Viscosity, coefficient of viscosity and experimental determination; Poiseuille’s formula, steady and turbulent flow. Motion in a fluid: Stoke’s law and terminal velocity.'
              ),
              CourseHeader('PHY 113: INTRODUCTION TO WAVE MOTION, HEAT AND SOUND (3 UNITS)'),
              CourseContent(
                title:'Simple Harmonic Motion (SHM):',
                content: ' Definition of SHM, Displacement, velocity and acceleration derived from a body in uniform circular motion; Period and frequency. Force and SHM: Vibration of springs examples, the simple pendulum, the torsion pendulum, the physical pendulum, energy in a vibration.',
              ),
              CourseContent(
                title:'Wave Motion:',
                content: ' Transverse and longitudinal waves; Wavelength, frequency and speed; Traveling waves, Standing waves; Principles of Superposition of Waves; Vibration in air columns; Forced vibrations; Resonance, Interference and Beats; Vibration in rods.',
              ),
              CourseContent(
                title:'Sound:',
                content: ' Propagation of sound waves in free air. Thermometers and scales of temperature: liquid in glass, resistance, thermocouple and gas thermometers; Optical pyrometer. Linear expansion: the bimetallic strip; Area expansion; Volumetric expansion; Anomalous expansion of water; Thermal stress in rods.',
              ),
              CourseContent(
                title:'Heat energy:',
                content: 'Joule’s experiment; The joule as unit of heat energy; Specific heat capacity; Changes of phase: Latent heat of combustion.',
              ),
              CourseContent(
                title:'Thermodynamics:',
                content: ' Heat and work and Pressure versus Volume diagram; First law of thermodynamics; Special cases of the first law; Iso-volumetric process, adiabatic process, isothermal process, free expansion, throttling process; The second laws of thermodynamics; The Carnot cycle. The four-stroke gasoline engine; The diesel engine; The gas turbine, jet engine, and rockets; The rotary engine. Refrigerators',
              ),
              CourseContent(
                title:'Thermal properties of gases:',
                content:' Boyle’s law. Charle’s law; The ideal gas law; Volume and pressure coefficient of ideal gases. The absolute zero of temperature and Kelvin scale; The two principal specific heat capacities of a gas. Cp-Cv = R and Cp/Cv = γ. Isothermal and adiabatic expansions of an ideal gas. Real gases: Van der Waal’s equation of state, the Joule-Kelvin effect and the liquefaction of gases.',
              ),
              CourseContent(
               title: 'Kinetic theory of gases:',
                content: 'Assumptions of the kinetic theory, speeds of gas molecules, the Maxwellian distribution, the root mean square speed. Pressure exerted by an ideal gas: Derivation of p = 3.ρ.c2. Deductions from kinetic theory of gases: Kinetic interpretation of temperature, Avogadro’s law, Graham’s law of diffusion, Dalton’s law of partial pressures; Brownian motion.',
              ),
              // ... Repeat similar structures for other courses and content
              CourseContent(
                title:'Transfer of Heat:',
                content:' Conduction: Definition of thermal conductivity; Measurements of the conductivities of good and bad conductors. Radiation: Detection of radiant energy; The ideal radiator, Intensity distribution in black body radiation; Provost’s theory; Kirchoff’s law; Stefan’s law; Wien’s displacement law. Radiation pyrometers; the solar constant and an estimate of the Sun’s temperature',
              ),
              CourseHeader('PHY 171: BASIC EXPERIMENTAL PHYSICS I (1 UNIT)'),
              CourseContent(
                title:'',
                content:' A laboratory course covering basic experiments illustrative of the first semester 100 level physics syllabus.',
              ),

              CourseHeader('CHM 111: FOUNDATION CHEMISTRY I (3 UNITS)'),
              CourseContent(
                title:'Physical Quantities and Units:',
                content:'The physical quantities understood as consisting of numerical magnitude and unit; International system of units; Base units; mass, length, time, current, amount of substance. Other units expressed as products or quotients of base units.',
              ),
              CourseContent(
               title: 'Relative Masses of Atoms and Molecules:',
                content: 'Relative atomic, isotopic, molecular and formula masses; The mole concept and the Avogadro constant; Determination of Relative Masses; Calculation of empirical and molecular formula; Chemical stoichiometry.',
              ),
              CourseContent(
                title:'Atomic and Nuclear Basis:',
                content:'Evidence for atomic constituents: Electrons, Protons and Neutrons – their relative charges and masses; The nucleus, atomic number, mass isotopes and mass spectra; The electronic structure of the atom; Radioactivity, X – ray radiation and detection; Nuclear transformation and binding energy; Nuclear reactions and stability; Applications of radionuclides; Electromagnetic radiation, Wavelength and frequency; Radiation as energy, the Plank relation; Regions of electromagnetic spectrum, absorption and emission of radiation; Wave-particle dualism and the de Broglie equation. The wave equation treated symbolically; Heisenberg uncertainty principle. Energy levels in atomic hydrogen and their quantum numbers; Ionization energy; The size, shape and orientation of atomic nuclear spin, the Stern Gerlach experiment; Many electron atoms, electron configuration and Pauli Principle, Hund’s rule.',
              ),
              CourseContent(
                title:'Chemical Bonding:',
                content: 'Dependence of properties of solids, liquids and gases on the type of chemical bonding; Electrovalent bond between ions; Covalent bonds; The shape of simple molecules including CO2 (linear), CH4 (tetrahedral), NH3 (pyramidal), H2O (non – linear), SO3 (trigonal), SF6 (octahedral); Metallic bonds; Intermolecular bonds; Hydrogen bonding and its influence on properties.',
              ),

              CourseHeader('GNS 111: USE OF ENGLISH I(2 UNITS)'),
              CourseContent(
                title:'Grammar:',
                content: 'Type of sentences and sentence structure; Concord – treatment of types of common faults; Violations of unit, inclusion of irrelevant details, Illogical association of ideas etc; Punctuation. Note-taking; principles of note-taking, note-taking practices; Practice procedure; Application of the procedure. Changes required in indirect speech.',
              ),

              CourseHeader('GNS 211: LIBRARY AND INFORMATION SCIENCE (2 UNITS)'),
              CourseContent(
                content: '''National planning and development, information for international understanding and cooperation – economic, cultural, political, scientific and technological; Types of Libraries according to organization, materials, services and users; Private and public, public and communal, academic, special and national; Acquisition of materials (for acquisition of knowledge); Types of materials – books, serials, maps, documents, non-books – audio-visuals, archival materials etc.

Methods of acquisition – orders, gifts, exchanges and legal depository, organization of libraries and information: descriptive cataloguing – identification of each item in a collection, classification – grouping each item by subject- decimal (000 – 999), Dewey – Universal Decimal Classification Alphabetical – Library of Congress (A – Z) .

Using Library resources: circulation of materials for home use, reserved book system for use in library for limited period and reference resources for use in library.

inter-library lending of materials among libraries collection. Information retrieval by and for users: the book: its parts and uses.

The catalogues: index to library collections reference sources: Encyclopedias, dictionaries, biographies, atlases and gazettes, guides, handbook, manuals directories, annuals, year books, abstracts, bibliographies, indexes, literature summaries, reviews and current contents.

Current awareness services – selective dissemination of information (SDI): academic profiles, circulation of contents pages and in – house indexes, abstracts and literature summaries.

Research methods: writing term papers; Technical report of projects, choice of a topic of interest to student and set project. Outline of project: literature searches, compile bibliographies on topics, find out areas covered – list available publications, find out gaps to be filled in a subject of project or problem to be solved in project.

Decide methodology: questionnaires, interviews, fieldwork and correspondence. Gather relevant data: make full citation of all works consulted and all quotations to be used (author, title, data imprint, and page). Analyze data; discarding irrelevant, classifying relevant according to outline.

Library etiquettes: rules and regulations.'''
              ),
            ],
          ),
        ),
      ),
    );
  }
}