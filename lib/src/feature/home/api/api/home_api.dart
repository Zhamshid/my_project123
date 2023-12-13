import 'package:my_project/src/core/resources/assets.gen.dart';
import 'package:my_project/src/feature/home/api/model/news_model.dart';
import 'package:my_project/src/feature/home/api/model/story_model.dart';

class HomeApiData {
  HomeApiData._();
  static final sampleUsers = [
    UserStoriesModel(
      stories: [
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1601758228041-f3b2795255f1?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1609418426663-8b5c127691f9?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1609444074870-2860a9a613e3?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Nnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1609504373567-acda19c93dc4?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
      ],
      userName: "BBC News",
      imageUrl:
          "https://images.unsplash.com/photo-1609262772830-0decc49ec18c?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMDF8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    UserStoriesModel(
      stories: [
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1609439547168-c973842210e1?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4Nnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
      ],
      userName: "User2",
      imageUrl:
          "https://images.unsplash.com/photo-1601758125946-6ec2ef64daf8?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMjN8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    UserStoriesModel(
      stories: [
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1609421139394-8def18a165df?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMDl8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1609377375732-7abb74e435d9?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxODJ8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
        StoryModel(
          imageUrl:
              "https://images.unsplash.com/photo-1560925978-3169a42619b2?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMjF8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        ),
      ],
      userName: "Vox",
      imageUrl:
          "https://images.unsplash.com/photo-1609127102567-8a9a21dc27d8?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOTh8fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
  ];

  static final newsData = [
    NewsModel(
      imageLink: 'https://picsum.photos/200/201',
      country: 'Europe',
      author: 'BBC News',
      authorImagePath: Assets.images.svg.icBbcNews.path,
      title: 'Ukraine\'s President Zelensky',
      description:
          'Ukraine\'s President Zelensky to BBC: Blood money being paid',
      date: '2 hours ago',
      fullNewsText:
          'In a recent interview with BBC News, Ukraine\'s President Zelensky expressed concerns about alleged blood money being paid. The president highlighted the need for a thorough investigation into the matter. He emphasized the importance of transparency and accountability in handling such sensitive issues. The international community awaits further developments as tensions rise in the region.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/202',
      country: 'North America',
      author: 'CNN',
      authorImagePath: Assets.images.svg.icCnbc.path,
      title: 'Major Breakthrough in Medical Research',
      description:
          'Scientists achieve a significant milestone in the quest for a cure',
      date: '1 day ago',
      fullNewsText:
          'Medical researchers worldwide are celebrating a major breakthrough in the ongoing quest for a cure. The recent discovery holds promising implications for various diseases, offering renewed hope to millions. Scientists involved in the groundbreaking research express optimism about the potential impact on global healthcare. The scientific community eagerly awaits further trials and developments.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/203',
      country: 'Asia',
      author: 'Reuters',
      authorImagePath: Assets.images.svg.icScmp.path,
      title: 'Tech Giant Unveils Revolutionary AI Technology',
      description:
          'The latest innovation is set to redefine the landscape of artificial intelligence',
      date: '3 days ago',
      fullNewsText:
          'A leading tech giant has unveiled a revolutionary artificial intelligence technology that is poised to redefine the landscape of AI. Industry experts predict that this innovation will have far-reaching implications, from enhancing automation processes to improving machine learning capabilities. The unveiling ceremony was attended by key figures in the tech industry, marking a significant milestone in the era of AI advancement.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/204',
      country: 'Africa',
      author: 'The New York Times',
      authorImagePath: Assets.images.svg.icBbcNews.path,
      title: 'Historic Artifacts Discovered in Ancient City Ruins',
      description:
          'Archaeologists make groundbreaking discoveries in a recently excavated site',
      date: '1 week ago',
      fullNewsText:
          'Archaeologists have made groundbreaking discoveries in the recently excavated ruins of an ancient city. The findings include well-preserved historic artifacts that provide valuable insights into the culture and lifestyle of the civilization that once thrived in the region. The international archaeological community is buzzing with excitement, and plans for further exploration are already in motion.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/205',
      country: 'South America',
      author: 'The Guardian',
      authorImagePath: Assets.images.svg.icUsaToday.path,
      title: 'Global Leaders Unite for Climate Action',
      description:
          'High-level summit aims to address urgent climate issues facing the world',
      date: '4 days ago',
      fullNewsText:
          'In a historic move, global leaders from various nations are uniting for a high-level summit to address urgent climate issues facing the world. The summit aims to foster international cooperation in combating climate change and implementing sustainable practices. Environmentalists and activists worldwide are closely monitoring the proceedings, hopeful for meaningful commitments and actionable plans to protect the planet.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/206',
      country: 'Australia',
      author: 'BBC News',
      authorImagePath: Assets.images.svg.icBbcNews.path,
      title: 'New Space Mission Targets Exploration of Mars',
      description:
          'SpaceX launches a mission with the goal of uncovering mysteries of the red planet',
      date: '5 days ago',
      fullNewsText:
          'In a remarkable feat of space exploration, SpaceX has successfully launched a new mission with the goal of uncovering mysteries of the red planet. The mission includes advanced instruments and technology designed to collect valuable data about Mars. Scientists and space enthusiasts are eagerly anticipating the results, hopeful for new insights into the planet\'s geology and potential for sustaining life.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/207',
      country: 'Europe',
      author: 'CNN',
      authorImagePath: Assets.images.svg.icVox.path,
      title: 'Celebrity Couple Announces Surprise Engagement',
      description:
          'Beloved stars share their joy with fans as they reveal plans to tie the knot',
      date: '6 days ago',
      fullNewsText:
          'Fans are buzzing with excitement as a beloved celebrity couple announces a surprise engagement. The stars, known for their on-screen chemistry, shared their joy on social media, expressing gratitude for the outpouring of love and support from fans. The surprise engagement adds a touch of glamour to the entertainment world, and fans are eagerly awaiting details about the upcoming wedding.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/208',
      country: 'North America',
      author: 'The Guardian',
      authorImagePath: Assets.images.svg.icVox.path,
      title: 'Crisis Averted as International Diplomacy Prevails',
      description:
          'Diplomatic efforts successfully defuse a tense situation on the global stage',
      date: '1 week ago',
      fullNewsText:
          'In a diplomatic triumph, international leaders successfully averted a crisis that had threatened to escalate tensions on the global stage. Through skillful negotiation and diplomatic efforts, the parties involved reached a resolution that prioritizes peaceful coexistence. The outcome is seen as a testament to the power of international diplomacy in addressing complex geopolitical challenges.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/209',
      country: 'Asia',
      author: 'Reuters',
      authorImagePath: Assets.images.svg.icScmp.path,
      title: 'Innovative Startups Lead the Way in Sustainable Solutions',
      description:
          'Emerging companies showcase groundbreaking solutions for a greener future',
      date: '2 weeks ago',
      fullNewsText:
          'In a showcase of innovation, emerging startups are leading the way in developing sustainable solutions for a greener future. These companies are at the forefront of technological advancements aimed at addressing environmental challenges. The global community applauds their efforts and looks forward to the widespread adoption of these sustainable solutions to build a more eco-friendly world.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/210',
      country: 'Africa',
      author: 'The New York Times',
      authorImagePath: Assets.images.svg.icCnbc.path,
      title: 'Economic Outlook Strong as Global Markets Rally',
      description:
          'Positive indicators signal a robust economic recovery on the international stage',
      date: '3 weeks ago',
      fullNewsText:
          'Optimism abounds as positive economic indicators signal a robust recovery in global markets. Investors and financial analysts are encouraged by the recent rally, pointing to increased consumer confidence and stable economic conditions. The positive economic outlook is expected to have a ripple effect, benefiting various sectors and contributing to a more resilient global economy.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/211',
      country: 'South America',
      author: 'CNN',
      authorImagePath: Assets.images.svg.icScmp.path,
      title: 'Fashion Week Showcases Cutting-Edge Designs',
      description:
          'Designers from around the world unveil innovative creations at the prestigious event',
      date: '4 weeks ago',
      fullNewsText:
          'The fashion world is abuzz with excitement as designers from around the world showcase cutting-edge designs at a prestigious fashion week event. The runway comes alive with innovative creations that push the boundaries of style and aesthetics. Fashion enthusiasts and industry insiders eagerly anticipate the trends that will shape the upcoming seasons, as designers make bold statements through their artistic expressions.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/212',
      country: 'Australia',
      author: 'BBC News',
      authorImagePath: Assets.images.svg.icBbcNews.path,
      title: 'New Film Sweeps Awards at Prestigious Festival',
      description:
          'Critically acclaimed movie earns top honors at a renowned film festival',
      date: '1 month ago',
      fullNewsText:
          'A new cinematic masterpiece has taken the film industry by storm, sweeping top honors at a prestigious festival. The critically acclaimed movie, praised for its compelling storytelling and outstanding performances, has captivated audiences and critics alike. The awards mark a significant achievement for the filmmakers and cast, solidifying their place in the annals of cinematic excellence.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/213',
      country: 'Europe',
      author: 'Reuters',
      authorImagePath: Assets.images.svg.icVox.path,
      title: 'Medical Breakthrough Offers Hope for Rare Diseases',
      description:
          'Researchers make a breakthrough that could lead to treatments for rare and incurable diseases',
      date: '1 month ago',
      fullNewsText:
          'In a groundbreaking development, researchers have made a medical breakthrough that offers hope for rare and incurable diseases. The discovery holds promise for developing targeted treatments that could improve the quality of life for individuals affected by these conditions. The medical community celebrates this significant step forward in the ongoing quest for effective treatments and cures.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/214',
      country: 'North America',
      author: 'The New York Times',
      authorImagePath: Assets.images.svg.icUsaToday.path,
      title: 'Social Media Platform Faces Backlash Over Privacy Concerns',
      description:
          'Users express concerns as a popular social media platform grapples with privacy issues',
      date: '1 month ago',
      fullNewsText:
          'A popular social media platform is facing backlash as users express growing concerns over privacy issues. The platform, known for its widespread user base, is under scrutiny for its data handling practices and potential privacy breaches. Users are calling for increased transparency and stronger privacy protections, sparking a broader conversation about the ethical considerations surrounding social media usage.',
    ),
    NewsModel(
      imageLink: 'https://picsum.photos/200/215',
      country: 'Asia',
      author: 'The Guardian',
      authorImagePath: Assets.images.svg.icVox.path,
      title: 'Education System Adapts to Changing Technological Landscape',
      description:
          'Innovations in education aim to prepare students for a tech-driven future',
      date: '2 months ago',
      fullNewsText:
          'The education system is undergoing transformative changes as it adapts to the evolving technological landscape. Innovations in teaching methods and curriculum development aim to equip students with the skills needed for a tech-driven future. Educators and policymakers collaborate to ensure that the next generation is well-prepared for the challenges and opportunities presented by rapid technological advancements.',
    ),
  ];
}
