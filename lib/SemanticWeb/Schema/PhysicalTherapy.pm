use utf8;

package SemanticWeb::Schema::PhysicalTherapy;

# ABSTRACT: A process of progressive physical care and rehabilitation aimed at improving a health condition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalTherapy /;


use MooX::JSON_LD 'PhysicalTherapy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A process of progressive physical care and rehabilitation aimed at
improving a health condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTherapy>

=cut

1;
