use utf8;

package SemanticWeb::Schema::AmpStory;

# ABSTRACT: A creative work with a visual storytelling format intended to be viewed online

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'AmpStory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

A creative work with a visual storytelling format intended to be viewed
online, particularly on mobile devices.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
