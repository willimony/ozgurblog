# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
Category.delete_all

Post.create(title: 'Lorem ipsum dolor sit amet', content: """
 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a nisi sit amet ipsum interdum viverra. Etiam volutpat libero non hendrerit suscipit. Nullam turpis mi, viverra vel congue quis, placerat non libero. Phasellus imperdiet, mi non sollicitudin auctor, est lacus semper lectus, at ultrices orci mauris in ligula. Quisque rutrum ultrices mi, vitae ultricies lacus luctus sed. Sed id erat sit amet lacus tempus elementum. Vestibulum bibendum ultricies dolor id sodales. Nam fringilla, libero in posuere varius, ante sem bibendum leo, et tempor velit felis in felis. Aenean vitae tempus est. Curabitur et dui quis quam eleifend pellentesque. Donec a diam quis sapien cursus faucibus. Nam tristique orci et est facilisis, at eleifend tortor ultrices. Ut at metus vitae nulla ullamcorper ultricies eget id dui. 
""", category_id: 1)

Post.create(title: 'Nunc aliquam viverra lectus in hendrerit', content: """
Nunc aliquam viverra lectus in hendrerit. Etiam accumsan id eros vitae placerat. Mauris pellentesque condimentum aliquet. Sed gravida tempor erat nec tempor. Mauris sed nulla sed massa semper porta eget quis massa. Etiam vel tempus orci. Curabitur at elit sapien. Vestibulum fringilla tellus et tincidunt pulvinar. Praesent tincidunt ultricies odio, quis blandit risus. Sed eu lorem in erat luctus pulvinar. Curabitur rhoncus sapien dolor, quis consequat nulla mattis non. Nulla est lacus, dapibus ut volutpat sed, bibendum accumsan libero. Pellentesque accumsan consequat tellus, sed ornare nulla. 
""", category_id: 1)

Post.create(title: 'Sed at enim placerat, lobortis mauris', content: """
Sed at enim placerat, lobortis mauris quis, semper dui. Mauris luctus velit accumsan nisi viverra, ut suscipit lorem varius. In hac habitasse platea dictumst. Nunc mollis turpis vitae arcu consectetur, sit amet consequat nisi vestibulum. Proin vel aliquet enim, a molestie mauris. Aliquam blandit nunc in metus suscipit, sed ullamcorper mi dapibus. Mauris bibendum ipsum non neque ultricies dapibus. Suspendisse potenti. Quisque blandit porttitor magna vitae convallis. Phasellus adipiscing sapien non lorem auctor, vehicula vestibulum dolor molestie. Nam quis consectetur nibh. Aliquam vel fermentum massa. Maecenas non suscipit odio. 
""", category_id: 2)

Post.create(title: 'Nunc sagittis vulputate sapien', content: """
Nunc sagittis vulputate sapien id iaculis. Morbi ultrices lorem ut eleifend sagittis. Ut pulvinar sapien luctus lorem ultricies aliquet. Maecenas luctus rhoncus neque sit amet gravida. Fusce a dolor fermentum, adipiscing arcu sed, sagittis metus. Nulla in arcu est. Etiam at felis lobortis, mattis odio a, convallis lorem. Quisque in nibh eleifend enim facilisis vehicula. Integer vitae condimentum ante. Etiam vehicula ipsum velit, eu gravida sem imperdiet vel. Mauris id lectus congue sem ultrices lacinia. Duis risus turpis, tincidunt vel neque ut, facilisis fermentum est. Praesent auctor dignissim ante id faucibus. Pellentesque convallis, erat eget commodo dictum, sem arcu suscipit urna, eget interdum nisi augue non felis. Donec laoreet enim eu lorem placerat vulputate. 
""", category_id: 3)

Post.create(title: 'Nulla interdum mi neque, eu imperdiet', content: """
Nulla interdum mi neque, eu imperdiet arcu pretium a. Etiam gravida, neque eget dignissim eleifend, velit orci tempus neque, sed iaculis ante lectus at mi. Nunc dignissim pellentesque libero, vel sollicitudin metus ullamcorper ut. Donec placerat elementum pharetra. Nullam enim lectus, imperdiet nec libero sed, mattis accumsan massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque ac mi mattis, faucibus orci pellentesque, tempus lacus. Sed velit purus, blandit eget magna vel, dignissim ullamcorper risus. Ut id fermentum sem. Pellentesque consectetur malesuada metus vitae lobortis. Nunc in nisl tellus. Curabitur non tellus a libero pellentesque ultricies. 
""", category_id: 3)

Post.create(title: 'Cras placerat erat dui, quis lobortis', content: """
Cras placerat erat dui, quis lobortis enim eleifend at. Sed lacinia, dui auctor gravida congue, ligula erat faucibus nunc, sed mattis massa enim ac purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis augue risus, condimentum et gravida scelerisque, accumsan et justo. Curabitur sit amet ipsum vel eros sodales auctor. Ut congue augue eu sem malesuada placerat. Etiam rhoncus dolor vitae sem auctor condimentum. Nunc feugiat ultrices felis eget consequat. Aenean bibendum turpis est, vulputate facilisis turpis ornare et. Pellentesque nulla risus, ornare ut tortor et, lobortis dignissim purus. Pellentesque eu auctor nisi. Nullam volutpat lacinia enim in ullamcorper. 
""", category_id: 1)

Category.create name: 'Anarşi'
Category.create name: 'Serbest kürsü'
Category.create name: 'Analiz'
