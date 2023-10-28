use utf8;

package SemanticWeb::Schema::PodcastEpisode;

# ABSTRACT: A single episode of a podcast series.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Episode /;


use MooX::JSON_LD 'PodcastEpisode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A single episode of a podcast series.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Episode>

=cut

1;
