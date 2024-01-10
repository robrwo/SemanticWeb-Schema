use utf8;

package SemanticWeb::Schema::targetPopulation;

# ABSTRACT: Characteristics of the population for which this is intended

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'targetPopulation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Characteristics of the population for which this is intended, or which
typically uses it, e.g. 'adults'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
