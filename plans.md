# CI V 2 POINT ZERO #

## Things the site needs to be: ##
- Usable by the community without them freaking out and running away
- Fast (nginx and unicorn, apache can get stuffed thanks)
- Based on a simple data model for doing cool things with all these profiles and outfits and comments and everything - ie, one dataset (a comment on an ANYTHING is still a comment - so do not need to differentiate between forum post or costume comment or photo comment, for example)
- If you want a feature, you write it not bodge it (plan to be modular and templated in all things, DRY and promote reuse)
- Secure
- Scalable like a motherfucker (Would be better to run on several cheapo hosts rather than 1 chunky box)
- Able to make use of sensible caching like varnish 
- Have telemetry/heatmapping to avoid daft shit that never gets used (google analytics?)
- Have sensible logging and performance measurement (collectd/visage, munin, I dunno yet)

## Main pages ##
- index
- Mobile index (This would be SO easy with erb templating and some css messing!)
- sitemap
- 'Me' ~ Combined profile and overview page
-- 'My Friends' ~ Feed of my friends recent stuff | Watched stuff
-- 'Messaging' ~ PMs between site members
-- costumes ~ complete | in progress | planned
- photos - Um, ~6000 pages of photos is impossible to navigate.
- events ~ upcoming (5 months) | recent (last 5 months) | all events evar on a calendar/paginated
- showcase ~ Cool-ass costumes and the like. Why is there not a 'this is why it was showcased' bit of fluff attached?
- articles ~ Stuff written by cosplay genii
- galleries ~ Galleries by 'proper photographers' by photographer, with external links
- shops ~ Links to cool sites for cosplay purchases
- forum ~ Um, a forum, dude
- about ~ About the site and the admins (think WoWInsider)
- development ~ public git repo for people to checkout and fuck with if they want (maybe) | revision history | feature requests (getsatisfaction) | bug reports
- *members* ~ A big list of members? Hm. Would people not just search? Maybe a map mashup instead?
- statistics ~ Um, yeah, this all needs to be cached and not queried every time, duhh :D
- TOS/legal
- Privacy Policy
- FAQ/Help - This could be a lot bigger, or maybe integrated into each page? Would be good to canvass opinion on that

## Cool shit we cannot lose ##
- Random header images
- 'banner' generation for forums and shit
- ads and the ability to have a massive sponsored background image or something
- stats, yeah - but pulled from an hourly cache or something rather than live

## Daft shit that can get chucked ##
- 2 separate navigation thingys - why not just have one that changes when you log in?
- 3 'random' bits - why not just have a little ajax div with a random random of the 3 instead?

## Admin pages ##
- Moderate member profile
- Ban member with a big BANSTICK
- Moderate photo
- Moderate costume
- Moderate Forum post/topic
- Lock Forum topic
- Moderate article
- Moderate event
- Moderate shop thingy
- Post news
- Edit news
- Edit advertisement spaces

## Database considerations ##
- Consider redis, it looks awesome (retwis)
- Look at existing dataset and think about import/transform work - I bet it will be a biggy
