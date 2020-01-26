use utf8;

package SemanticWeb::Schema::PreventionIndication;

# ABSTRACT: An indication for preventing an underlying condition

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIndication /;


use MooX::JSON_LD 'PreventionIndication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

An indication for preventing an underlying condition, symptom, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIndication>

=cut

1;
