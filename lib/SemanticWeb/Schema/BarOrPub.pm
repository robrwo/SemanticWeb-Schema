use utf8;

package SemanticWeb::Schema::BarOrPub;

# ABSTRACT: A bar or pub.

use Moo;

extends qw/ SemanticWeb::Schema::FoodEstablishment /;


use MooX::JSON_LD 'BarOrPub';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

A bar or pub.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FoodEstablishment>

=cut

1;
