use utf8;

package SemanticWeb::Schema::Nursing;

# ABSTRACT: A health profession of a person formally educated and trained in the care of the sick or infirm person.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Nursing';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A health profession of a person formally educated and trained in the care
of the sick or infirm person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
