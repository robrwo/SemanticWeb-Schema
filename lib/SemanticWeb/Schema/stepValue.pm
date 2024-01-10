use utf8;

package SemanticWeb::Schema::stepValue;

# ABSTRACT: The stepValue attribute indicates the granularity that is expected (and required) of the value in a PropertyValueSpecification.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'stepValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The stepValue attribute indicates the granularity that is expected (and
required) of the value in a PropertyValueSpecification.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
