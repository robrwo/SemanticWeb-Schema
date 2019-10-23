use utf8;

package SemanticWeb::Schema::InfectiousAgentClass;

# ABSTRACT: Classes of agents or pathogens that transmit infectious diseases

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'InfectiousAgentClass';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

Classes of agents or pathogens that transmit infectious diseases.
Enumerated type.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
