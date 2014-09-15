module.exports =
  navigation:
    home: 'Home'
    classify: 'Classify'
    science: 'Science'
    team: 'Team'
    education: 'Education'
    profile: 'Profile'
    discuss: 'Discuss'
    blog: 'Blog'

  home:
    heading: 'Welcome to Snapshot Wisconsin'
    rightBannerHeader: "What is Snapshot Wisconsin?"
    action: 'Get Started'
    currentStatus: '<span class="classification-count">0</span> classifications by <span class="user-count">0</span> volunteers'

    stats:
      header: "SNAPSHOT WISCONSIN Statistics"
      activeUsers: "Active Users"
      crittersIdentified: "Critters Identified"
      totalImages: "Images Total"
      complete: "Complete"

  classify:
    deleteAnnotation: 'Delete'
    notSignedIn: 'You\'re not signed in!'
    favorite: 'Favorite'
    unfavorite: 'Unfavorite'
    play: 'View series'
    pause: 'Stop'
    satellite: 'Satellite view'
    nothingLabel: 'Nothing here'
    nextSubjectButton: 'Finish'
    share: 'Share'
    tweet: 'Tweet'
    pin: 'Pin it'
    discuss: 'Discuss'
    next: 'Next capture'
    search: 'Search'

    nothingToShow: 'There\'s nothing to show with these filters.'
    clearFilters: 'Clear filters'

    oftenConfused: 'Often confused with:'

    count: 'How many'

    behavior: 'Behavior'
    behaviors:
      headUp: 'Head Up'
      headDown: 'Head Down'
      neither: 'Neither'
      notVisible: 'Not Visble'


    babies: 'Young present'
    rain: 'Raining'

    cancel: 'Cancel'
    identify: 'Identify'

    tutorial:
      button: "View Tutorial"
      continueButton: 'Continue'

      welcomeHeader: 'Welcome to Snapshot Serengeti!'
      welcome: '''
        This short tutorial will walk you through your first classification. Let's get started!
      '''

      trapsHeader: 'Check out the Images'
      traps: '''
        All over the Serengeti, scientists have set up motion sensitive camera traps.
        The camera snaps a few shots anytime something moves in front of it.

        The photos often come as a sequence of 2 or 3, called a "capture".

        Check out other snapshots in the sequence using the buttons below the image,
        or play them like a flipbook by clicking the play button.
      '''

      taskHeader: 'Identify the Animals'
      task: '''
        Your task is to identify all the different animals that appear in the photos.
        The species that will appear are listed here.

        It's a big list, and some species may be unfamiliar,
        but there are a few ways to narrow that list down using the characteristics you see.
      '''

      chooseAntelopeHeader: 'Looks like...'
      chooseAntelope: '''
        The animal in the foreground of this photo looks like a large antelope of some kind.

        Let's choose "Antelope/deer" from the "looks like" menu.
      '''

      chooseSolidHeader: 'Characteristic: Pattern'
      chooseSolid: '''
        Let's narrow the list down a bit by choosing the solid swatch from the "Pattern" menu.
      '''

      chooseCurlyHeader: 'Characteristic: Horns'
      chooseCurly: '''
        We've narrowed the list down enough to see thumbnail previews of the remaining animals.

        Choose the "Curly" icon from the "Horns" menu to narrow the list down further.
      '''

      chooseWildebeestHeader: 'Make a choice'
      chooseWildebeest: '''
        Great, that leaves us with just one option!
        Let's choose "Wildebeest" it and make sure it's a match.
      '''

      confirmWildebeestHeader: 'Looks Good!'
      confirmWildebeest: '''
        By comparing the animal to to the photos here and reading the description below, we can confirm that this is indeed a wildebeest.
        You can flip through the photos to see examples of the animal from multiple angles using the bullets on the right.
      '''

      identifyWildebeestHeader: 'Count & Behavior'
      identifyWildebeest: '''
        Once you're confident that this is a wildebeest,
        choose "1" from the count menu and "Moving" from the behavior menu.
        Then click "Identify."
      '''

      findZebrasHeader: 'Identify another animal'
      findZebras: '''
        We want to try to identify all the animals in each capture.
        Look closely and you'll notice that there are some zebras in the distance.

        Let's look at another way of classifying when we already know which species we can see.
      '''

      typeZebraHeader: 'Search'
      typeZebra: '''
        The seach field is a quick way to highlight animals whose descriptions contain certain words.

        Type "zebra" in the search field...
      '''

      clickZebraHeader: 'Search'
      clickZebra: '''
        ...and click "Zebra," which is the only animal highlighted.
      '''

      confirmZebraHeader: 'Just do your best!'
      confirmZebra: '''
        It's hard to make out the zebras in the distance, so classify as best you can.
        Each classification is compared with the classifications of other volunteers, so even if you're not sure, just try your best!
      '''

      identifyZebraHeader: 'Count & Behavior'
      identifyZebra: '''
        There are two zebras in the distance, and they appear to be grazing with their heads bowed.
        Mark "2," "Standing," and "Eating," then click "Identify."
      '''

      finishHeader: 'Nice Job!'
      finish: '''
        Now you're ready to classify some images on your own.

        In each image, do your best to identify all the animals you can,
        even if you can't see enough to be completely sure.
        If there aren't any animals in an image, check "Nothing here" and then "Finish."

        Your observations will be combined with those of multiple volunteers,
        so even if you're not sure on something, your contribution is still very useful!

        Don't forget: after classifying an image you can always discuss it with professional and citizen scientists or share it with friends.

        Click "Finish" now to move on.
      '''

    splits:
      social: 'Good job! You and ### other Zooniverse volunteers have contributed to Snapshot Serengeti.'
      task: 'Good job! The image you successfully classified was taken by one of over 200 motion triggered cameras set-up around Serengeti National Park.'
      science: 'Good job! Our science team needs your classifications to understand how different animals coexist in the Serengeti.'

  differences:
    bearBlack:
      amphibiansAndReptiles: 'Really hard to confuse these two, but somehow people manage it.'

  animals:
    amphibiansAndReptiles:
      label: 'Amphibians and Reptiles'
      description: 'Because these animals are so small, they will be captured infrequently by the camera. Amphibians and reptiles include many species of frogs, snakes, lizards, turtles, and salamanders. If you spot any of these, mark them here.'
    badgerAmerican:
      label: 'Badger, American'
      description: 'Badgers have low, wide bodies with short legs. The fur of a badger ranges from grayish to reddish along the back with a buff colored underside. Badgers have distinctive black patches on their face and a white stripe extending from nose, down the back.'
    bearBlack:
      label: 'Bear, Black'
      description: 'Black bears are large and heavily built.  They are usually black in color with a brown muzzle. Other uncommon color variations include brown or cinnamon. They have a short tail and prominent, round ears.'
    beaverAmerican:
      label: 'Beaver, American'
      description: 'Beavers have glossy fur that can appear reddish brown to blackish brown. They have a distinctive scaly paddle-shape tail. They have short, round ears and are typically found near water.'
    birds:
      label: 'Bird'
      description: 'If you see a bird that doesn’t already have its own category, you can mark it here.'
    bobcat:
      label: 'Bobcat'
      description: 'The coat of this cat varies from gray to reddish brown, typically with spots, especially on the belly. The bobcat has short tuffs on its ears. They have short tails that, on the tip, are black above with white below.'
    catDomestic:
      label: 'Cat, Domestic'
      description: 'Feral or stray cats are small in size compared to wild cat species. Look for unique coloration or patterns not found in the wild.'
    chipmunksAndSquirrels:
      label: 'Chipmunks and Squirrels'
      description: 'Because these animals are so small, they will becaptured infrequently by the camera. Common species in this category include the gray squirrel, red squirrel, 13-lined ground squirrel, eastern or least chipmunks, and flying squirrels. If you spot any of these, mark them here.'
    cottontailEastern:
      label: 'Cottontail, Eastern'
      description: 'The fur of this small rabbit is brown in color with longer gray and black guard hairs, giving it a grizzled appearance. Their ears are typically shorter than the hind feet and are small in proportion to the body.'
    cougar:
      label: 'Cougar'
      description: 'The coat of this large slender cat varies from yellowish brown to grayish brown with a lighter color belly and throat. Their head is relatively small and the area behind the ears is black. Cougars have a long black-tipped tail. Although there are no known breeding populations of cougar in Wisconsin, there have been several verified sightings in recent years.'
    coyote:
      label: 'Coyote'
      description: 'Coyotes have a distinctive pointed muzzle and pointed ears, which are large in proportion to the head.'
    craneSandhill:
      label: 'Crane, Sandhill'
      description: 'This tall bird is gray to brown. It has a bright red patch on the crest of the head and long black legs. Young are gray with scattered reddish brown feathers.'
    craneWhooping:
      label: 'Crane, Whooping'
      description: 'This tall bird is white in color with red facial skin and long black legs. Young are reddish brown with scattered white feathers.'
    deerWhiteTailed:
      label: 'Deer'
      description: 'Lightly built, whitetail deer are grayish brown to reddish brown in color. The underside of their short tail is white. Males have antlers which fork off a main branch and the young are reddish brown in color with white spots.'
    dogDomestic:
      label: 'Dog, Domestic'
      description: 'Domestic dogs come in all shapes and sizes. Look for unique coloration or patterns not found in the wild. Also look for signs of humans (including a collar or leash) to differentiate domestic dogs from their wild canid counterparts.'
    elk:
      label: 'Elk'
      description: 'Elk have a large, thick body with long slender legs. They have a dark brown head and neck, lighter body, and a cream colored rump. Males have antlers which fork off a main branch and a dark shaggy mane that hangs from the neck to the chest. The young have white spots.'
    fisher:
      label: 'Fisher'
      description: 'Fishers are medium in size and have dark brown bodies with long bushy tail. The head, neck, and shoulders can be a grizzled yellowish brown. Fishers may also have a cream colored patch on the chin or chest.'
    foxGray:
      label: 'Fox, Gray'
      description: 'These medium-size mammals have distinctive coloration. Their upper side is grizzled gray and cinnamon with a buff colored neck and underside. The long tail has a black stripe on the upper side and a black tip.'
    foxRed:
      label: 'Fox, Red'
      description: 'These medium-size mammals vary in color from yellowish red to reddish brown on the upper side with a white underside and nearly black legs. Red foxes have a bushy tail with a white tip. Other color variations include cross foxes (grizzled gray down back and across shoulders) and silver foxes (entire body silver to nearly black).'
    grouse:
      label: 'Grouse'
      description: 'Wisconsin is home to both spruce grouse and ruffed grouse. Both can appear red or gray in color. Ruffed grouse have a small crest on the top of the head with a black ruff on the sides of the neck. Male spruce grouse have a dark throat and breast.'
    hareSnowshoe:
      label: 'Hare, Snowshoe'
      description: "Hares' coloration varies with season. In the summer, hares have dark brown to reddish brown fur, and in the winter, the fur is white. Their coat is more homogenous than a cottontail rabbit. Hares have long feet and ears are large in proportion to the body."
    human:
      label: 'Human'
      description: 'Occasionally you may see humans or their vehicles (including cars, bikes, or ATV) using the same areas as wildlife.'
    jackrabbitWhiteTailed:
      label: 'Jackrabbit, White Tailed'
      description: "Jackrabbits' coloration varies with season. The upper side is grayish brown in color with gray or white on the underside, and in the winter, the fur is white. The tail is white year-round. Jackrabbits have ears which are longer then the head. Observation of this species in Wisconsin is rare."
    lynxCanada:
      label: 'Lynx'
      description: 'The coat of this cat varies from gray to grayish brown with spots on the legs and belly. The lynx has long black tuffs on the ears. They have short tails that are tipped black. In comparison to a bobcat, lynx have very large furry feet and long legs. Lynx are very uncommon in Wisconsin, although rare sightings of visitors from Canada do occur.'
    martenAmerican:
      label: 'Marten, American'
      description: 'This small, long-bodied animal has a bushy tail. The fur of a marten varies from dark brown to tan, usually with a paler head and dark legs. The throat of a marten is whitish cream to orange. The ears of a marten are relatively large and rounded. This is an uncommon species in Wisconsin.'
    minkAmerican:
      label: 'Mink, American'
      description: 'This small long-bodied animal is typically found near water. The fur of a mink is dark brown. Mink may sometimes have white patches on the chin and chest. Compared to a marten, they are more uniformly colored. Their face is flat and pointed.'
    moose:
      label: 'Moose'
      description: 'Moose are one of the largest land mammals in North America. They have a blackish brown body with a long nose. Males have large palmate antlers and the young are reddish brown. This is an uncommon species in Wisconsin.'
    muskrat:
      label: 'Muskrat'
      description: 'The body of a muskrat is stout with dark brown fur. Muskrats have short rounded ears, barely protruding above the fur, and a rounded, scaly tail. They are typically found near water.'
    opossumVirginia:
      label: 'Opposum, Virginia'
      description: 'Opossums have short legs and a thick body. They are typically grizzled gray in color with a white head. The tail is scaly and is black at the base with a white tip. Their large ears are mostly furless.'
    otherDomestic:
      label: 'Other Domestic'
      description: 'Occasionally you may see other domestic animals, such as swine or cattle.'
    otter:
      label: 'Otter'
      description: 'Otters are stocky, medium-sized mammals usually found near water. They have short, dense dark brown fur and are sleek in appearance. Otters have a muscular neck and thick tail which tapers at the tip.'
    pheasentRingNecked:
      label: 'Pheasent'
      description: 'This bird has a long pointed tail and short rounded wings. Males appear iridescent bronze with a green and black head. Males also have fleshy eye patches and a white neck ring. Overall females are a buff color and are more dull than males.'
    pigFeral:
      label: 'Pig, Feral'
      description: 'Feral pigs or wild hogs are stocky animals and can vary greatly in size and color. Compared to domestic swine, they have longer snouts, longer course hair, a straight tail, and may have tusks. This exotic species is not common in Wisconsin.'
    porcupineNorthAmerican:
      label: 'Porcupine'
      description: 'The body of a porcupine is stout and covered in quills, which are partially concealed by long guard hairs. Porcupines appear dark brown in color.'
    raccoonNorthern:
      label: 'Raccoon'
      description: 'Raccoons are stocky with slender paws. They vary in color from gray to reddish brown to buff. Raccoons have a distinctive black mask across the eyes and a bushy tail with black rings.'
    skunkStriped:
      label: 'Skunk, Striped'
      description: 'Striped skunks are best distinguished by their coloration. They have a black body with a white striping pattern. Pattern can vary between individuals, but typically striped skunks have a white stripe on the top of their snout and forehead that extends down the back, splitting into a V-shape.'
    spottedSkunkEastern:
      label: 'Skunk, Spotted'
      description: 'This skunk is smaller than a striped skunk. It is black with a white patch on the forehead. Although the pattern varies across individuals, typically there are four to six broken white stripes along the body. Very few historical records of spotted skunks from Wisconsin exist.'
    turkeyWild:
      label: 'Turkey'
      description: 'This skunk is smaller than a striped skunk. It is black with a white patch on the forehead. Although the pattern varies across individuals, typically there are four to six broken white stripes along the body. Very few historical records of spotted skunks from Wisconsin exist.'
    weasel:
      label: 'Weasel'
      description: 'Wisconsin is home to least weasels, long-tailed weasels, and short-tailed weasels. These carnivores are small and have long, thin bodies with short legs. In the summer, species are brown to dark brown with a yellowish white underside, and in the winter, they are white. Some species have a black tipped tail.'
    wolfGray:
      label: 'Wolf, Gray'
      description: 'The gray wolf is the largest of wild canid species. Their fur is typically a mix of tan, brown, black, and cinnamon. Other uncommon color variations include both solid black and white. Wolves have a distinctive blocky muzzle with rounded, relatively short ears.'
    wolverine:
      label: 'Wolverine'
      description: 'This is a stocky mammal with short powerful legs. The fur of a wolverine is brown or brownish black with a blond band on the forehead and a blond band extending along the sides. They have a large head with small ears and sharp claws. This species is considered to be extirpated in Wisconsin, with no recent confirmed reports.'
    woodchuck:
      label: 'Woodchuck'
      description: 'This is a stocky mammal with short powerful legs. The fur of a wolverine is brown or brownish black with a blond band on the forehead and a blond band extending along the sides. They have a large head with small ears and sharp claws. This species is considered to be extirpated in Wisconsin, with no recent confirmed reports.'

  characteristics:
    like: 'Looks like...'
    coat: 'Coat'
    tail: 'Tail'
    build: 'Build'

  characteristicValues:
    likeCatDog: 'Cat Dog'
    likeRodent: 'Rodent'
    likeOther: 'Other'
    likeManMade: 'Man Made'
    coatTanYellow: 'Tan Yellow'
    coatRedBrown: 'Red Brown'
    coatBrownBlack: 'Brown Black'
    coatGrayBlack: 'Gray Black'
    coatMottled: 'Mottled'
    coatSolid: 'Solid'
    coatOrTailStriped: 'Or Tail Striped'
    tailBushy: 'Bushy'
    tailSmooth: 'Smooth'
    tailLong: 'Long'
    buildStocky: 'Stocky'
    buildLanky: 'Lanky'
    buildSmall: 'Small'
    buildLowSlung: 'Low Slung'

  profile:
    header: "Your Profile"
    favorites: 'Favorites'
    recents: 'Recents'
    noFavorites: 'You have no favorites!'
    noRecents: 'You have no recent classifications!'
    showing: 'Showing'
    loadMore: 'Load more'

  about:
    info:
      nav: "Info"
      header: "What is Snapshot Wisconsin?"
      p: """
        Nunc lacinia, felis ut rutrum facilisis, mi ante commodo libero, a volutpat nisl dolor blandit sapien. Pellentesque iaculis dignissim venenatis. Vivamus felis massa, convallis eget quam id, mollis posuere lorem. Aenean lacinia vel ante vulputate fringilla. Curabitur sed faucibus sapien. Duis at augue lectus. Vivamus aliquet, ipsum placerat volutpat bibendum, dui sapien convallis mi, convallis cursus tortor sapien sit amet eros. Quisque ultricies lectus nulla, in iaculis lacus tempus sit amet.
      """
    about:
      nav: "About"
      header: "About"
      p: """
        Cities can be hostile places for wildlife, with threats coming from habitat destruction, roads and traffic, humans, pets and large numbers of invasive species.
        However, with proper management, urban areas can house a number of important wildlife species, including carnivores and small mammals.
        <br><br>
        To assess the biodiversity of the greater Chicagoland area, Lincoln Park Zoo’s Urban Wildlife Institute has established monitoring stations within city parks,
        forest preserves, golf courses and cemeteries across a four-county area, including downtown Chicago and its suburbs. Motion-triggered cameras are deployed four
        times per year at more than 100 sites to determine which species are present and to assess spatial and long-term patterns in wildlife communities.
        <br><br>
        Knowing where Chicago’s urban wildlife is located will help us to better conserve it. This knowledge will pave the way for future studies on the behavior and
        ecology of specific urban species, helping stakeholders to better manage wildlife conflict.
      """
    organizations:
      nav: "Organizations"
      header: "Organizations"
      adler:
        header: "Adler Planetarium"
        p: """
          The Adler Planetarium - America's First Planetarium - was founded in 1930 by Chicago business leader Max Adler.
          The Adler is a recognized leader in science education, with a focus on inspiring young people to pursue careers in science, technology, engineering and math.
          Throughout 80 years, the Adler has inspired the next generation of explorers by sharing the personal stories of space exploration and America’s space heroes.
        """

  team:
    navigation:
      people: 'People'
      organizations: 'Organizations'

    bios:
      townsend: ''
      zuckerberg: 'Dr. Benjamin Zuckerberg is an assistant professor in the Department of Forest and Wildlife Ecology at the University of Wisconsin-Madison. His research focuses on how climate change and habitat loss impacts wildlife populations. He is a strong advocate for the role of the public in collecting biological data. Using the data from these “citizen science” programs, Ben has studied shifts in bird ranges and migration in response to a changing climate.'
      deelen: ''
      singh: ''
      stenglein: 'Dr. Jennifer Stenglein is a quantitative wildlife research scientist with the Wisconsin Department of Natural Resources where she works on trail camera monitoring of Wisconsin’s wildlife. She is interested in getting students and the public involved in wildlife monitoring and using those data to understand spatial patterns and temporal trends in wildlife populations.'
      martin: 'Karl Martin is the State Director for the Community, Natural Resource and Economic Development Program and an Assistant Dean with the University of Wisconsin Cooperative Extension. He is an adjunct Associate Professor at the University of Wisconsin-Madison’s Forest and Wildlife Ecology Department and recently served as the Wildlife and Forestry Research Section Chief at the Wisconsin Department of Natural Resources. Karl received his Bachelors degree in Wildlife Ecology at UW-Madison and his Masters and Doctorate degrees at Oregon State University. Karl’s research has focused on interaction of forest management and multi-scale wildlife habitat relationships. His current position focuses on the ‘Wisconsin Idea’ of taking the information and resources of the University to communities and citizens of the state.'
      anhalt: 'Christine Anhalt is a research scientist with the Wisconsin Department of Natural Resources where she assists with coordinating the Snapshot Wisconsin project. She completed a Master’s degree in conservation biology at University of Wisconsin-Madison. Christine’s research has focused on human-wildlife interactions.'

    organizations:
      wdnr: 'Members of the Snapshot Wisconsin team are scientists at the Wisconsin Department of Natural Resources (WDNR). The WDNR provided funding for the purchase of trail cameras and provides ongoing support for the project. The WDNR, in partnership with individuals and organizations, manages “fish, wildlife, forests, parks, air and water resources while promoting a healthy, sustainable environment and a full range of outdoor opportunities.”'
      uwm: 'Members of the Snapshot Wisconsin team are ecologists at the University of Wisconsin Madison in the Department of Forest and Wildlife Ecology. UW-Madison is a public, land-grant institution founded in 1848 whose mission is to provide “a learning environment in which faculty, staff and students can discover, examine critically, preserve and transmit the knowledge, wisdom and values that will help insure the survival of this and future generations and improve the quality of life for all.”'
      nasa: 'NASA provided partial funding for the first year of the project thought the Ecological Forecasting for Conservation and Natural Resource Management Program. The NASA Applied Sciences Program supports projects that enable uses of Earth observations in organizations’ policy, business, and management decisions.'
      wcbmn: 'The Wisconsin Citizen-based Monitoring (WCBM) Network provided funding for materials used in training citizen volunteers during the first year of the project. The WCBM Network is a stakeholder collaboration “to improve the efficiency and effectiveness of monitoring efforts by providing coordination, communications, technical, and financial resources and recognition to members of the Wisconsin citizen-based monitoring community.”'
      adler: 'The Adler Planetarium was founded in 1930 by Chicago business leader Max Adler. A recognized leader in public learning, the Adler inspires young people -particularly women and minorities - to pursue careers in science, technology, engineering, and math. Scientists, historians and educators at the museum inspire the next generation of explorers.'

  connect:
    header: "Connect"
    action: "Get Started"
    social: """
      Follow the <a href= '#/'>Snapshot Chicago Blog</a> and <a href='#/'>@Snapshot_Chicago</a> to keep current with the latest findings
    """
