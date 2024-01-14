import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class FirstYearSecondSemester extends StatefulWidget {
  const FirstYearSecondSemester({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => FirstYearSecondSemesterState();
}


class FirstYearSecondSemesterState extends State<FirstYearSecondSemester>{
  late final WebViewController webViewController;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController();
    _onLoadFlutterAsset(webViewController, context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CourseHeader('MTH 121: ELEMENTARY ALGEBRA II (4 UNITS)'),
              const CourseContent(
                content:
                'Plane analytical geometry: Rectangular coordinates, polar coordinates; 2-dimensional vectors; addition and scalar multiplication. Curves: locus of an equation; Polar equations, parametric equations; Line of a conic section; Distance formulae; Tangent and normal; Transformations of the plane.',
              ),
              const CourseContent(
                content:
                'Matrices: Addition and multiplication associate and distributive laws, identity matrix; Square matrices: solving n linear equations with n unknowns; Gaussian elimination, Gauss – Jordan method for inverse; Determinants; Conjugate matrix. Crammers rule.',
              ),
              const CourseContent(
                content:
                'Graphs and digraphs: Elementary concepts. Multigraphs, loops, planar graphs, complete graphs; Incidence and adjacency matrix; Walks, trials, paths, cycles, Vertex coloring; Mathematical induction; Binomial theorem; Summation notation; Sequences: recursive definition; Series: partial sums, convergence criteria.',
              ),
              const CourseHeader('MTH 122: CALCULUS II (4 UNITS)'),
              const CourseContent(
                content:
                'Application of differentiation: Extreme of a function (on restricted domain), concavity, points of inflection, tangents to a curve, Mean value theorem, Taylor’s formula, L’Hospital’s rule.',
              ),
              const CourseContent(
                content:
                'Application of integration: Area under the graph of a function, area of a sector (polar coordinates), arc length.',
              ),
              const CourseContent(
                content:
                'Function of several variables: Limits, continuity. Partial differentiation: Total derivative; Chain rule, Tangent line to a space curve, tangent plane to a surface. Maxima and minima, Taylor’s formula.',
              ),
              const CourseHeader('PHY 126: INTRODUCTORY ELECTRICITY AND MAGNETISM (3 UNITS)'),
              const CourseContent(
                title: 'Coulomb’s Law:',
                content: 'Electric charges; The electroscope Induction; Coulomb’s law of electrostatics;',
              ),
              const CourseContent(
                title: 'The Electric Field:',
                content:
                'Lines of force; Gauss’s law and simple applications; Electric fields and charged conductors; Millikan’s oil drop experiment.',
              ),
              const CourseContent(
                title: 'The electric potential:',
                content:
                'Potential energy difference; Potential energy at a point in space. The volt, and equipotential surfaces; Kinetic energy of a charged particle; The electron volt; Potential difference between charged plates; Electric potential energy due to a charged sphere.',
              ),
              const CourseContent(
                title: 'Capacitors: capacitance of charge;',
                content:
                'Electric capacitors; Calculation of capacitance in simple cases; Capacitors in parallel, and in series; Energy required to charge a capacitor; Time for charging and discharging a capacitor.',
              ),
              const CourseContent(
                title: 'Dielectrics:',
                content:
                'Dielectric materials; Parallel plate capacitor with dielectric; Molecular explanation of dielectric behavior; Electric displacement; Energy changes in capacitors.',
              ),
              const CourseContent(
                title: 'The electric circuit:',
                content:
                'Electric current in a wire. Drift velocity of electrons; Electromotive force; Ohm’s law; Resistance, Resistivity; Variation of resistance with temperature; Kirchoff’s laws; Internal resistance and its measurement; The Wheatstone bridge; Potentiometer; Combinations of resistance; The potential divider; Energy and power; Joule’s law; Transmission of electric power; Thermoelectricity.',
              ),
          const CourseContent(
            title: 'Magnetic effects of current:',
            content:
            'Oersted’s experiments; Biot and Savart’s law; Magnetic field due to a long straight wire; Field along the axis of a coil; Field due to a solenoid; Magnetic induction; Force on a current – carrying conductor in a magnetic field; Force between two parallel conductors and the definition of the Ampere; The current balance; Force on a rectangular coil; Galvanometers, ammeters and voltmeters; Magnetic force on a moving charge; Paths of charged particles in electric and magnetic fields; Measurement of the e/m ratio; Mass spectrograph and isotopes; The electron;',
          ),
          const CourseContent(
            title: 'Chemical effect of electric currents:',
            content:
            'Faraday’s laws of electrolysis. Electrochemical equivalent; The mechanism of conduction in electrolytes and ions; Determination of Avogadro’s number; Action of the lead/acid accumulator.',
          ),
          const CourseContent(
            title: 'Magnetic properties of materials:',
            content:
            'Magnetic flux density, B. magnetic field strength, H, magnetic permeability; Variation of ‘B’ with ‘H’; Hysteresis; Theory of magnetism: domains; paramagnetic; diamagnetic and ferromagnetic materials; Torque on a magnet in a uniform magnetic field; Magnetic field of the earth.',
          ),
          const CourseContent(
            title: 'Electromagnetic induction:',
            content:
            'Induced current and induced e.m.f. Energy conservation: Lenz’s law; Faraday’s law of electromagnetic induction; Force on moving electrons; Rotating coils; AC and DC generators; Electric motors; Eddy currents; The Transformer.',
          ),
              const CourseContent(
                title: 'Alternating current circuits:',
                content:
                'Self and mutual inductance; The induction coil; The L-R circuit, time constant. Energy associated with capacitor and inductor; The R-C circuit, growth and decay of current; Resonance tuning; Power in AC circuits; Phase relations; Phase diagrams; AC ammeter and voltmeters; Radiation of electromagnetic waves (qualitatively), the full electromagnetic spectrum.',
              ),
              const CourseHeader('PHY 172: BASIC EXPERIMENTAL PHYSICS II (1 UNIT)'),
              const CourseContent(
                content:
                'A laboratory course covering basic experiments illustrative of the second semester 100 level physics syllabus.',
              ),
          const CourseHeader('CHM 121 FOUNDATION CHEMISTRY II (3 UNITS)'),
          const CourseContent(
            content:
            'Gases; Liquids and solids; Derivation of ideal gas equation leading to Boyle’s law and Avogadro’s hypothesis; The Avogadro constant, a simplified treatment (e.g. particle in a box); The assumptions for ideal behavior and their limitation for real gases at high pressure and low temperature.',
          ),
          const CourseContent(
            content:
            'Boltzman’s distribution and molecule speed. Boltzman’s constant. Liquids: the kinetic concept of the liquid state and simple kinetic – molecular description of melting, vaporization and vapor pressure; Saturated and unsaturated Vapors. Phase equilibria: Phase rule, equilibria involving one, two and three components;',
          ),
          const CourseContent(
            content:
            'Solids: Lattice structure and spacing. NaCl as ionic lattice; Cu as a cubic close – packed metal lattice; Graphite and diamond – their properties as macro – molecular structures; Lattice energy and forces between the particles in atomic molecular and ionic lattice; Electrolysis; The factors affecting mass of substance liberated during electrolysis; Relationship between Faraday and the Avogadro constant and the charge of the electron.',
          ),
          const CourseContent(
            content:
            'Equilibria. Chemical Equilibria: reversible reactions, and dynamic equilibrium. Factors affecting chemical equilibria: Le Chatelier’s principle. Equilibrium Constants: their definition and calculation in terms of concentrations; Effect of temperature on equilibrium constant.',
          ),
          const CourseContent(
            content:
            'Ionic equilibria: Bronsted – Lowry theory of acids and bases; Strong and weak acids in terms of conductivity; Strong and weak electrolyte; Degree of dissociation; The ionic product of water Kw: pH and calculations, pH indicators; choice of indicators; Buffer solutions; Chemical kinetics.',
          ),
          const CourseContent(
            content:
            'Simple rate equations: order of reaction; rate constants. Rate – K (A)n (B)m. Treatment should be limited to simple cases; simple one step reactions; Simple calculations on half-life; Quantitative effects of temperature on rate constants; Catalysis; Thermochemistry and Chemical Energetics.',
          ),
          const CourseContent(
            content:
            'Standard enthalpy changes of reaction, formation, combustion and neutralization: Hoss’s law; Lattice energy for simple ionic crystals. A treatment of the Born – Haber cycle is required.',
          ),
          const CourseHeader('GNS 112: USE OF ENGLISH II (2 UNITS)'),
          const CourseContent(
            content:
            'Writing Essays and Letters: The paragraph – definition, fundamental principle, the topic sentence. Outlining – collection and organization of materials and logical presentation of papers.',
          ),
          const CourseContent(
            content:
            'Types of Essays: Narration and exposition, argument and persuasion; The business/official letter, the informal letter. Introduction to the lexis and structure of scientific English, sentence construction – passive, laboratory report writing. Research Paper Writing: Selecting and limiting a subject, sources of knowledge, organization of library resources, compiling a working bibliography on reference sources, preparing a preliminary outline, etc. format of the research paper and footnotes and bibliography – types and uses.',
          ),
          const CourseContent(
            content: 'Oral English: Phonetics, public speaking and oral communication.',
          ),
          const CourseHeader('GNS 222: NIGERIAN PEOPLE AND CULTURE IN THE CONTEXT OF AFRICAN HISTORY (2 UNITS)'),
          const CourseContent(
            content:
            'The concept of history: what is history; its value, Source, materials for African history: written sources, unwritten sources, oral traditional, archaeological findings and linguistic evidence. The usefulness and limitations of written and unwritten sources.',
          ),
              const CourseContent(
                content:
                'A pre-history of Africa with concentration on the following subregions: the early western Sudan, the early states of the Guinea Forest, the early States of equatorial and South Africa. The tradition of some Nigerian People: the Yoruba, Igbo, Hausa, Fulani, Jukun, Tivs, Ijaws, etc.',
              ),
              const CourseContent(
                content:
                'The Atlantic slave trade; Why abolition was unduly prolonged; European Colonization of Africa. Evolution of Nigeria as a political unit; Africa before scramble; The scramble – Causes, nature, and impact; The Berlin Conference 1884 – 85 and the partition; Nationalist movements and decolonization of Africa.',
              ),
              const CourseHeader('CS 142: INTRODUCTORY COMPUTER SCIENCE (3 UNITS)'),
              const CourseContent(
                content:
                'The historical development of digital systems, how computers work; the computer systems; the algorithms and basic computer programming concepts. Basic programming language; computer applications; commercial.',
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 400,
                  child: WebViewWidget(controller: webViewController),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Future<void> _onLoadFlutterAsset(
    WebViewController controller, BuildContext context) async {
  await controller.loadFlutterAsset('assets/tables/hundred_level_ss.html');
}