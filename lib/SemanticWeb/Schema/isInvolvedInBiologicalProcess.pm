use utf8;

package SemanticWeb::Schema::isInvolvedInBiologicalProcess;

# ABSTRACT: Biological process this BioChemEntity is involved in; please use PropertyValue if you want to include any evidence.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isInvolvedInBiologicalProcess';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Biological process this BioChemEntity is involved in; please use
PropertyValue if you want to include any evidence.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
