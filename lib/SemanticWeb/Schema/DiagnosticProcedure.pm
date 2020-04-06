use utf8;

package SemanticWeb::Schema::DiagnosticProcedure;

# ABSTRACT: A medical procedure intended primarily for diagnostic

use Moo;

extends qw/ SemanticWeb::Schema::MedicalProcedure /;


use MooX::JSON_LD 'DiagnosticProcedure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

A medical procedure intended primarily for diagnostic, as opposed to
therapeutic, purposes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalProcedure>

=cut

1;
