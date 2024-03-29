use utf8;

package SemanticWeb::Schema::ArtGallery;

# ABSTRACT: An art gallery.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::EntertainmentBusiness /;


use MooX::JSON_LD 'ArtGallery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An art gallery.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
