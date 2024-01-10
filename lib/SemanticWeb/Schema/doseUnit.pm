use utf8;

package SemanticWeb::Schema::doseUnit;

# ABSTRACT: The unit of the dose, e.g. 'mg'.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'doseUnit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The unit of the dose, e.g. 'mg'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
