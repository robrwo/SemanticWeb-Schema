use utf8;

package SemanticWeb::Schema::PsychologicalTreatment;

# ABSTRACT: A process of care relying upon counseling

use Moo;

extends qw/ SemanticWeb::Schema::TherapeuticProcedure /;


use MooX::JSON_LD 'PsychologicalTreatment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A process of care relying upon counseling, dialogue and communication aimed
at improving a mental health condition without use of drugs.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::TherapeuticProcedure>

=cut

1;
