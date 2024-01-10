use utf8;

package SemanticWeb::Schema::postalCodeEnd;

# ABSTRACT: Last postal code in the range (included)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'postalCodeEnd';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Last postal code in the range (included). Needs to be after [[postalCodeBegin]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
