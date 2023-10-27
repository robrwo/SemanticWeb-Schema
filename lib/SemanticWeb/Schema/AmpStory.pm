use utf8;

package SemanticWeb::Schema::AmpStory;

# ABSTRACT: A creative work with a visual storytelling format intended to be viewed online

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'AmpStory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A creative work with a visual storytelling format intended to be viewed
online, particularly on mobile devices.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
