use utf8;

package SemanticWeb::Schema::MedicalEnumeration;

# ABSTRACT: Enumerations related to health and the practice of medicine: A concept that is used to attribute a quality to another concept

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MedicalEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

Enumerations related to health and the practice of medicine: A concept that
is used to attribute a quality to another concept, as a qualifier, a
collection of items or a listing of all of the elements of a set in
medicine practice.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
