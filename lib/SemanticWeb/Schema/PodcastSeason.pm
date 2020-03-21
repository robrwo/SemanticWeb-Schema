use utf8;

package SemanticWeb::Schema::PodcastSeason;

# ABSTRACT: A single season of a podcast

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeason /;


use MooX::JSON_LD 'PodcastSeason';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A single season of a podcast. Many podcasts do not break down into separate
seasons. In that case, PodcastSeries should be used.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeason>

=cut

1;
