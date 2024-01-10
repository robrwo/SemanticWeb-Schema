use utf8;

package SemanticWeb::Schema::SingleBlindedTrial;

# ABSTRACT: A trial design in which the researcher knows which treatment the patient was randomly assigned to but the patient does not.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SingleBlindedTrial';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A trial design in which the researcher knows which treatment the patient
was randomly assigned to but the patient does not.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
