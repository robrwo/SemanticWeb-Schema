use utf8;

package SemanticWeb::Schema::SurgicalProcedure;

# ABSTRACT: A medical procedure involving an incision with instruments; performed for diagnose

use Moo;

extends qw/ SemanticWeb::Schema::MedicalProcedure /;


use MooX::JSON_LD 'SurgicalProcedure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A medical procedure involving an incision with instruments; performed for
diagnose, or therapeutic purposes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalProcedure>

=cut

1;
