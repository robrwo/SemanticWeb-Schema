use utf8;

package SemanticWeb::Schema::TripleBlindedTrial;

# ABSTRACT: A trial design in which neither the researcher

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'TripleBlindedTrial';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A trial design in which neither the researcher, the person administering
the therapy nor the patient knows the details of the treatment the patient
was randomly assigned to.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
