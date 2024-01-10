use utf8;

package SemanticWeb::Schema::starRating;

# ABSTRACT: An official rating for a lodging business or food establishment

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'starRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An official rating for a lodging business or food establishment, e.g. from
national associations or standards bodies. Use the author property to
indicate the rating organization, e.g. as an Organization with name such as
(e.g. HOTREC, DEHOGA, WHR, or Hotelstars).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
