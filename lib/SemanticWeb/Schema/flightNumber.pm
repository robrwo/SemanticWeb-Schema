use utf8;

package SemanticWeb::Schema::flightNumber;

# ABSTRACT: The unique identifier for a flight including the airline IATA code

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'flightNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The unique identifier for a flight including the airline IATA code. For
example, if describing United flight 110, where the IATA code for United is
'UA', the flightNumber is 'UA110'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
