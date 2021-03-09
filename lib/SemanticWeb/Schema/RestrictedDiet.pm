use utf8;

package SemanticWeb::Schema::RestrictedDiet;

# ABSTRACT: A diet restricted to certain foods or preparations for cultural

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'RestrictedDiet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

A diet restricted to certain foods or preparations for cultural, religious,
health or lifestyle reasons. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
