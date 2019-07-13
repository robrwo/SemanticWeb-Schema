use utf8;

package SemanticWeb::Schema::PalliativeProcedure;

# ABSTRACT: A medical procedure intended primarily for palliative purposes

use Moo;

extends qw/ SemanticWeb::Schema::MedicalProcedure SemanticWeb::Schema::MedicalTherapy /;


use MooX::JSON_LD 'PalliativeProcedure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

A medical procedure intended primarily for palliative purposes, aimed at
relieving the symptoms of an underlying health condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTherapy>

=cut

1;
