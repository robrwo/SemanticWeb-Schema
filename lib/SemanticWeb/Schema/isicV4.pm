use utf8;

package SemanticWeb::Schema::isicV4;

# ABSTRACT: The International Standard of Industrial Classification of All Economic Activities (ISIC)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isicV4';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The International Standard of Industrial Classification of All Economic
Activities (ISIC), Revision 4 code for a particular organization, business
person, or place.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
