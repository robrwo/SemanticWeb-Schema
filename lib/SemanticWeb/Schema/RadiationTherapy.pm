use utf8;

package SemanticWeb::Schema::RadiationTherapy;

# ABSTRACT: A process of care using radiation aimed at improving a health condition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalTherapy /;


use MooX::JSON_LD 'RadiationTherapy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A process of care using radiation aimed at improving a health condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTherapy>

=cut

1;
